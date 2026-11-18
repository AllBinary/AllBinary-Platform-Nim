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
# package org.allbinary.graphics.color

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/color/BasicColorUtil as BasicColorUtilModule
export BasicColorUtilModule

type
    BasicColorUtilFactory* = ref object of JObject

proc newBasicColorUtilFactory*(): BasicColorUtilFactory
proc getInstance*(t: typedesc[BasicColorUtilFactory]): BasicColorUtil {.discardable.}


proc initBasicColorUtilFactory*(this: BasicColorUtilFactory) =
    discard

proc newBasicColorUtilFactory*(): BasicColorUtilFactory =
    result = BasicColorUtilFactory()
    initBasicColorUtilFactory(result)

proc getInstance*(t: typedesc[BasicColorUtilFactory]): BasicColorUtil {.discardable.} =
        return BasicColorUtil.getInstance()

