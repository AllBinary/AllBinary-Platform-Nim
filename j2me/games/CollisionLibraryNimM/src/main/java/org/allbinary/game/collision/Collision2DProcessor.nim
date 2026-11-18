# Generated Code Do Not Modify
# package org.allbinary.game.collision

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/collision/CollisionProcessor as CollisionProcessorModule
export CollisionProcessorModule

type
    Collision2DProcessor* = ref object of CollisionProcessor

proc newCollision2DProcessor*(): Collision2DProcessor
method isCollision*(this: Collision2DProcessor, myLayer: AllBinaryLayer, myLayer2: AllBinaryLayer): bool {.discardable.}


proc initCollision2DProcessor*(this: Collision2DProcessor) =
    initCollisionProcessor(this)

proc newCollision2DProcessor*(): Collision2DProcessor =
    result = Collision2DProcessor()
    initCollision2DProcessor(result)

method isCollision*(this: Collision2DProcessor, myLayer: AllBinaryLayer, myLayer2: AllBinaryLayer): bool {.discardable.} =
        if myLayer2.getXP() >= myLayer.getX2() or myLayer2.getYP() >= myLayer.getY2() or myLayer2.getX2() <= myLayer.getXP() or myLayer2.getY2() <= myLayer.getYP():
            return false
        else:
            return true

when declared(newCollision2DProcessorHook0):
    newCollision2DProcessorHook0 = proc (): CollisionProcessor = newCollision2DProcessor()

