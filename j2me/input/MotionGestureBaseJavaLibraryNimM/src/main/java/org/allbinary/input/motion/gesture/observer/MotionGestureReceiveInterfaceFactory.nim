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
# package org.allbinary.input.motion.gesture.observer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface as CompleteMotionGestureListenerInterfaceModule
export CompleteMotionGestureListenerInterfaceModule

type
    MotionGestureReceiveInterfaceFactory* = ref object of JObject

proc newMotionGestureReceiveInterfaceFactory*(): MotionGestureReceiveInterfaceFactory
proc getInstance*(t: typedesc[MotionGestureReceiveInterfaceFactory]): CompleteMotionGestureListenerInterface {.discardable.}
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration as MotionGestureConfigurationModule
export MotionGestureConfigurationModule
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory as MotionGestureConfigurationFactoryModule
export MotionGestureConfigurationFactoryModule
import org/allbinary/input/motion/gesture/observer/ResolveCompleteMotionGestureListener as ResolveCompleteMotionGestureListenerModule
export ResolveCompleteMotionGestureListenerModule
import org/allbinary/input/motion/gesture/observer/NullCompleteMotionGestureReceiver as NullCompleteMotionGestureReceiverModule
export NullCompleteMotionGestureReceiverModule


proc initMotionGestureReceiveInterfaceFactory*(this: MotionGestureReceiveInterfaceFactory) =
    discard

proc newMotionGestureReceiveInterfaceFactory*(): MotionGestureReceiveInterfaceFactory =
    result = MotionGestureReceiveInterfaceFactory()
    initMotionGestureReceiveInterfaceFactory(result)

proc getInstance*(t: typedesc[MotionGestureReceiveInterfaceFactory]): CompleteMotionGestureListenerInterface {.discardable.} =
        var configuration: MotionGestureConfiguration = MotionGestureConfigurationFactory.getInstance()
        if (not configuration.isExecutingActionsAllowed()):
            return newNullCompleteMotionGestureReceiver()
        else:
            return newResolveCompleteMotionGestureListener()

