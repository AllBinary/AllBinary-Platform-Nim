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
proc getInstance*(t: typedesc[BasicTouchButtonsBuilder]): BaseTouchInput {.discardable.}
method getList*(this: BasicTouchButtonsBuilder): BasicArrayList {.discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule

var BasicTouchButtonsBuilder_SINGLETONValue: BasicTouchButtonsBuilder
var BasicTouchButtonsBuilder_SINGLETONSet = false
proc SINGLETON*(t: typedesc[BasicTouchButtonsBuilder]): BasicTouchButtonsBuilder =
    if not BasicTouchButtonsBuilder_SINGLETONSet:
        BasicTouchButtonsBuilder_SINGLETONSet = true
        BasicTouchButtonsBuilder_SINGLETONValue = newBasicTouchButtonsBuilder()
    BasicTouchButtonsBuilder_SINGLETONValue

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

proc getInstance*(t: typedesc[BasicTouchButtonsBuilder]): BaseTouchInput {.discardable.} =
        return BasicTouchButtonsBuilder.SINGLETON

method getList*(this: BasicTouchButtonsBuilder): BasicArrayList {.discardable.} =
        try:
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.GET_LIST)
            let list: BasicArrayList = newBasicArrayListD()
            return list
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()

when declared(newBasicTouchButtonsBuilderHook0):
    newBasicTouchButtonsBuilderHook0 = proc (): BaseTouchInput = newBasicTouchButtonsBuilder()

