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
    BasicTouchButtonsBuilder* = ref object of BaseTouchInput
        logUtil*: LogUtil

proc newBasicTouchButtonsBuilder*(): BasicTouchButtonsBuilder
method getList*(this: BasicTouchButtonsBuilder): BasicArrayList {.discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/input/motion/button/CommonButtons as CommonButtonsModule
export CommonButtonsModule
import org/allbinary/input/motion/button/TouchButtonLocationHelper as TouchButtonLocationHelperModule
export TouchButtonLocationHelperModule
import org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory as BasicTouchButtonCellPositionFactoryModule
export BasicTouchButtonCellPositionFactoryModule
import org/allbinary/input/motion/button/TouchButton as TouchButtonModule
export TouchButtonModule
import org/allbinary/input/motion/button/BasicTouchInputFactory as BasicTouchInputFactoryModule
export BasicTouchInputFactoryModule
import org/allbinary/input/motion/button/TouchButtonUpResource as TouchButtonUpResourceModule
export TouchButtonUpResourceModule
import org/allbinary/input/motion/button/TouchButtonDownResource as TouchButtonDownResourceModule
export TouchButtonDownResourceModule
import org/allbinary/input/motion/button/TouchButtonTurnLeftResource as TouchButtonTurnLeftResourceModule
export TouchButtonTurnLeftResourceModule
import org/allbinary/input/motion/button/TouchButtonTurnRightResource as TouchButtonTurnRightResourceModule
export TouchButtonTurnRightResourceModule


# Java field initializers run after the base initializer
proc initFieldsBasicTouchButtonsBuilder(this: BasicTouchButtonsBuilder) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initBasicTouchButtonsBuilder*(this: BasicTouchButtonsBuilder) =
    initBaseTouchInput(this)
    this.initFieldsBasicTouchButtonsBuilder()

proc newBasicTouchButtonsBuilder*(): BasicTouchButtonsBuilder =
    result = BasicTouchButtonsBuilder()
    initBasicTouchButtonsBuilder(result)

method getList*(this: BasicTouchButtonsBuilder): BasicArrayList {.discardable.} =
        try:
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
            let list: BasicArrayList = newBasicArrayListD()
            let commonButtons: CommonButtons = CommonButtons.getInstance()
            let touchButtonLocationHelper: TouchButtonLocationHelper = newTouchButtonLocationHelper()
            let basicTouchButtonCellPositionFactory: BasicTouchButtonCellPositionFactory = newBasicTouchButtonCellPositionFactory()
            var UP: TouchButton = TouchButton.createButton(BasicTouchInputFactory.getInstance().UP, TouchButtonUpResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var DOWN: TouchButton = TouchButton.createButton(BasicTouchInputFactory.getInstance().DOWN, TouchButtonDownResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var LEFT: TouchButton = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var RIGHT: TouchButton = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            list.add(UP)
            list.add(LEFT)
            list.add(RIGHT)
            list.add(DOWN)
            return list
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()

when declared(newBasicTouchButtonsBuilderHook0):
    newBasicTouchButtonsBuilderHook0 = proc (): BaseTouchInput = newBasicTouchButtonsBuilder()

