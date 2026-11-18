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
# package org.allbinary.game.tick

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/tick/TickableInterface as TickableInterfaceModule
export TickableInterfaceModule

type
    NullTickable* = ref object of TickableInterface
        NAME*: string

proc newNullTickable*(): NullTickable
proc getInstance*(t: typedesc[NullTickable]): NullTickable {.discardable.}
method processTick*(this: NullTickable, allBinaryLayerManager: AllBinaryLayerManager)
method getName*(this: NullTickable): string {.discardable.}

var NullTickable_SINGLETONValue: NullTickable
var NullTickable_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NullTickable]): NullTickable =
    if not NullTickable_SINGLETONSet:
        NullTickable_SINGLETONSet = true
        NullTickable_SINGLETONValue = newNullTickable()
    NullTickable_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsNullTickable(this: NullTickable) =
    this.NAME = "NulLTickable"
    discard

proc initNullTickable*(this: NullTickable) =
    this.initFieldsNullTickable()

proc newNullTickable*(): NullTickable =
    result = NullTickable()
    initNullTickable(result)

proc getInstance*(t: typedesc[NullTickable]): NullTickable {.discardable.} =
        return NullTickable.SINGLETON

method processTick*(this: NullTickable, allBinaryLayerManager: AllBinaryLayerManager) =
        discard

method getName*(this: NullTickable): string {.discardable.} =
        return this.NAME

