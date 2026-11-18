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
import org/allbinary/game/displayable/canvas/DemoCanvas as DemoCanvasModule
export DemoCanvasModule

type
    DemoCanvasProgressUtil* = ref object of JObject

proc newDemoCanvasProgressUtil*(): DemoCanvasProgressUtil
proc showProgress*(t: typedesc[DemoCanvasProgressUtil], demoCanvas: DemoCanvas)
proc showProgressOptionallyInTheBackground*(t: typedesc[DemoCanvasProgressUtil], demoCanvas: DemoCanvas, background: bool)
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/graphics/paint/PaintableComposite as PaintableCompositeModule
export PaintableCompositeModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule


proc initDemoCanvasProgressUtil*(this: DemoCanvasProgressUtil) =
    discard

proc newDemoCanvasProgressUtil*(): DemoCanvasProgressUtil =
    result = DemoCanvasProgressUtil()
    initDemoCanvasProgressUtil(result)

proc showProgress*(t: typedesc[DemoCanvasProgressUtil], demoCanvas: DemoCanvas) =
        DemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas, false)

proc showProgressOptionallyInTheBackground*(t: typedesc[DemoCanvasProgressUtil], demoCanvas: DemoCanvas, background: bool) =
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.startBackground(background)
        var paintableArray: JArray[PaintableInterface] = newJArray[PaintableInterface](2, default(PaintableInterface))
        paintableArray[0] = progressCanvas
        paintableArray[1] = demoCanvas.getDefaultPaintableInterface()
        demoCanvas.setDefaultPaintableInterface(newPaintableComposite(paintableArray))
        demoCanvas.setPaintableInterface(demoCanvas.getDefaultPaintableInterface())

