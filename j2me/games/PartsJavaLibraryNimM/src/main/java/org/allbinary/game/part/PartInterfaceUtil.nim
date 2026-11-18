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
# package org.allbinary.game.part

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/part/PartInterface as PartInterfaceModule
export PartInterfaceModule

type
    PartInterfaceUtil* = ref object of JObject

proc newPartInterfaceUtil*(): PartInterfaceUtil
proc getZeroArray*(t: typedesc[PartInterfaceUtil]): JArray[PartInterface] {.discardable.}

var PartInterfaceUtil_SINGLETONValue: JArray[PartInterface]
var PartInterfaceUtil_SINGLETONSet = false
proc SINGLETON*(t: typedesc[PartInterfaceUtil]): JArray[PartInterface] =
    if not PartInterfaceUtil_SINGLETONSet:
        PartInterfaceUtil_SINGLETONSet = true
        PartInterfaceUtil_SINGLETONValue = newJArray[PartInterface](0, default(PartInterface))
    PartInterfaceUtil_SINGLETONValue

proc initPartInterfaceUtil*(this: PartInterfaceUtil) =
    discard

proc newPartInterfaceUtil*(): PartInterfaceUtil =
    result = PartInterfaceUtil()
    initPartInterfaceUtil(result)

proc getZeroArray*(t: typedesc[PartInterfaceUtil]): JArray[PartInterface] {.discardable.} =
        return PartInterfaceUtil.SINGLETON

