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
# package org.allbinary.graphics.displayable.screen

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule

type
    ScreenRepaintUtil* = ref object of JObject

proc newScreenRepaintUtil*(): ScreenRepaintUtil
proc repaint*(t: typedesc[ScreenRepaintUtil], displayable: Displayable)


proc initScreenRepaintUtil*(this: ScreenRepaintUtil) =
    discard

proc newScreenRepaintUtil*(): ScreenRepaintUtil =
    result = ScreenRepaintUtil()
    initScreenRepaintUtil(result)

proc repaint*(t: typedesc[ScreenRepaintUtil], displayable: Displayable) =
        discard

