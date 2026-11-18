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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface as CompleteMotionGestureListenerInterfaceModule
export CompleteMotionGestureListenerInterfaceModule

type
    ResolveCompleteMotionGestureListener* = ref object of CompleteMotionGestureListenerInterface
        logUtil*: LogUtil

proc newResolveCompleteMotionGestureListener*(): ResolveCompleteMotionGestureListener
proc initResolveCompleteMotionGestureListener*(this: ResolveCompleteMotionGestureListener)
method onMotionGestureCompleted*(this: ResolveCompleteMotionGestureListener, list: BasicArrayList)
import org/allbinary/game/input/CompleteMotionGestureInputEventHandler as CompleteMotionGestureInputEventHandlerModule
export CompleteMotionGestureInputEventHandlerModule
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule
import org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener as GameKeyFromMotionGestureEventListenerModule
export GameKeyFromMotionGestureEventListenerModule
import org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation as MotionGestureToMotionGestureActionAssociationModule
export MotionGestureToMotionGestureActionAssociationModule
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration as MotionGestureConfigurationModule
export MotionGestureConfigurationModule
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory as MotionGestureConfigurationFactoryModule
export MotionGestureConfigurationFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsResolveCompleteMotionGestureListener(this: ResolveCompleteMotionGestureListener) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initResolveCompleteMotionGestureListener*(this: ResolveCompleteMotionGestureListener) =
        this.initFieldsResolveCompleteMotionGestureListener()
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        this.logUtil.putF("MotionGesture to CompleteMotionGesture Reciever", this, commonStrings.CONSTRUCTOR)
        CompleteMotionGestureInputEventHandler.getInstance().addListener(newGameKeyFromMotionGestureEventListener())

proc newResolveCompleteMotionGestureListener*(): ResolveCompleteMotionGestureListener =
    result = ResolveCompleteMotionGestureListener()
    initResolveCompleteMotionGestureListener(result)

method onMotionGestureCompleted*(this: ResolveCompleteMotionGestureListener, list: BasicArrayList) =
        var configuration: MotionGestureConfiguration = MotionGestureConfigurationFactory.getInstance()
        var commandActionsList: BasicArrayList = configuration.getAssociateCommandActionsList()
        var size: int32 = commandActionsList.size()
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                var association: MotionGestureToMotionGestureActionAssociation = MotionGestureToMotionGestureActionAssociation(JObject(commandActionsList.objectArray[index]))
                if association.isMotionGestureArrayEquals(list) == true:
                    var completeMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent = GameKeyCompleteMotionGestureInputEvent(JObject(association.getCommandAction()))
                    CompleteMotionGestureInputEventHandler.getInstance().fireEvent(completeMotionGestureInputEvent)
                    break

