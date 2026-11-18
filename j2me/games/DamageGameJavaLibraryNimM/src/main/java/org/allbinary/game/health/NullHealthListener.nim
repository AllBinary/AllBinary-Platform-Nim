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
# package org.allbinary.game.health

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/health/HealthListenerInterface as HealthListenerInterfaceModule
export HealthListenerInterfaceModule

type
    NullHealthListener* = ref object of HealthListenerInterface

proc newNullHealthListener*(): NullHealthListener
method onHealthChange*(this: NullHealthListener)

var NullHealthListener_NULL_HEALTH_LISTENERValue: NullHealthListener
var NullHealthListener_NULL_HEALTH_LISTENERSet = false
proc NULL_HEALTH_LISTENERStatic*(t: typedesc[NullHealthListener]): NullHealthListener =
    if not NullHealthListener_NULL_HEALTH_LISTENERSet:
        NullHealthListener_NULL_HEALTH_LISTENERSet = true
        NullHealthListener_NULL_HEALTH_LISTENERValue = newNullHealthListener()
    NullHealthListener_NULL_HEALTH_LISTENERValue

proc initNullHealthListener*(this: NullHealthListener) =
    discard

proc newNullHealthListener*(): NullHealthListener =
    result = NullHealthListener()
    initNullHealthListener(result)

method onHealthChange*(this: NullHealthListener) =
        discard

