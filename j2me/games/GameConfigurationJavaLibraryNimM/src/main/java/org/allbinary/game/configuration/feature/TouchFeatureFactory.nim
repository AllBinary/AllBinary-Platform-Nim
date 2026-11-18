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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/TouchFeature as TouchFeatureModule
export TouchFeatureModule

type
    TouchFeatureFactory* = ref object of JObject
        TOUCH_ENABLED*: TouchFeature
        SHOW_SCREEN_BUTTONS*: TouchFeature
        AUTO_HIDE_SHOW_SCREEN_BUTTONS*: TouchFeature
        HIDE_SCREEN_BUTTONS*: TouchFeature

proc newTouchFeatureFactory*(): TouchFeatureFactory
proc initTouchFeatureFactory*(this: TouchFeatureFactory)
proc getInstance*(t: typedesc[TouchFeatureFactory]): TouchFeatureFactory {.discardable.}

var TouchFeatureFactory_instanceValue: TouchFeatureFactory
var TouchFeatureFactory_instanceSet = false
proc instance*(t: typedesc[TouchFeatureFactory]): TouchFeatureFactory =
    if not TouchFeatureFactory_instanceSet:
        TouchFeatureFactory_instanceSet = true
        TouchFeatureFactory_instanceValue = newTouchFeatureFactory()
    TouchFeatureFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsTouchFeatureFactory(this: TouchFeatureFactory) =
    this.TOUCH_ENABLED = newTouchFeature("Touch Enabled")
    this.SHOW_SCREEN_BUTTONS = newTouchFeature("Show")
    this.AUTO_HIDE_SHOW_SCREEN_BUTTONS = newTouchFeature("Auto Hide (One Level)")
    this.HIDE_SCREEN_BUTTONS = newTouchFeature("Hide")
    discard

proc getInstance*(t: typedesc[TouchFeatureFactory]): TouchFeatureFactory {.discardable.} =
        return TouchFeatureFactory.instance

proc initTouchFeatureFactory*(this: TouchFeatureFactory) =
        this.initFieldsTouchFeatureFactory()
        discard

proc newTouchFeatureFactory*(): TouchFeatureFactory =
    result = TouchFeatureFactory()
    initTouchFeatureFactory(result)

