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
# package org.allbinary.game.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    IconLayer* = ref object of AllBinaryLayer
        animationInterface*: Animation

proc newIconLayer*(animationInterface: Animation, width: int32, height: int32): IconLayer
proc initIconLayer*(this: IconLayer, animationInterface: Animation, width: int32, height: int32)
method paint*(this: IconLayer, graphics: Graphics)
method paintThreed*(this: IconLayer, graphics: Graphics)
method getAnimationInterface*(this: IconLayer): Animation {.base, discardable.}
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule

var IconLayer_NULL_ICON_LAYERValue: IconLayer
var IconLayer_NULL_ICON_LAYERSet = false
proc NULL_ICON_LAYER*(t: typedesc[IconLayer]): IconLayer =
    if not IconLayer_NULL_ICON_LAYERSet:
        IconLayer_NULL_ICON_LAYERSet = true
        IconLayer_NULL_ICON_LAYERValue = newIconLayer(NullAnimationFactory.getFactoryInstance().getInstance(0), 0, 0)
    IconLayer_NULL_ICON_LAYERValue

# Java field initializers run after the base initializer
proc initFieldsIconLayer(this: IconLayer) =
    
    discard

proc initIconLayer*(this: IconLayer, animationInterface: Animation, width: int32, height: int32) =
        initAllBinaryLayer(this, StringUtil.getInstance().EMPTY_STRING, newRectangle(PointFactory.getInstance().ZERO_ZERO, width, height), ViewPosition.getInstanceD())
        this.initFieldsIconLayer()
        this.animationInterface = animationInterface

proc newIconLayer*(animationInterface: Animation, width: int32, height: int32): IconLayer =
    result = IconLayer()
    initIconLayer(result, animationInterface, width, height)

method paint*(this: IconLayer, graphics: Graphics) =
        this.animationInterface.paintXY(graphics, this.x, this.y)

method paintThreed*(this: IconLayer, graphics: Graphics) =
        this.animationInterface.paintThreedXYZ(graphics, this.x, this.y, this.z)

method getAnimationInterface*(this: IconLayer): Animation {.base, discardable.} =
        return this.animationInterface

when declared(newIconLayerHook3):
    newIconLayerHook3 = proc (animationInterface: Animation, width: int32, height: int32): AllBinaryLayer = newIconLayer(animationInterface, width, height)

