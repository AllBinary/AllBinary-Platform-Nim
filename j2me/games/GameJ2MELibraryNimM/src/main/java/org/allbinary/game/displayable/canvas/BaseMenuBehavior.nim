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
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    BaseMenuBehavior* = ref object of JObject

proc newBaseMenuBehavior*(): BaseMenuBehavior
proc getInstance*(t: typedesc[BaseMenuBehavior]): BaseMenuBehavior {.discardable.}
method onDisplayChangeEvent*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas, displayChangeEvent: DisplayChangeEvent) {.base.}
method initSpecialPaint*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method initMenu*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method updateMenu*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method popupMenu*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method closeMenu*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule

var BaseMenuBehavior_instanceValue: BaseMenuBehavior
var BaseMenuBehavior_instanceSet = false
proc instance*(t: typedesc[BaseMenuBehavior]): BaseMenuBehavior =
    if not BaseMenuBehavior_instanceSet:
        BaseMenuBehavior_instanceSet = true
        BaseMenuBehavior_instanceValue = newBaseMenuBehavior()
    BaseMenuBehavior_instanceValue

proc initBaseMenuBehavior*(this: BaseMenuBehavior) =
    discard

proc newBaseMenuBehavior*(): BaseMenuBehavior =
    result = BaseMenuBehavior()
    initBaseMenuBehavior(result)

proc getInstance*(t: typedesc[BaseMenuBehavior]): BaseMenuBehavior {.discardable.} =
        return BaseMenuBehavior.instance

method onDisplayChangeEvent*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas, displayChangeEvent: DisplayChangeEvent) {.base.} =
        discard

method initSpecialPaint*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        allBinaryGameCanvas.setNonBotPaintableP(NullPaintable.getInstance())

method initMenu*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method updateMenu*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method popupMenu*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method closeMenu*(this: BaseMenuBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

