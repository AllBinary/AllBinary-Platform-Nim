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
# package org.allbinary.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule

type
    CustomGameMenuUtil* = ref object of JObject

proc newCustomGameMenuUtil*(): CustomGameMenuUtil
proc add*(t: typedesc[CustomGameMenuUtil], canvas: MyCanvas)
import org/allbinary/AppletUtil as AppletUtilModule
export AppletUtilModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule


proc initCustomGameMenuUtil*(this: CustomGameMenuUtil) =
    discard

proc newCustomGameMenuUtil*(): CustomGameMenuUtil =
    result = CustomGameMenuUtil()
    initCustomGameMenuUtil(result)

proc add*(t: typedesc[CustomGameMenuUtil], canvas: MyCanvas) =
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        if AppletUtil.isAppletLoader(canvas):
            discard
        elif J2MEUtil.isHTML():
            discard
        else:
            canvas.addCommand(gameCommandsFactory.EXIT_COMMAND)

