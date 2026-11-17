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
# package org.allbinary.logic.communication.log.config.type

{.warning[UnusedImport]: off.}
import allbinary_java

type
    LogConfigType* = ref object of JObject
        name*: string
        description*: string

proc newLogConfigType*(name: string, description: string): LogConfigType
proc initLogConfigType*(this: LogConfigType, name: string, description: string)
method getName*(this: LogConfigType): string {.base, discardable.}
method getDescription*(this: LogConfigType): string {.base, discardable.}
method setName*(this: LogConfigType, value: string) {.base.}
method setDescription*(this: LogConfigType, value: string) {.base.}


# Java field initializers run after the base initializer
proc initFieldsLogConfigType(this: LogConfigType) =
    
    
    discard

proc initLogConfigType*(this: LogConfigType, name: string, description: string) =
        this.initFieldsLogConfigType()
        this.name = name
        this.description = description

proc newLogConfigType*(name: string, description: string): LogConfigType =
    result = LogConfigType()
    initLogConfigType(result, name, description)

method getName*(this: LogConfigType): string {.base, discardable.} =
        return this.name

method getDescription*(this: LogConfigType): string {.base, discardable.} =
        return this.description

method setName*(this: LogConfigType, value: string) {.base.} =
        this.name = value

method setDescription*(this: LogConfigType, value: string) {.base.} =
        this.description = value

