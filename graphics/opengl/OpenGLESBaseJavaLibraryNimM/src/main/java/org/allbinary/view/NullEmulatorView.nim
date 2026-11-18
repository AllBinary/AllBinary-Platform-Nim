#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.view

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule
import javax/microedition/midlet/MIDlet as MIDletModule
export MIDletModule
import org/allbinary/view/EmulatorViewInterface as EmulatorViewInterfaceModule
export EmulatorViewInterfaceModule

type
    NullEmulatorView* = ref object of EmulatorViewInterface

proc newNullEmulatorView*(): NullEmulatorView
method setMidlet*(this: NullEmulatorView, midlet: MIDlet)
method onEmulatorInitComplete*(this: NullEmulatorView, midletActivity: JObject)
method onSetDisplayable*(this: NullEmulatorView, displayable: Displayable)

var NullEmulatorView_NULL_EMULATOR_VIEWValue: NullEmulatorView
var NullEmulatorView_NULL_EMULATOR_VIEWSet = false
proc NULL_EMULATOR_VIEWStatic*(t: typedesc[NullEmulatorView]): NullEmulatorView =
    if not NullEmulatorView_NULL_EMULATOR_VIEWSet:
        NullEmulatorView_NULL_EMULATOR_VIEWSet = true
        NullEmulatorView_NULL_EMULATOR_VIEWValue = newNullEmulatorView()
    NullEmulatorView_NULL_EMULATOR_VIEWValue

proc initNullEmulatorView*(this: NullEmulatorView) =
    discard

proc newNullEmulatorView*(): NullEmulatorView =
    result = NullEmulatorView()
    initNullEmulatorView(result)

method setMidlet*(this: NullEmulatorView, midlet: MIDlet) =
        discard

method onEmulatorInitComplete*(this: NullEmulatorView, midletActivity: JObject) =
        discard

method onSetDisplayable*(this: NullEmulatorView, displayable: Displayable) =
        discard

