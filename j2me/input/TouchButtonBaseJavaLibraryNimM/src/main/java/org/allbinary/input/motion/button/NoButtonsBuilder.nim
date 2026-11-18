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
    NoButtonsBuilder* = ref object of BaseTouchInput
        logUtil*: LogUtil

proc newNoButtonsBuilder*(): NoButtonsBuilder
method getList*(this: NoButtonsBuilder): BasicArrayList {.discardable.}
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule


# Java field initializers run after the base initializer
proc initFieldsNoButtonsBuilder(this: NoButtonsBuilder) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initNoButtonsBuilder*(this: NoButtonsBuilder) =
    initBaseTouchInput(this)
    this.initFieldsNoButtonsBuilder()

proc newNoButtonsBuilder*(): NoButtonsBuilder =
    result = NoButtonsBuilder()
    initNoButtonsBuilder(result)

method getList*(this: NoButtonsBuilder): BasicArrayList {.discardable.} =
        try:
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
            let list: BasicArrayList = BasicArrayListUtil.getInstance().getImmutableInstance()
            return list
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()

when declared(newNoButtonsBuilderHook0):
    newNoButtonsBuilderHook0 = proc (): BaseTouchInput = newNoButtonsBuilder()

