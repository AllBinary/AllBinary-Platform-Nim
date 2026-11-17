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
    CommonStateStrings* = ref object of JObject
        CONTEXT*: string
        FINISH*: string
        CREATE*: string
        START*: string
        RESTART*: string
        RESUME*: string
        PAUSE*: string
        STOP*: string
        DESTROY*: string
        BIND*: string
        ON_SAVE_INSTANCE_STATE*: string
        ON_START_COMMAND*: string

proc newCommonStateStrings*(): CommonStateStrings
proc getInstance*(t: typedesc[CommonStateStrings]): CommonStateStrings {.discardable.}

var CommonStateStrings_instanceValue: CommonStateStrings
var CommonStateStrings_instanceSet = false
proc instance*(t: typedesc[CommonStateStrings]): CommonStateStrings =
    if not CommonStateStrings_instanceSet:
        CommonStateStrings_instanceSet = true
        CommonStateStrings_instanceValue = newCommonStateStrings()
    CommonStateStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCommonStateStrings(this: CommonStateStrings) =
    this.CONTEXT = "Context: "
    this.FINISH = "finish"
    this.CREATE = "onCreate"
    this.START = "onStart"
    this.RESTART = "onRestart"
    this.RESUME = "onResume"
    this.PAUSE = "onPause"
    this.STOP = "onStop"
    this.DESTROY = "onDestroy"
    this.BIND = "onBind"
    this.ON_SAVE_INSTANCE_STATE = "onSaveInstanceState"
    this.ON_START_COMMAND = "onStartCommand"
    discard

proc initCommonStateStrings*(this: CommonStateStrings) =
    this.initFieldsCommonStateStrings()

proc newCommonStateStrings*(): CommonStateStrings =
    result = CommonStateStrings()
    initCommonStateStrings(result)

proc getInstance*(t: typedesc[CommonStateStrings]): CommonStateStrings {.discardable.} =
        return CommonStateStrings.instance

