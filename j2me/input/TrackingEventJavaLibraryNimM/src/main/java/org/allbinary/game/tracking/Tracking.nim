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
# package org.allbinary.game.tracking

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

type
    Tracking* = ref object of JObject

proc newTracking*(): Tracking
proc initTracking*(this: Tracking)
method paint*(this: Tracking, graphics: Graphics) {.base.}


proc initTracking*(this: Tracking) =
        discard
        discard

proc newTracking*(): Tracking =
    result = Tracking()
    initTracking(result)

method paint*(this: Tracking, graphics: Graphics) {.base.} =
        discard

