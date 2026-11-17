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
# package org.allbinary.logic.util.event

{.warning[UnusedImport]: off.}
import allbinary_java

type
    EventStrings* = ref object of JObject
        PERFORMANCE_MESSAGE*: string
        TOTAL_LISTENERS*: string
        LISTENER_LABEL*: string
        FIRE_EVENT*: string

proc newEventStrings*(): EventStrings
proc getInstance*(t: typedesc[EventStrings]): EventStrings {.discardable.}

var EventStrings_instanceValue: EventStrings
var EventStrings_instanceSet = false
proc instance*(t: typedesc[EventStrings]): EventStrings =
    if not EventStrings_instanceSet:
        EventStrings_instanceSet = true
        EventStrings_instanceValue = newEventStrings()
    EventStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsEventStrings(this: EventStrings) =
    this.PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization"
    this.TOTAL_LISTENERS = "Total Listeners: "
    this.LISTENER_LABEL = " Listener: "
    this.FIRE_EVENT = "fireEvent"
    discard

proc initEventStrings*(this: EventStrings) =
    this.initFieldsEventStrings()

proc newEventStrings*(): EventStrings =
    result = EventStrings()
    initEventStrings(result)

proc getInstance*(t: typedesc[EventStrings]): EventStrings {.discardable.} =
        return EventStrings.instance

