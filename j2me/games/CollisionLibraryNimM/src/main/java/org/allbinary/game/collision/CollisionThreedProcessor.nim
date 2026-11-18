# Generated Code Do Not Modify
# package org.allbinary.game.collision

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/collision/CollisionProcessor as CollisionProcessorModule
export CollisionProcessorModule

type
    CollisionThreedProcessor* = ref object of CollisionProcessor

proc newCollisionThreedProcessor*(): CollisionThreedProcessor
method isCollision*(this: CollisionThreedProcessor, myLayer: AllBinaryLayer, myLayer2: AllBinaryLayer): bool {.discardable.}


proc initCollisionThreedProcessor*(this: CollisionThreedProcessor) =
    initCollisionProcessor(this)

proc newCollisionThreedProcessor*(): CollisionThreedProcessor =
    result = CollisionThreedProcessor()
    initCollisionThreedProcessor(result)

method isCollision*(this: CollisionThreedProcessor, myLayer: AllBinaryLayer, myLayer2: AllBinaryLayer): bool {.discardable.} =
        if myLayer2.getXP() >= myLayer.getX2() or myLayer2.getYP() >= myLayer.getY2() or myLayer2.getX2() <= myLayer.getXP() or myLayer2.getY2() <= myLayer.getYP() or myLayer2.getZP() < myLayer.getZ2() or myLayer2.getZ2() > myLayer.getZP():
            return false
        else:
            return true

when declared(newCollisionThreedProcessorHook0):
    newCollisionThreedProcessorHook0 = proc (): CollisionProcessor = newCollisionThreedProcessor()

