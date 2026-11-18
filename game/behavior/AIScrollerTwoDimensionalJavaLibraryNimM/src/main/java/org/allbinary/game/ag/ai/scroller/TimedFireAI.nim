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
# package org.allbinary.game.ag.ai.scroller

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

type
    TimedFireAI* = ref object of BasicAI
        maxFireDelayTimeHelper*: TimeDelayHelper
        delay*: int32

proc newTimedFireAI*(delay: int32, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): TimedFireAI
proc initTimedFireAI*(this: TimedFireAI, delay: int32, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: TimedFireAI, allBinaryLayerManager: AllBinaryLayerManager)
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule
import org/allbinary/game/ag/ai/scroller/TimeFiredInterface as TimeFiredInterfaceModule
export TimeFiredInterfaceModule

var TimedFireAI_TIMEValue: int32
var TimedFireAI_TIMESet = false
proc TIME*(t: typedesc[TimedFireAI]): int32 =
    if not TimedFireAI_TIMESet:
        TimedFireAI_TIMESet = true
        TimedFireAI_TIMEValue = SmallIntegerSingletonFactory.getInstance().getAt(1)
    TimedFireAI_TIMEValue

# Java field initializers run after the base initializer
proc initFieldsTimedFireAI(this: TimedFireAI) =
    this.maxFireDelayTimeHelper = newTimeDelayHelper(0)
    
    discard

proc initTimedFireAI*(this: TimedFireAI, delay: int32, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsTimedFireAI()
        this.delay = delay

proc newTimedFireAI*(delay: int32, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): TimedFireAI =
    result = TimedFireAI()
    initTimedFireAI(result, delay, ownerLayerInterface, gameInput)

method processAI*(this: TimedFireAI, allBinaryLayerManager: AllBinaryLayerManager) =
        var timeFiredInterface: TimeFiredInterface = TimeFiredInterface(JObject(this.getOwnerLayerInterface()))
        if this.maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime) and timeFiredInterface.getLastFireTime() +% this.maxFireDelayTimeHelper.delay < this.maxFireDelayTimeHelper.getStartTime():
            procCall BasicAI(this).processKeyAI(Canvas.KEY_NUM1)
            this.maxFireDelayTimeHelper.delay = this.delay

when declared(newTimedFireAIHook3):
    newTimedFireAIHook3 = proc (delay: int32, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newTimedFireAI(delay, ownerLayerInterface, gameInput)

