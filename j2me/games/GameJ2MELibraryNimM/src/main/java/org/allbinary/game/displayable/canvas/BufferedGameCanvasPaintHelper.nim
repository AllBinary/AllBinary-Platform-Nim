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
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/graphics/paint/ProcessPaintable as ProcessPaintableModule
export ProcessPaintableModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    BufferedGameCanvasPaintHelper* = ref object of ProcessPaintable
        gameCanvas*: Canvas
        offScreenImage*: JArray[Image]
        previousImage*: Image
        circularIndexUtil*: CircularIndexUtil
        drawCircularIndexUtil*: CircularIndexUtil
        anchor*: int32

proc newBufferedGameCanvasPaintHelper*(gameCanvas: AllBinaryGameCanvas): BufferedGameCanvasPaintHelper
proc initBufferedGameCanvasPaintHelper*(this: BufferedGameCanvasPaintHelper, gameCanvas: AllBinaryGameCanvas)
method process*(this: BufferedGameCanvasPaintHelper)
method paint*(this: BufferedGameCanvasPaintHelper, graphics: Graphics)
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule

var BufferedGameCanvasPaintHelper_MAX_IMAGESValue: int32
var BufferedGameCanvasPaintHelper_MAX_IMAGESSet = false
proc MAX_IMAGES*(t: typedesc[BufferedGameCanvasPaintHelper]): int32 =
    if not BufferedGameCanvasPaintHelper_MAX_IMAGESSet:
        BufferedGameCanvasPaintHelper_MAX_IMAGESSet = true
        BufferedGameCanvasPaintHelper_MAX_IMAGESValue = 4
    BufferedGameCanvasPaintHelper_MAX_IMAGESValue

# Java field initializers run after the base initializer
proc initFieldsBufferedGameCanvasPaintHelper(this: BufferedGameCanvasPaintHelper) =
    this.gameCanvas = NullCanvas.NULL_CANVASStatic
    this.offScreenImage = newJArray[Image](BufferedGameCanvasPaintHelper.MAX_IMAGES, default(Image))
    this.previousImage = NullImage.NULL_IMAGEStatic
    this.circularIndexUtil = CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper.MAX_IMAGES)
    this.drawCircularIndexUtil = CircularIndexUtil.createInstanceAt(BufferedGameCanvasPaintHelper.MAX_IMAGES -% 1, BufferedGameCanvasPaintHelper.MAX_IMAGES)
    this.anchor = Anchor.TOP_LEFT
    discard

proc initBufferedGameCanvasPaintHelper*(this: BufferedGameCanvasPaintHelper, gameCanvas: AllBinaryGameCanvas) =
        initProcessPaintable(this)
        this.initFieldsBufferedGameCanvasPaintHelper()
        raise newJException("Exception", "No Longer Used")

proc newBufferedGameCanvasPaintHelper*(gameCanvas: AllBinaryGameCanvas): BufferedGameCanvasPaintHelper =
    result = BufferedGameCanvasPaintHelper()
    initBufferedGameCanvasPaintHelper(result, gameCanvas)

method process*(this: BufferedGameCanvasPaintHelper) =
        let myCanvas: MyCanvas = (MyCanvas(JObject(this.gameCanvas)))
        myCanvas.draw(this.offScreenImage[this.circularIndexUtil.getIndex()].getGraphics())
        this.circularIndexUtil.next()
        this.drawCircularIndexUtil.next()

method paint*(this: BufferedGameCanvasPaintHelper, graphics: Graphics) =
        this.previousImage = this.offScreenImage[this.drawCircularIndexUtil.getIndex()]
        graphics.drawImage(this.previousImage, 0, 0, this.anchor)

when declared(newBufferedGameCanvasPaintHelperHook1):
    newBufferedGameCanvasPaintHelperHook1 = proc (gameCanvas: AllBinaryGameCanvas): ProcessPaintable = newBufferedGameCanvasPaintHelper(gameCanvas)

