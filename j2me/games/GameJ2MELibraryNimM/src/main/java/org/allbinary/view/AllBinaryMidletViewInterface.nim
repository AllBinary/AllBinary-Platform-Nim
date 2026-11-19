# Generated Code Do Not Modify
# package org.allbinary.view

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/event/GameInitializedListenerInterface as GameInitializedListenerInterfaceModule
export GameInitializedListenerInterfaceModule
import org/allbinary/game/midlet/DemoGameMidletEventListener as DemoGameMidletEventListenerModule
export DemoGameMidletEventListenerModule
import org/allbinary/midlet/MidletCompositeInterface as MidletCompositeInterfaceModule
export MidletCompositeInterfaceModule
import org/allbinary/view/EmulatorViewInterface as EmulatorViewInterfaceModule
export EmulatorViewInterfaceModule

type
    AllBinaryMidletViewInterface* = ref object of MidletCompositeInterface

converter jAsEmulatorViewInterface*(value: AllBinaryMidletViewInterface): EmulatorViewInterface = cast[EmulatorViewInterface](value)
converter jAsDemoGameMidletEventListener*(value: AllBinaryMidletViewInterface): DemoGameMidletEventListener = cast[DemoGameMidletEventListener](value)
converter jAsEventListenerInterface*(value: AllBinaryMidletViewInterface): EventListenerInterface = cast[EventListenerInterface](value)
converter jAsGameInitializedListenerInterface*(value: AllBinaryMidletViewInterface): GameInitializedListenerInterface = cast[GameInitializedListenerInterface](value)

method onResume*(this: AllBinaryMidletViewInterface) {.base.} =
        raise newJException("AbstractMethodError", "onResume")

method onPause*(this: AllBinaryMidletViewInterface) {.base.} =
        raise newJException("AbstractMethodError", "onPause")

method onDestroy*(this: AllBinaryMidletViewInterface) {.base.} =
        raise newJException("AbstractMethodError", "onDestroy")

