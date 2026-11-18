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
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule

type
    BaseTouchInput* = ref object of JObject
        commonStrings*: CommonStrings
        basicArrayListUtil*: BasicArrayListUtil

proc newBaseTouchInput*(): BaseTouchInput
proc initBaseTouchInput*(this: BaseTouchInput)
method getList*(this: BaseTouchInput): BasicArrayList {.base, discardable.}
method toString*(this: BaseTouchInput): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsBaseTouchInput(this: BaseTouchInput) =
    this.commonStrings = CommonStrings.getInstance()
    this.basicArrayListUtil = BasicArrayListUtil.getInstance()
    discard

proc initBaseTouchInput*(this: BaseTouchInput) =
        this.initFieldsBaseTouchInput()
        discard

proc newBaseTouchInput*(): BaseTouchInput =
    result = BaseTouchInput()
    initBaseTouchInput(result)

method getList*(this: BaseTouchInput): BasicArrayList {.base, discardable.} =
        return this.basicArrayListUtil.getImmutableInstance()

method toString*(this: BaseTouchInput): string {.discardable.} =
        return jClassName(this)

