#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule
import org/allbinary/game/displayable/canvas/BaseMenuBehavior as BaseMenuBehaviorModule
export BaseMenuBehaviorModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    InGameMenuBehavior* = ref object of BaseMenuBehavior

proc newInGameMenuBehavior*(): InGameMenuBehavior
proc getInstance*(t: typedesc[InGameMenuBehavior]): InGameMenuBehavior {.discardable.}
method onDisplayChangeEvent*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas, displayChangeEvent: DisplayChangeEvent)
method initSpecialPaint*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method initMenu*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method updateMenu*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method popupMenu*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method closeMenu*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
import org/allbinary/game/displayable/canvas/GameCanvasNonBotPaintable as GameCanvasNonBotPaintableModule
export GameCanvasNonBotPaintableModule

var InGameMenuBehavior_instanceCValue: InGameMenuBehavior
var InGameMenuBehavior_instanceCSet = false
proc instanceC*(t: typedesc[InGameMenuBehavior]): InGameMenuBehavior =
    if not InGameMenuBehavior_instanceCSet:
        InGameMenuBehavior_instanceCSet = true
        InGameMenuBehavior_instanceCValue = newInGameMenuBehavior()
    InGameMenuBehavior_instanceCValue

proc initInGameMenuBehavior*(this: InGameMenuBehavior) =
    initBaseMenuBehavior(this)

proc newInGameMenuBehavior*(): InGameMenuBehavior =
    result = InGameMenuBehavior()
    initInGameMenuBehavior(result)

proc getInstance*(t: typedesc[InGameMenuBehavior]): InGameMenuBehavior {.discardable.} =
        return InGameMenuBehavior.instanceC

method onDisplayChangeEvent*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas, displayChangeEvent: DisplayChangeEvent) =
        allBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent)

method initSpecialPaint*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.setNonBotPaintableP(newGameCanvasNonBotPaintable(allBinaryGameCanvas))

method initMenu*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.initMenu2()

method updateMenu*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.initMenu2()

method popupMenu*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.popupMenu2()

method closeMenu*(this: InGameMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.closeMenu2()

when declared(newInGameMenuBehaviorHook0):
    newInGameMenuBehaviorHook0 = proc (): BaseMenuBehavior = newInGameMenuBehavior()

