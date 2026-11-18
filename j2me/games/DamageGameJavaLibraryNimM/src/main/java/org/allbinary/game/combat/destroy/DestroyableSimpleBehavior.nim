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
# package org.allbinary.game.combat.destroy

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/game/combat/destroy/DestroyableBaseBehavior as DestroyableBaseBehaviorModule
export DestroyableBaseBehaviorModule

type
    DestroyableSimpleBehavior* = ref object of DestroyableBaseBehavior
        ownerLayer*: CollidableCompositeLayer
        destroyed*: bool

proc newDestroyableSimpleBehavior*(ownerLayer: CollidableCompositeLayer): DestroyableSimpleBehavior
proc initDestroyableSimpleBehavior*(this: DestroyableSimpleBehavior, ownerLayer: CollidableCompositeLayer)
method isDestroyed*(this: DestroyableSimpleBehavior): bool {.discardable.}
method setDestroyed*(this: DestroyableSimpleBehavior, destroyed: bool)
import org/allbinary/game/combat/destroy/DestroyedLayerProcessor as DestroyedLayerProcessorModule
export DestroyedLayerProcessorModule


# Java field initializers run after the base initializer
proc initFieldsDestroyableSimpleBehavior(this: DestroyableSimpleBehavior) =
    
    this.destroyed = false
    discard

proc initDestroyableSimpleBehavior*(this: DestroyableSimpleBehavior, ownerLayer: CollidableCompositeLayer) =
        initDestroyableBaseBehavior(this)
        this.initFieldsDestroyableSimpleBehavior()
        this.ownerLayer = ownerLayer

proc newDestroyableSimpleBehavior*(ownerLayer: CollidableCompositeLayer): DestroyableSimpleBehavior =
    result = DestroyableSimpleBehavior()
    initDestroyableSimpleBehavior(result, ownerLayer)

method isDestroyed*(this: DestroyableSimpleBehavior): bool {.discardable.} =
        return this.destroyed

method setDestroyed*(this: DestroyableSimpleBehavior, destroyed: bool) =
        this.destroyed = destroyed
        if this.isDestroyed():
            DestroyedLayerProcessor.getInstance().add(this.ownerLayer)

when declared(newDestroyableSimpleBehaviorHook1):
    newDestroyableSimpleBehaviorHook1 = proc (ownerLayer: CollidableCompositeLayer): DestroyableBaseBehavior = newDestroyableSimpleBehavior(ownerLayer)

