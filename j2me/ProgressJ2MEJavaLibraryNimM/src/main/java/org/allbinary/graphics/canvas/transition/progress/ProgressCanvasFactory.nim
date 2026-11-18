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
# package org.allbinary.graphics.canvas.transition.progress

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule

type
    ProgressCanvasFactory* = ref object of JObject

proc newProgressCanvasFactory*(): ProgressCanvasFactory
proc getInstance*(t: typedesc[ProgressCanvasFactory]): ProgressCanvas {.discardable.}
proc getLazyInstance*(t: typedesc[ProgressCanvasFactory]): PaintableInterface {.discardable.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var ProgressCanvasFactory_PROGRESS_FORM_SCREENValue: JObject
var ProgressCanvasFactory_PROGRESS_FORM_SCREENSet = false
proc PROGRESS_FORM_SCREEN*(t: typedesc[ProgressCanvasFactory]): JObject =
    if not ProgressCanvasFactory_PROGRESS_FORM_SCREENSet:
        ProgressCanvasFactory_PROGRESS_FORM_SCREENSet = true
        ProgressCanvasFactory_PROGRESS_FORM_SCREENValue = NullUtil.getInstance().NULL_OBJECT
    ProgressCanvasFactory_PROGRESS_FORM_SCREENValue
proc `PROGRESS_FORM_SCREEN=`*(t: typedesc[ProgressCanvasFactory], value: JObject) =
    ProgressCanvasFactory_PROGRESS_FORM_SCREENSet = true
    ProgressCanvasFactory_PROGRESS_FORM_SCREENValue = value

proc initProgressCanvasFactory*(this: ProgressCanvasFactory) =
    discard

proc newProgressCanvasFactory*(): ProgressCanvasFactory =
    result = ProgressCanvasFactory()
    initProgressCanvasFactory(result)

proc getInstance*(t: typedesc[ProgressCanvasFactory]): ProgressCanvas {.discardable.} =
        if ProgressCanvasFactory.PROGRESS_FORM_SCREEN == NullUtil.getInstance().NULL_OBJECT:
            ProgressCanvasFactory.PROGRESS_FORM_SCREEN = newProgressCanvas(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        return ProgressCanvas(JObject(ProgressCanvasFactory.PROGRESS_FORM_SCREEN))

proc getLazyInstance*(t: typedesc[ProgressCanvasFactory]): PaintableInterface {.discardable.} =
        return NullPaintable.getInstance()

