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
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    DamageFloaters* = ref object of Paintable

proc newDamageFloaters*(): DamageFloaters
proc getInstance*(t: typedesc[DamageFloaters]): DamageFloaters {.discardable.}
method add*(this: DamageFloaters, damage: int32) {.base.}

var DamageFloaters_SINGLETONValue: DamageFloaters
var DamageFloaters_SINGLETONSet = false
proc SINGLETON*(t: typedesc[DamageFloaters]): DamageFloaters =
    if not DamageFloaters_SINGLETONSet:
        DamageFloaters_SINGLETONSet = true
        DamageFloaters_SINGLETONValue = newDamageFloaters()
    DamageFloaters_SINGLETONValue

proc initDamageFloaters*(this: DamageFloaters) =
    initPaintable(this)

proc newDamageFloaters*(): DamageFloaters =
    result = DamageFloaters()
    initDamageFloaters(result)

proc getInstance*(t: typedesc[DamageFloaters]): DamageFloaters {.discardable.} =
        return DamageFloaters.SINGLETON

method add*(this: DamageFloaters, damage: int32) {.base.} =
        discard

when declared(newDamageFloatersHook0):
    newDamageFloatersHook0 = proc (): Paintable = newDamageFloaters()

