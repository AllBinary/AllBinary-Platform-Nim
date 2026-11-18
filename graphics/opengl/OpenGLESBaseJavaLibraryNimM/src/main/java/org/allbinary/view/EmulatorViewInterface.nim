# Generated Code Do Not Modify
# package org.allbinary.view

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule
import javax/microedition/midlet/MIDlet as MIDletModule
export MIDletModule

type
    EmulatorViewInterface* = ref object of JObject


method setMidlet*(this: EmulatorViewInterface, midlet: MIDlet) {.base.} =
        raise newJException("AbstractMethodError", "setMidlet")

method onEmulatorInitComplete*(this: EmulatorViewInterface, midletActivity: JObject) {.base.} =
        raise newJException("AbstractMethodError", "onEmulatorInitComplete")

method onSetDisplayable*(this: EmulatorViewInterface, displayable: Displayable) {.base.} =
        raise newJException("AbstractMethodError", "onSetDisplayable")

