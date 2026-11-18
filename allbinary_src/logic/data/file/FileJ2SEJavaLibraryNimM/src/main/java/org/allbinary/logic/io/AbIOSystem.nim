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
# package org.allbinary.logic.io

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AbIOSystem* = ref object of JObject
        `type`*: string

proc newAbIOSystem*(): AbIOSystem
proc getInstance*(t: typedesc[AbIOSystem]): AbIOSystem {.discardable.}
method getType*(this: AbIOSystem): string {.base, discardable.}
method isType*(this: AbIOSystem, `type`: string): bool {.base, discardable.}

var AbIOSystem_instanceValue: AbIOSystem
var AbIOSystem_instanceSet = false
proc instance*(t: typedesc[AbIOSystem]): AbIOSystem =
    if not AbIOSystem_instanceSet:
        AbIOSystem_instanceSet = true
        AbIOSystem_instanceValue = newAbIOSystem()
    AbIOSystem_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAbIOSystem(this: AbIOSystem) =
    this.`type` = "java.io"
    discard

proc initAbIOSystem*(this: AbIOSystem) =
    this.initFieldsAbIOSystem()

proc newAbIOSystem*(): AbIOSystem =
    result = AbIOSystem()
    initAbIOSystem(result)

proc getInstance*(t: typedesc[AbIOSystem]): AbIOSystem {.discardable.} =
        return AbIOSystem.instance

method getType*(this: AbIOSystem): string {.base, discardable.} =
        return this.`type`

method isType*(this: AbIOSystem, `type`: string): bool {.base, discardable.} =
        if jCompareTo(this.`type`, `type`) == 0:
            return true
        else:
            return false

