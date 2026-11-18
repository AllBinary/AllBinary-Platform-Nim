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
# package org.allbinary.animation.caption

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CaptionResources* = ref object of JObject

proc newCaptionResources*(): CaptionResources

var CaptionResources_RESOURCEValue: string
var CaptionResources_RESOURCESet = false
proc RESOURCE*(t: typedesc[CaptionResources]): string =
    if not CaptionResources_RESOURCESet:
        CaptionResources_RESOURCESet = true
        CaptionResources_RESOURCEValue = "/character_message_bubbled_box.png"
    CaptionResources_RESOURCEValue

proc initCaptionResources*(this: CaptionResources) =
    discard

proc newCaptionResources*(): CaptionResources =
    result = CaptionResources()
    initCaptionResources(result)

