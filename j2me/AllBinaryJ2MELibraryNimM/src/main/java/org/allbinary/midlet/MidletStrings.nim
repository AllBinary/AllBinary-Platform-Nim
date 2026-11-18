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
# package org.allbinary.midlet

{.warning[UnusedImport]: off.}
import allbinary_java

type
    MidletStrings* = ref object of JObject
        COMMAND_ACTION*: string

proc newMidletStrings*(): MidletStrings
proc getInstance*(t: typedesc[MidletStrings]): MidletStrings {.discardable.}

var MidletStrings_instanceValue: MidletStrings
var MidletStrings_instanceSet = false
proc instance*(t: typedesc[MidletStrings]): MidletStrings =
    if not MidletStrings_instanceSet:
        MidletStrings_instanceSet = true
        MidletStrings_instanceValue = newMidletStrings()
    MidletStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMidletStrings(this: MidletStrings) =
    this.COMMAND_ACTION = "commandAction"
    discard

proc initMidletStrings*(this: MidletStrings) =
    this.initFieldsMidletStrings()

proc newMidletStrings*(): MidletStrings =
    result = MidletStrings()
    initMidletStrings(result)

proc getInstance*(t: typedesc[MidletStrings]): MidletStrings {.discardable.} =
        return MidletStrings.instance

