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
import org/allbinary/game/combat/destroy/DestroyableInterface as DestroyableInterfaceModule
export DestroyableInterfaceModule

type
    DestroyableBaseBehavior* = ref object of DestroyableInterface

proc newDestroyableBaseBehavior*(): DestroyableBaseBehavior
proc getInstance*(t: typedesc[DestroyableBaseBehavior]): DestroyableBaseBehavior {.discardable.}
method getName*(this: DestroyableBaseBehavior): string {.discardable.}
method isDestroyed*(this: DestroyableBaseBehavior): bool {.discardable.}
method setDestroyed*(this: DestroyableBaseBehavior, destroyed: bool) {.base.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var DestroyableBaseBehavior_instanceValue: DestroyableBaseBehavior
var DestroyableBaseBehavior_instanceSet = false
proc instance*(t: typedesc[DestroyableBaseBehavior]): DestroyableBaseBehavior =
    if not DestroyableBaseBehavior_instanceSet:
        DestroyableBaseBehavior_instanceSet = true
        DestroyableBaseBehavior_instanceValue = newDestroyableBaseBehavior()
    DestroyableBaseBehavior_instanceValue

proc initDestroyableBaseBehavior*(this: DestroyableBaseBehavior) =
    discard

proc newDestroyableBaseBehavior*(): DestroyableBaseBehavior =
    result = DestroyableBaseBehavior()
    initDestroyableBaseBehavior(result)

proc getInstance*(t: typedesc[DestroyableBaseBehavior]): DestroyableBaseBehavior {.discardable.} =
        return DestroyableBaseBehavior.instance

method getName*(this: DestroyableBaseBehavior): string {.discardable.} =
        return jClassName(this)

method isDestroyed*(this: DestroyableBaseBehavior): bool {.discardable.} =
        raise newJException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED)

method setDestroyed*(this: DestroyableBaseBehavior, destroyed: bool) {.base.} =
        discard

