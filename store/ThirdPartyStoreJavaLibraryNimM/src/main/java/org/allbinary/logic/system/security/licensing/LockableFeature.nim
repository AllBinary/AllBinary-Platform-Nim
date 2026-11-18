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
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java

type
    LockableFeature* = ref object of JObject
        name*: string

proc newLockableFeature*(name: string): LockableFeature
proc initLockableFeature*(this: LockableFeature, name: string)
method getName*(this: LockableFeature): string {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsLockableFeature(this: LockableFeature) =
    
    discard

proc initLockableFeature*(this: LockableFeature, name: string) =
        this.initFieldsLockableFeature()
        this.name = name

proc newLockableFeature*(name: string): LockableFeature =
    result = LockableFeature()
    initLockableFeature(result, name)

method getName*(this: LockableFeature): string {.base, discardable.} =
        return this.name

