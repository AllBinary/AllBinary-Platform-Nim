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
# package org.allbinary.game.combat.damage

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/game/combat/damage/DamageFloaters as DamageFloatersModule
export DamageFloatersModule

type
    AnimationDamageFloaters* = ref object of DamageFloaters
        logUtil*: LogUtil
        layerInterface*: AllBinaryLayer
        animationInterfaceArray*: JArray[IndexedAnimation]
        circularIndexUtil*: CircularIndexUtil
        dx*: int32
        dy*: int32

proc newAnimationDamageFloaters*(layerInterface: AllBinaryLayer, animationInterfaceArray: JArray[IndexedAnimation], dx: int32, dy: int32): AnimationDamageFloaters
proc initAnimationDamageFloaters*(this: AnimationDamageFloaters, layerInterface: AllBinaryLayer, animationInterfaceArray: JArray[IndexedAnimation], dx: int32, dy: int32)
method add*(this: AnimationDamageFloaters, damage: int32)
method paint*(this: AnimationDamageFloaters, graphics: Graphics)
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule


# Java field initializers run after the base initializer
proc initFieldsAnimationDamageFloaters(this: AnimationDamageFloaters) =
    this.logUtil = LogUtil.getInstance()
    
    
    
    
    
    discard

proc initAnimationDamageFloaters*(this: AnimationDamageFloaters, layerInterface: AllBinaryLayer, animationInterfaceArray: JArray[IndexedAnimation], dx: int32, dy: int32) =
        initDamageFloaters(this)
        this.initFieldsAnimationDamageFloaters()
        this.animationInterfaceArray = animationInterfaceArray
        block:
            var index: int32 = this.animationInterfaceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.animationInterfaceArray[index].setFrame(this.animationInterfaceArray[index].getSize() -% 1)
        this.layerInterface = layerInterface
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length)
        this.dx = dx
        this.dy = dy

proc newAnimationDamageFloaters*(layerInterface: AllBinaryLayer, animationInterfaceArray: JArray[IndexedAnimation], dx: int32, dy: int32): AnimationDamageFloaters =
    result = AnimationDamageFloaters()
    initAnimationDamageFloaters(result, layerInterface, animationInterfaceArray, dx, dy)

method add*(this: AnimationDamageFloaters, damage: int32) =
        var i: int32 = this.circularIndexUtil.getIndex()
        this.animationInterfaceArray[i].setFrame(0)
        this.circularIndexUtil.next()

method paint*(this: AnimationDamageFloaters, graphics: Graphics) =
        try:
            let viewPosition: ViewPositionBase = this.layerInterface.getViewPosition()
            let x: int32 = viewPosition.getX()
            let y: int32 = viewPosition.getY()
            block:
                var index: int32 = 0
                while index < this.animationInterfaceArray.length:
                    defer: index = index +% 1
                    var animationInterface: IndexedAnimation = this.animationInterfaceArray[index]
                    if animationInterface.getFrame() < animationInterface.getAnimationSize() -% 1:
                        var delta: int32 = animationInterface.getFrame() *% 20
                        animationInterface.paintXY(graphics, x +% this.dx, y -% delta +% this.dy)
                        animationInterface.nextFrame()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            let canvasStrings: CanvasStrings = CanvasStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, canvasStrings.PAINT, e)

when declared(newAnimationDamageFloatersHook4):
    newAnimationDamageFloatersHook4 = proc (layerInterface: AllBinaryLayer, animationInterfaceArray: JArray[IndexedAnimation], dx: int32, dy: int32): DamageFloaters = newAnimationDamageFloaters(layerInterface, animationInterfaceArray, dx, dy)

