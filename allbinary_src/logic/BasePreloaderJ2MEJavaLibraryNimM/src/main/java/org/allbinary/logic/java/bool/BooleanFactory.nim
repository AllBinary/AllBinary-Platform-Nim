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
# package org.allbinary.logic.java.bool

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Boolean as BooleanModule
export BooleanModule

type
    BooleanFactory* = ref object of JObject
        TRUE*: bool
        FALSE*: bool
        TRUE_STRING*: string
        FALSE_STRING*: string
        YES*: string
        NO*: string

proc newBooleanFactory*(): BooleanFactory
proc getInstance*(t: typedesc[BooleanFactory]): BooleanFactory {.discardable.}
method toStringb*(this: BooleanFactory, bool: bool): string {.base, discardable.}

var BooleanFactory_instanceValue: BooleanFactory
var BooleanFactory_instanceSet = false
proc instance*(t: typedesc[BooleanFactory]): BooleanFactory =
    if not BooleanFactory_instanceSet:
        BooleanFactory_instanceSet = true
        BooleanFactory_instanceValue = newBooleanFactory()
    BooleanFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBooleanFactory(this: BooleanFactory) =
    this.TRUE = true
    this.FALSE = false
    this.TRUE_STRING = this.TRUE.toString()
    this.FALSE_STRING = this.FALSE.toString()
    this.YES = "yes"
    this.NO = "no"
    discard

proc initBooleanFactory*(this: BooleanFactory) =
    this.initFieldsBooleanFactory()

proc newBooleanFactory*(): BooleanFactory =
    result = BooleanFactory()
    initBooleanFactory(result)

proc getInstance*(t: typedesc[BooleanFactory]): BooleanFactory {.discardable.} =
        return BooleanFactory.instance

method toStringb*(this: BooleanFactory, bool: bool): string {.base, discardable.} =
        if bool:
            return this.TRUE_STRING
        else:
            return this.FALSE_STRING

