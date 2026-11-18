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
# package org.allbinary.graphics.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule

type
    GameTickDisplayInfoSingleton* = ref object of JObject
        displayInfoSingleton*: DisplayInfoSingleton
        lastWidth*: int32
        lastHeight*: int32
        lastHalfWidth*: int32
        lastHalfHeight*: int32

proc newGameTickDisplayInfoSingleton*(): GameTickDisplayInfoSingleton
proc getInstance*(t: typedesc[GameTickDisplayInfoSingleton]): GameTickDisplayInfoSingleton {.discardable.}
method update*(this: GameTickDisplayInfoSingleton) {.base.}
method getLastWidth*(this: GameTickDisplayInfoSingleton): int32 {.base, discardable.}
method getLastHeight*(this: GameTickDisplayInfoSingleton): int32 {.base, discardable.}
method getLastHalfWidth*(this: GameTickDisplayInfoSingleton): int32 {.base, discardable.}
method getLastHalfHeight*(this: GameTickDisplayInfoSingleton): int32 {.base, discardable.}

var GameTickDisplayInfoSingleton_instanceValue: GameTickDisplayInfoSingleton
var GameTickDisplayInfoSingleton_instanceSet = false
proc instance*(t: typedesc[GameTickDisplayInfoSingleton]): GameTickDisplayInfoSingleton =
    if not GameTickDisplayInfoSingleton_instanceSet:
        GameTickDisplayInfoSingleton_instanceSet = true
        GameTickDisplayInfoSingleton_instanceValue = newGameTickDisplayInfoSingleton()
    GameTickDisplayInfoSingleton_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameTickDisplayInfoSingleton(this: GameTickDisplayInfoSingleton) =
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    this.lastWidth = this.displayInfoSingleton.getLastWidth()
    this.lastHeight = this.displayInfoSingleton.getLastHeight()
    this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth()
    this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight()
    discard

proc initGameTickDisplayInfoSingleton*(this: GameTickDisplayInfoSingleton) =
    this.initFieldsGameTickDisplayInfoSingleton()

proc newGameTickDisplayInfoSingleton*(): GameTickDisplayInfoSingleton =
    result = GameTickDisplayInfoSingleton()
    initGameTickDisplayInfoSingleton(result)

proc getInstance*(t: typedesc[GameTickDisplayInfoSingleton]): GameTickDisplayInfoSingleton {.discardable.} =
        return GameTickDisplayInfoSingleton.instance

method update*(this: GameTickDisplayInfoSingleton) {.base.} =
        this.lastWidth = this.displayInfoSingleton.getLastWidth()
        this.lastHeight = this.displayInfoSingleton.getLastHeight()
        this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth()
        this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight()

method getLastWidth*(this: GameTickDisplayInfoSingleton): int32 {.base, discardable.} =
        return this.lastWidth

method getLastHeight*(this: GameTickDisplayInfoSingleton): int32 {.base, discardable.} =
        return this.lastHeight

method getLastHalfWidth*(this: GameTickDisplayInfoSingleton): int32 {.base, discardable.} =
        return this.lastHalfWidth

method getLastHalfHeight*(this: GameTickDisplayInfoSingleton): int32 {.base, discardable.} =
        return this.lastHalfHeight

