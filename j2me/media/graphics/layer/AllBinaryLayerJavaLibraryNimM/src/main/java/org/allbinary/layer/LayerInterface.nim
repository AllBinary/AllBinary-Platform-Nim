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
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/identification/GroupInterfaceCompositeInterface as GroupInterfaceCompositeInterfaceModule
export GroupInterfaceCompositeInterfaceModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/layer/NamedInterface as NamedInterfaceModule
export NamedInterfaceModule
import org/allbinary/layer/PositionInterface as PositionInterfaceModule
export PositionInterfaceModule

type
    LayerInterface* = ref object of NamedInterface


method getHeight*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHeight")

method getWidth*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getWidth")

method getHalfHeight*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHalfHeight")

method getHalfWidth*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHalfWidth")

method getXP*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getXP")

method getYP*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getYP")

method getZP*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getZP")

method getX2*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getX2")

method getY2*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getY2")

method getZ2*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getZ2")

method isVisible*(this: LayerInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isVisible")

method moveDXYZ*(this: LayerInterface, dx: int32, dy: int32, dz: int32) {.base.} =
        raise newJException("AbstractMethodError", "moveDXYZ")

method setVisible*(this: LayerInterface, visible: bool) {.base.} =
        raise newJException("AbstractMethodError", "setVisible")

method implmentsTickableInterface*(this: LayerInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "implmentsTickableInterface")

method implmentsCollidableInterface*(this: LayerInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "implmentsCollidableInterface")

method implmentsGameInputInterface*(this: LayerInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "implmentsGameInputInterface")

method implmentsArtificialIntelligenceCompositeInterface*(this: LayerInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "implmentsArtificialIntelligenceCompositeInterface")

method getType*(this: LayerInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getType")

