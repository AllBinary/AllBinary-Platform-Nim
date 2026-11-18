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
# package org.allbinary.midlet

{.warning[UnusedImport]: off.}
import allbinary_java

type
    MidletIcon* = ref object of JObject

proc newMidletIcon*(): MidletIcon

var MidletIcon_RESOURCEValue: string
var MidletIcon_RESOURCESet = false
proc RESOURCE*(t: typedesc[MidletIcon]): string =
    if not MidletIcon_RESOURCESet:
        MidletIcon_RESOURCESet = true
        MidletIcon_RESOURCEValue = "icon"
    MidletIcon_RESOURCEValue
proc `RESOURCE=`*(t: typedesc[MidletIcon], value: string) =
    MidletIcon_RESOURCESet = true
    MidletIcon_RESOURCEValue = value

proc initMidletIcon*(this: MidletIcon) =
    discard

proc newMidletIcon*(): MidletIcon =
    result = MidletIcon()
    initMidletIcon(result)

