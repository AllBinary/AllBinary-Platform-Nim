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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/mapping/InputMappingInterface as InputMappingInterfaceModule
export InputMappingInterfaceModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/paint/ProcessPaintable as ProcessPaintableModule
export ProcessPaintableModule

type
    TouchButtonsPaintableCompositeFactory* = ref object of JObject

proc newTouchButtonsPaintableCompositeFactory*(): TouchButtonsPaintableCompositeFactory
proc getInstance*(t: typedesc[TouchButtonsPaintableCompositeFactory], inputMappingInterface: InputMappingInterface, basicColor: BasicColor): ProcessPaintable {.discardable.}
import org/allbinary/input/motion/button/TouchButtonsPaintableComposite as TouchButtonsPaintableCompositeModule
export TouchButtonsPaintableCompositeModule


proc initTouchButtonsPaintableCompositeFactory*(this: TouchButtonsPaintableCompositeFactory) =
    discard

proc newTouchButtonsPaintableCompositeFactory*(): TouchButtonsPaintableCompositeFactory =
    result = TouchButtonsPaintableCompositeFactory()
    initTouchButtonsPaintableCompositeFactory(result)

proc getInstance*(t: typedesc[TouchButtonsPaintableCompositeFactory], inputMappingInterface: InputMappingInterface, basicColor: BasicColor): ProcessPaintable {.discardable.} =
        return newTouchButtonsPaintableComposite(inputMappingInterface, basicColor)

