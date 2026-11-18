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
# package org.allbinary.game.ag.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/bounds/BoundsVisitorInterface as BoundsVisitorInterfaceModule
export BoundsVisitorInterfaceModule
import org/allbinary/bounds/LayerBounds as LayerBoundsModule
export LayerBoundsModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    BoundBounceAI* = ref object of BasicAI
        currentRelativeAngle*: int32
        layerBounds*: LayerBounds
        boundsVisitorInterface*: BoundsVisitorInterface

proc newBoundBounceAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, layerBounds: LayerBounds, boundsVisitorInterface: BoundsVisitorInterface): BoundBounceAI
proc initBoundBounceAI*(this: BoundBounceAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, layerBounds: LayerBounds, boundsVisitorInterface: BoundsVisitorInterface)
method paint*(this: BoundBounceAI, graphics: Graphics) {.base.}
method processAI*(this: BoundBounceAI, allBinaryLayerManager: AllBinaryLayerManager)
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule


# Java field initializers run after the base initializer
proc initFieldsBoundBounceAI(this: BoundBounceAI) =
    this.currentRelativeAngle = 0
    
    
    discard

proc initBoundBounceAI*(this: BoundBounceAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, layerBounds: LayerBounds, boundsVisitorInterface: BoundsVisitorInterface) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsBoundBounceAI()
        this.layerBounds = layerBounds
        this.boundsVisitorInterface = boundsVisitorInterface

proc newBoundBounceAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, layerBounds: LayerBounds, boundsVisitorInterface: BoundsVisitorInterface): BoundBounceAI =
    result = BoundBounceAI()
    initBoundBounceAI(result, ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface)

method paint*(this: BoundBounceAI, graphics: Graphics) {.base.} =
        let rectange: Rectangle = this.layerBounds.getRectangleP()
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight())

method processAI*(this: BoundBounceAI, allBinaryLayerManager: AllBinaryLayerManager) =
        this.layerBounds.visit(this.boundsVisitorInterface)

when declared(newBoundBounceAIHook4):
    newBoundBounceAIHook4 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput, layerBounds: LayerBounds, boundsVisitorInterface: BoundsVisitorInterface): BasicAI = newBoundBounceAI(ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface)

