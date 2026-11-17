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
# package org.allbinary.string

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CommonPhoneStrings* = ref object of JObject
        UP*: string
        DOWN*: string
        LEFT*: string
        RIGHT*: string
        ZERO*: string
        ONE*: string
        TWO*: string
        THREE*: string
        FOUR*: string
        FIVE*: string
        SIX*: string
        SEVEN*: string
        EIGHT*: string
        NINE*: string
        POUND*: string
        STAR*: string
        FIRE*: string

proc newCommonPhoneStrings*(): CommonPhoneStrings
proc getInstance*(t: typedesc[CommonPhoneStrings]): CommonPhoneStrings {.discardable.}

var CommonPhoneStrings_instanceValue: CommonPhoneStrings
var CommonPhoneStrings_instanceSet = false
proc instance*(t: typedesc[CommonPhoneStrings]): CommonPhoneStrings =
    if not CommonPhoneStrings_instanceSet:
        CommonPhoneStrings_instanceSet = true
        CommonPhoneStrings_instanceValue = newCommonPhoneStrings()
    CommonPhoneStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCommonPhoneStrings(this: CommonPhoneStrings) =
    this.UP = "UP"
    this.DOWN = "DOWN"
    this.LEFT = "LEFT"
    this.RIGHT = "RIGHT"
    this.ZERO = "0"
    this.ONE = "1"
    this.TWO = "2"
    this.THREE = "3"
    this.FOUR = "4"
    this.FIVE = "5"
    this.SIX = "6"
    this.SEVEN = "7"
    this.EIGHT = "8"
    this.NINE = "9"
    this.POUND = "#"
    this.STAR = "*"
    this.FIRE = "FIRE"
    discard

proc initCommonPhoneStrings*(this: CommonPhoneStrings) =
    this.initFieldsCommonPhoneStrings()

proc newCommonPhoneStrings*(): CommonPhoneStrings =
    result = CommonPhoneStrings()
    initCommonPhoneStrings(result)

proc getInstance*(t: typedesc[CommonPhoneStrings]): CommonPhoneStrings {.discardable.} =
        return CommonPhoneStrings.instance

