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
# package org.allbinary.game.resource

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ResourceLoadingLevel* = ref object of JObject
        name*: string
        level*: int32

proc newResourceLoadingLevel*(name: string, level: int32): ResourceLoadingLevel
proc initResourceLoadingLevel*(this: ResourceLoadingLevel, name: string, level: int32)
method getLevel*(this: ResourceLoadingLevel): int32 {.base, discardable.}
method getName*(this: ResourceLoadingLevel): string {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsResourceLoadingLevel(this: ResourceLoadingLevel) =
    
    
    discard

proc initResourceLoadingLevel*(this: ResourceLoadingLevel, name: string, level: int32) =
        this.initFieldsResourceLoadingLevel()
        this.name = name
        this.level = level

proc newResourceLoadingLevel*(name: string, level: int32): ResourceLoadingLevel =
    result = ResourceLoadingLevel()
    initResourceLoadingLevel(result, name, level)

method getLevel*(this: ResourceLoadingLevel): int32 {.base, discardable.} =
        return this.level

method getName*(this: ResourceLoadingLevel): string {.base, discardable.} =
        return this.name

