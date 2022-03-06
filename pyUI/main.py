import os
from pathlib import Path
import sys

from PySide2.QtCore import QObject, Slot
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from style_rc import *


class QMLController(QObject):
    @Slot(None)
    def export(self):
        print("test")
        x0 = int(context.contextProperty("x0.text"))
        print(x0)


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    context = engine.rootContext()
    controller = QMLController()
    context.setContextProperty("pyc", controller)
    engine.load(os.fspath(Path(__file__).resolve().parent / "main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
