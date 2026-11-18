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
# package org.allbinary.game.graphics.hud

{.warning[UnusedImport]: off.}
import allbinary_java

type
    BasicHudFactory* = ref object of JObject
        DIRECTION_EXCEPTION*: string
        VERTICAL*: int32
        HORIZONTAL*: int32
        BOTTOMLEFT*: int32
        BOTTOMRIGHT*: int32
        TOPLEFT*: int32
        TOPRIGHT*: int32
        BOTTOMCENTER*: int32
        TOPCENTER*: int32
        ABSOLUTE*: int32

proc newBasicHudFactory*(): BasicHudFactory
proc initBasicHudFactory*(this: BasicHudFactory)
proc getInstance*(t: typedesc[BasicHudFactory]): BasicHudFactory {.discardable.}

var BasicHudFactory_instanceValue: BasicHudFactory
var BasicHudFactory_instanceSet = false
proc instance*(t: typedesc[BasicHudFactory]): BasicHudFactory =
    if not BasicHudFactory_instanceSet:
        BasicHudFactory_instanceSet = true
        BasicHudFactory_instanceValue = newBasicHudFactory()
    BasicHudFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBasicHudFactory(this: BasicHudFactory) =
    this.DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently"
    this.VERTICAL = 0
    this.HORIZONTAL = 1
    this.BOTTOMLEFT = 0
    this.BOTTOMRIGHT = 1
    this.TOPLEFT = 2
    this.TOPRIGHT = 3
    this.BOTTOMCENTER = 4
    this.TOPCENTER = 5
    this.ABSOLUTE = 6
    discard

proc getInstance*(t: typedesc[BasicHudFactory]): BasicHudFactory {.discardable.} =
        return BasicHudFactory.instance

proc initBasicHudFactory*(this: BasicHudFactory) =
        this.initFieldsBasicHudFactory()
        discard

proc newBasicHudFactory*(): BasicHudFactory =
    result = BasicHudFactory()
    initBasicHudFactory(result)

