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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/input/motion/button/BaseTouchInput as BaseTouchInputModule
export BaseTouchInputModule

type
    BasicNeededTouchButtonsBuilder* = ref object of BaseTouchInput
        logUtil*: LogUtil

proc newBasicNeededTouchButtonsBuilder*(): BasicNeededTouchButtonsBuilder
method getList*(this: BasicNeededTouchButtonsBuilder): BasicArrayList {.discardable.}
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/input/motion/button/TouchButtonLocationHelper as TouchButtonLocationHelperModule
export TouchButtonLocationHelperModule
import org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory as BasicTouchButtonCellPositionFactoryModule
export BasicTouchButtonCellPositionFactoryModule
import org/allbinary/input/motion/button/CommonButtons as CommonButtonsModule
export CommonButtonsModule
import org/allbinary/input/motion/button/TouchButton as TouchButtonModule
export TouchButtonModule
import org/allbinary/input/motion/button/BasicTouchInputFactory as BasicTouchInputFactoryModule
export BasicTouchInputFactoryModule


# Java field initializers run after the base initializer
proc initFieldsBasicNeededTouchButtonsBuilder(this: BasicNeededTouchButtonsBuilder) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initBasicNeededTouchButtonsBuilder*(this: BasicNeededTouchButtonsBuilder) =
    initBaseTouchInput(this)
    this.initFieldsBasicNeededTouchButtonsBuilder()

proc newBasicNeededTouchButtonsBuilder*(): BasicNeededTouchButtonsBuilder =
    result = BasicNeededTouchButtonsBuilder()
    initBasicNeededTouchButtonsBuilder(result)

method getList*(this: BasicNeededTouchButtonsBuilder): BasicArrayList {.discardable.} =
        try:
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
            let list: BasicArrayList = newBasicArrayListD()
            let touchButtonLocationHelper: TouchButtonLocationHelper = newTouchButtonLocationHelper()
            let basicTouchButtonCellPositionFactory: BasicTouchButtonCellPositionFactory = newBasicTouchButtonCellPositionFactory()
            let commonButtons: CommonButtons = CommonButtons.getInstance()
            let animationInterface: Animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
            var UP: TouchButton = newTouchButton(BasicTouchInputFactory.getInstance().UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var DOWN: TouchButton = newTouchButton(BasicTouchInputFactory.getInstance().DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var LEFT: TouchButton = newTouchButton(BasicTouchInputFactory.getInstance().LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var RIGHT: TouchButton = newTouchButton(BasicTouchInputFactory.getInstance().RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            list.add(UP)
            list.add(DOWN)
            list.add(LEFT)
            list.add(RIGHT)
            return list
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()

when declared(newBasicNeededTouchButtonsBuilderHook0):
    newBasicNeededTouchButtonsBuilderHook0 = proc (): BaseTouchInput = newBasicNeededTouchButtonsBuilder()

