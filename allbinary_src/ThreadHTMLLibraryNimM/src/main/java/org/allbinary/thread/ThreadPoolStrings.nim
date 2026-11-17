#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.thread

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ThreadPoolStrings* = ref object of JObject
        ADD_TASK*: string
        START_TASK*: string
        COMPLETE_TASK*: string

proc newThreadPoolStrings*(): ThreadPoolStrings
proc getInstance*(t: typedesc[ThreadPoolStrings]): ThreadPoolStrings {.discardable.}

var ThreadPoolStrings_instanceValue: ThreadPoolStrings
var ThreadPoolStrings_instanceSet = false
proc instance*(t: typedesc[ThreadPoolStrings]): ThreadPoolStrings =
    if not ThreadPoolStrings_instanceSet:
        ThreadPoolStrings_instanceSet = true
        ThreadPoolStrings_instanceValue = newThreadPoolStrings()
    ThreadPoolStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsThreadPoolStrings(this: ThreadPoolStrings) =
    this.ADD_TASK = "addTask"
    this.START_TASK = "Started Task: "
    this.COMPLETE_TASK = "Completed Task: "
    discard

proc initThreadPoolStrings*(this: ThreadPoolStrings) =
    this.initFieldsThreadPoolStrings()

proc newThreadPoolStrings*(): ThreadPoolStrings =
    result = ThreadPoolStrings()
    initThreadPoolStrings(result)

proc getInstance*(t: typedesc[ThreadPoolStrings]): ThreadPoolStrings {.discardable.} =
        return ThreadPoolStrings.instance

