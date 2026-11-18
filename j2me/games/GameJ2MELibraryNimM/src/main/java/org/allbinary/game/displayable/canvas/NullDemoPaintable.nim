#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/displayable/canvas/DemoPaintableInterface as DemoPaintableInterfaceModule
export DemoPaintableInterfaceModule

type
    NullDemoPaintable* = ref object of DemoPaintableInterface

proc newNullDemoPaintable*(): NullDemoPaintable
method showGamePaintable*(this: NullDemoPaintable)

var NullDemoPaintable_NULL_DEMO_PAINTABLEValue: NullDemoPaintable
var NullDemoPaintable_NULL_DEMO_PAINTABLESet = false
proc NULL_DEMO_PAINTABLEStatic*(t: typedesc[NullDemoPaintable]): NullDemoPaintable =
    if not NullDemoPaintable_NULL_DEMO_PAINTABLESet:
        NullDemoPaintable_NULL_DEMO_PAINTABLESet = true
        NullDemoPaintable_NULL_DEMO_PAINTABLEValue = newNullDemoPaintable()
    NullDemoPaintable_NULL_DEMO_PAINTABLEValue

proc initNullDemoPaintable*(this: NullDemoPaintable) =
    discard

proc newNullDemoPaintable*(): NullDemoPaintable =
    result = NullDemoPaintable()
    initNullDemoPaintable(result)

method showGamePaintable*(this: NullDemoPaintable) =
        discard

