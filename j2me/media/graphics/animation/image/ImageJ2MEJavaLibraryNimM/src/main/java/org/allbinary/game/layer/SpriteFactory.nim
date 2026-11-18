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
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/game/layer/SpriteFactoryInterface as SpriteFactoryInterfaceModule
export SpriteFactoryInterfaceModule

type
    SpriteFactory* = ref object of SpriteFactoryInterface
        logUtil*: LogUtil

proc newSpriteFactory*(): SpriteFactory
proc getInstance*(t: typedesc[SpriteFactory]): SpriteFactory {.discardable.}
method createSprite*(this: SpriteFactory, image: Image, frameWidth: int32, frameHeight: int32): Sprite {.discardable.}

var SpriteFactory_instanceValue: SpriteFactory
var SpriteFactory_instanceSet = false
proc instance*(t: typedesc[SpriteFactory]): SpriteFactory =
    if not SpriteFactory_instanceSet:
        SpriteFactory_instanceSet = true
        SpriteFactory_instanceValue = newSpriteFactory()
    SpriteFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSpriteFactory(this: SpriteFactory) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initSpriteFactory*(this: SpriteFactory) =
    this.initFieldsSpriteFactory()

proc newSpriteFactory*(): SpriteFactory =
    result = SpriteFactory()
    initSpriteFactory(result)

proc getInstance*(t: typedesc[SpriteFactory]): SpriteFactory {.discardable.} =
        return SpriteFactory.instance

method createSprite*(this: SpriteFactory, image: Image, frameWidth: int32, frameHeight: int32): Sprite {.discardable.} =
        return newSprite(image, frameWidth, frameHeight)

