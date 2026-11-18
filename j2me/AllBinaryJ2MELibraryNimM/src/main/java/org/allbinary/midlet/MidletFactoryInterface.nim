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
import javax/microedition/midlet/MIDlet as MIDletModule
export MIDletModule

type
    MidletFactoryInterface* = ref object of JObject

proc newMidletFactoryInterface*(): MidletFactoryInterface
method getInstance*(this: MidletFactoryInterface): MIDlet {.base, discardable.}
import org/allbinary/midlet/AllBinaryMidlet as AllBinaryMidletModule
export AllBinaryMidletModule


proc initMidletFactoryInterface*(this: MidletFactoryInterface) =
    discard

proc newMidletFactoryInterface*(): MidletFactoryInterface =
    result = MidletFactoryInterface()
    initMidletFactoryInterface(result)

method getInstance*(this: MidletFactoryInterface): MIDlet {.base, discardable.} =
        return AllBinaryMidlet.getNullInstance()

