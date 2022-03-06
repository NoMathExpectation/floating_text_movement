import os
from pathlib import Path
import sys

from PySide2.QtCore import QObject, Slot
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine

from floating_text_movement import *
from style_rc import *


# Original script from Shareoff/floating_text_movement/floating_text_movement.py
def export0(text, anim_length, x_start, x_end, x_easing, y_start, y_end, y_easing,
            bar, beat, interval, fade_out, room, color_start, color_end, color_easing,
            outline_start, outline_end, outline_easing, angle_start, angle_end, angle_easing,
            output_file, size, starting_id, anchor):
    curr_time = 0
    event_id = starting_id
    while round(curr_time, 3) < round(anim_length, 3):
        progress = curr_time / anim_length
        x_pos = get_curr_from_easing(x_start, x_end, progress, easings[x_easing])
        y_pos = get_curr_from_easing(y_start, y_end, progress, easings[y_easing])
        angle = get_curr_from_easing(angle_start, angle_end, progress, easings[angle_easing])
        color = get_color_from_easing(color_start, color_end, progress, easings[color_easing])
        outline = get_color_from_easing(outline_start, outline_end, progress, easings[outline_easing])
        text_for_adv = text + "\n"
        event = {"bar": get_bar(bar, beat, curr_time),
                 "beat": get_beat(beat, curr_time),
                 "y": 1,
                 "type": "FloatingText",
                 "rooms": room,
                 "id": event_id,
                 "text": text_for_adv,
                 "times": "",
                 "textPosition": [x_pos, y_pos],
                 "size": size,
                 "angle": angle,
                 "mode": "HideAbruptly",
                 "showChildren": True,
                 "color": color,
                 "outlineColor": outline,
                 "anchor": anchor,
                 "fadeOutRate": fade_out,
                 }
        output_file.write(json.dumps(event) + ",\n")
        event = {"bar": get_bar(bar, beat, curr_time + interval),
                 "beat": get_beat(beat, curr_time + interval),
                 "y": 1,
                 "type": "AdvanceText",
                 "id": event_id,
                 }
        output_file.write(json.dumps(event) + ",\n")
        curr_time += interval
        event_id += 1


class QMLController(QObject):
    room_length = 352
    room_height = 198

    @Slot(str,
          float, str, float, str, str,
          float, str, float, str, str,
          str, str, str,
          str, str, str,
          int, int, str,
          int, float, float,
          bool, bool, bool, bool, bool, int,
          str)
    def export(self, text,
               x0, x0_measurement, x1, x1_measurement, x_ease,
               y0, y0_measurement, y1, y1_measurement, y_ease,
               color0, color1, color_ease,
               outline0, outline1, outline_ease,
               angle0, angle1, angle_ease,
               bar, beat, duration,
               room1, room2, room3, room4, room_top, size,
               output_file):

        if x0_measurement == "px":
            x0 = x0 / self.room_length * 100
        if x1_measurement == "px":
            x1 = x1 / self.room_length * 100
        if y0_measurement == "px":
            y0 = y0 / self.room_height * 100
        if y1_measurement == "px":
            y1 = y1 / self.room_height * 100

        rooms = []
        if room1:
            rooms.append(0)
        if room2:
            rooms.append(1)
        if room3:
            rooms.append(2)
        if room4:
            rooms.append(3)
        if room_top:
            rooms.append(4)

        export0(text, duration, x0, x1, x_ease, y0, y1, y_ease,
                bar, beat, INTERVAL, INTERVAL * 10, rooms, color0, color1, color_ease,
                outline0, outline1, outline_ease, angle0, angle1, angle_ease,
                open(output_file, "w"), size, 0, "MiddleCenter")


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    context = engine.rootContext()
    controller = QMLController()
    context.setContextProperty("pyc", controller)
    engine.load(os.fspath(Path(__file__).resolve().parent / "view.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
