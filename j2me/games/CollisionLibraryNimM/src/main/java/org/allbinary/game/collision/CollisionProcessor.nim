# Generated Code Do Not Modify
# package org.allbinary.game.collision

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    CollisionProcessor* = ref object of JObject

proc newCollisionProcessor*(): CollisionProcessor
method isCollision*(this: CollisionProcessor, myLayer: AllBinaryLayer, myLayer2: AllBinaryLayer): bool {.base, discardable.}


proc initCollisionProcessor*(this: CollisionProcessor) =
    discard

proc newCollisionProcessor*(): CollisionProcessor =
    result = CollisionProcessor()
    initCollisionProcessor(result)

method isCollision*(this: CollisionProcessor, myLayer: AllBinaryLayer, myLayer2: AllBinaryLayer): bool {.base, discardable.} =
        return false

