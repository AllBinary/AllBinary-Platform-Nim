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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java

type
    TitleResource* = ref object of JObject

proc newTitleResource*(): TitleResource

var TitleResource_RESOURCE_TITLEValue: string
var TitleResource_RESOURCE_TITLESet = false
proc RESOURCE_TITLE*(t: typedesc[TitleResource]): string =
    if not TitleResource_RESOURCE_TITLESet:
        TitleResource_RESOURCE_TITLESet = true
        TitleResource_RESOURCE_TITLEValue = "/title_sprite_100_by_100.png"
    TitleResource_RESOURCE_TITLEValue

proc initTitleResource*(this: TitleResource) =
    discard

proc newTitleResource*(): TitleResource =
    result = TitleResource()
    initTitleResource(result)

