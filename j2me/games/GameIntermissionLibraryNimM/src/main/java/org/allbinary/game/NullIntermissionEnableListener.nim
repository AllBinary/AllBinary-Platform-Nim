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
# package org.allbinary.game

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/IntermissionEnableListenerInterface as IntermissionEnableListenerInterfaceModule
export IntermissionEnableListenerInterfaceModule

type
    NullIntermissionEnableListener* = ref object of IntermissionEnableListenerInterface

proc newNullIntermissionEnableListener*(): NullIntermissionEnableListener
proc initNullIntermissionEnableListener*(this: NullIntermissionEnableListener)
proc getInstance*(t: typedesc[NullIntermissionEnableListener]): IntermissionEnableListenerInterface {.discardable.}
method notifyIntermission*(this: NullIntermissionEnableListener, enable: bool)

var NullIntermissionEnableListener_SINGLETONValue: IntermissionEnableListenerInterface
var NullIntermissionEnableListener_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NullIntermissionEnableListener]): IntermissionEnableListenerInterface =
    if not NullIntermissionEnableListener_SINGLETONSet:
        NullIntermissionEnableListener_SINGLETONSet = true
        NullIntermissionEnableListener_SINGLETONValue = newNullIntermissionEnableListener()
    NullIntermissionEnableListener_SINGLETONValue

proc getInstance*(t: typedesc[NullIntermissionEnableListener]): IntermissionEnableListenerInterface {.discardable.} =
        return NullIntermissionEnableListener.SINGLETON

proc initNullIntermissionEnableListener*(this: NullIntermissionEnableListener) =
        discard
        discard

proc newNullIntermissionEnableListener*(): NullIntermissionEnableListener =
    result = NullIntermissionEnableListener()
    initNullIntermissionEnableListener(result)

method notifyIntermission*(this: NullIntermissionEnableListener, enable: bool) =
        discard

