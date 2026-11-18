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
# package org.allbinary.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule

type
    GameGlobalsFactory* = ref object of JObject
        newCanvas*: bool
        newDisplaybleTime*: int64
        point*: GPoint

proc newGameGlobalsFactory*(): GameGlobalsFactory
proc getInstance*(t: typedesc[GameGlobalsFactory]): GameGlobalsFactory {.discardable.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule

var GameGlobalsFactory_instanceValue: GameGlobalsFactory
var GameGlobalsFactory_instanceSet = false
proc instance*(t: typedesc[GameGlobalsFactory]): GameGlobalsFactory =
    if not GameGlobalsFactory_instanceSet:
        GameGlobalsFactory_instanceSet = true
        GameGlobalsFactory_instanceValue = newGameGlobalsFactory()
    GameGlobalsFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameGlobalsFactory(this: GameGlobalsFactory) =
    this.newCanvas = true
    this.newDisplaybleTime = int64(Integer.MIN_VALUE)
    this.point = PointFactory.getInstance().ZERO_ZERO
    discard

proc initGameGlobalsFactory*(this: GameGlobalsFactory) =
    this.initFieldsGameGlobalsFactory()

proc newGameGlobalsFactory*(): GameGlobalsFactory =
    result = GameGlobalsFactory()
    initGameGlobalsFactory(result)

proc getInstance*(t: typedesc[GameGlobalsFactory]): GameGlobalsFactory {.discardable.} =
        return GameGlobalsFactory.instance

