#[
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
]#
# Generated Code Do Not Modify
# package org.allbinary.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule
import javax/microedition/midlet/MIDlet as MIDletModule
export MIDletModule
import org/allbinary/midlet/AllBinaryMidlet as AllBinaryMidletModule
export AllBinaryMidletModule

type
    MidletCompositeInterface* = ref object of JObject


method setMidlet*(this: MidletCompositeInterface, midlet: MIDlet) {.base.} =
        raise newJException("AbstractMethodError", "setMidlet")

method getMidlet*(this: MidletCompositeInterface): AllBinaryMidlet {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMidlet")

method getDisplayable*(this: MidletCompositeInterface): Displayable {.base, discardable.} =
        raise newJException("AbstractMethodError", "getDisplayable")

