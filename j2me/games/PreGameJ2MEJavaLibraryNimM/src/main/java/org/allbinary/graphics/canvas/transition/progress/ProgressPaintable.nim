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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule

type
    ProgressPaintable* = ref object of Paintable
        progressCanvas*: ProgressCanvas

proc newProgressPaintable*(progressCanvas: ProgressCanvas): ProgressPaintable
proc initProgressPaintable*(this: ProgressPaintable, progressCanvas: ProgressCanvas)
method paint*(this: ProgressPaintable, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsProgressPaintable(this: ProgressPaintable) =
    
    discard

proc initProgressPaintable*(this: ProgressPaintable, progressCanvas: ProgressCanvas) =
        initPaintable(this)
        this.initFieldsProgressPaintable()
        this.progressCanvas = progressCanvas

proc newProgressPaintable*(progressCanvas: ProgressCanvas): ProgressPaintable =
    result = ProgressPaintable()
    initProgressPaintable(result, progressCanvas)

method paint*(this: ProgressPaintable, graphics: Graphics) =
        this.progressCanvas.paint2(graphics)

when declared(newProgressPaintableHook1):
    newProgressPaintableHook1 = proc (progressCanvas: ProgressCanvas): Paintable = newProgressPaintable(progressCanvas)

