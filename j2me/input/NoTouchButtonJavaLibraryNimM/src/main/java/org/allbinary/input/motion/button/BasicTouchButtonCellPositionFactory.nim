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

type
    BasicTouchButtonCellPositionFactory* = ref object of JObject

proc newBasicTouchButtonCellPositionFactory*(): BasicTouchButtonCellPositionFactory
proc initBasicTouchButtonCellPositionFactory*(this: BasicTouchButtonCellPositionFactory)
proc init*(t: typedesc[BasicTouchButtonCellPositionFactory])


proc initBasicTouchButtonCellPositionFactory*(this: BasicTouchButtonCellPositionFactory) =
        discard
        discard

proc newBasicTouchButtonCellPositionFactory*(): BasicTouchButtonCellPositionFactory =
    result = BasicTouchButtonCellPositionFactory()
    initBasicTouchButtonCellPositionFactory(result)

proc init*(t: typedesc[BasicTouchButtonCellPositionFactory]) =
        discard

