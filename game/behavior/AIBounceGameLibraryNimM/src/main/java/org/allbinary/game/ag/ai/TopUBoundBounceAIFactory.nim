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
import org/allbinary/ai/ArtificialIntelligenceInterface as ArtificialIntelligenceInterfaceModule
export ArtificialIntelligenceInterfaceModule
import org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterfaceModule
export ArtificialIntelligenceInterfaceFactoryInterfaceModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    TopUBoundBounceAIFactory* = ref object of ArtificialIntelligenceInterfaceFactoryInterface

proc newTopUBoundBounceAIFactory*(): TopUBoundBounceAIFactory
method getInstance*(this: TopUBoundBounceAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.}
import org/allbinary/bounds/TopULayerBounds as TopULayerBoundsModule
export TopULayerBoundsModule
import org/allbinary/game/physics/velocity/VelocityInterface as VelocityInterfaceModule
export VelocityInterfaceModule
import org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterfaceModule
export VelocityInterfaceCompositeInterfaceModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/game/ag/ai/BoundBounceAI as BoundBounceAIModule
export BoundBounceAIModule
import org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor as ReverseVelocityBoundsVisitorModule
export ReverseVelocityBoundsVisitorModule


proc initTopUBoundBounceAIFactory*(this: TopUBoundBounceAIFactory) =
    discard

proc newTopUBoundBounceAIFactory*(): TopUBoundBounceAIFactory =
    result = TopUBoundBounceAIFactory()
    initTopUBoundBounceAIFactory(result)

method getInstance*(this: TopUBoundBounceAIFactory, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): ArtificialIntelligenceInterface {.discardable.} =
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface = VelocityInterfaceCompositeInterface(JObject(ownerLayerInterface))
        let velocityInterface: VelocityInterface = VelocityInterface(JObject(velocityInterfaceCompositeInterface.getVelocityProperties()))
        let maxDistancePerTick: int32 = (ashr(velocityInterface.getMaxForwardVelocity(), velocityInterface.getVelocityXBasicDecimalP().getScaledFactor()))
        let halfWidth: int32 = ownerLayerInterface.getWidth() *% 2 +% maxDistancePerTick +% 1
        let halfHeight: int32 = ownerLayerInterface.getHeight() *% 2 +% maxDistancePerTick +% 1
        let point: GPoint = PointFactory.getInstance().createXY(halfWidth, halfHeight +% 60)
        let displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        let rectangle: Rectangle = newRectangle(point, (displayInfo.getLastWidth() -% halfWidth -% point.getX()), (displayInfo.getLastHeight() -% halfHeight -% point.getY()))
        return newBoundBounceAI(ownerLayerInterface, gameInput, newTopULayerBounds(rectangle), newReverseVelocityBoundsVisitor(ownerLayerInterface))

