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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java

type
    Anchor* = ref object of JObject

proc newAnchor*(): Anchor
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

var Anchor_TOP_LEFTValue: int32
var Anchor_TOP_LEFTSet = false
proc TOP_LEFT*(t: typedesc[Anchor]): int32 =
    if not Anchor_TOP_LEFTSet:
        Anchor_TOP_LEFTSet = true
        Anchor_TOP_LEFTValue = Graphics.TOP and Graphics.LEFT
    Anchor_TOP_LEFTValue
proc `TOP_LEFT=`*(t: typedesc[Anchor], value: int32) =
    Anchor_TOP_LEFTSet = true
    Anchor_TOP_LEFTValue = value

proc initAnchor*(this: Anchor) =
    discard

proc newAnchor*(): Anchor =
    result = Anchor()
    initAnchor(result)

