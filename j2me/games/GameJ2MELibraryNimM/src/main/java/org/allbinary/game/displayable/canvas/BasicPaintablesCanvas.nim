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
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/paint/ColorFillBasePaintable as ColorFillBasePaintableModule
export ColorFillBasePaintableModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/game/displayable/canvas/GameCommandCanvas as GameCommandCanvasModule
export GameCommandCanvasModule

type
    BasicPaintablesCanvas* = ref object of GameCommandCanvas
        paintableArray*: JArray[Paintable]
        colorFillPaintable*: ColorFillBasePaintable

proc newBasicPaintablesCanvas*(cmdListener: CommandListener, name: string, allBinaryGameLayerManager: AllBinaryGameLayerManager, paintableArray: JArray[Paintable]): BasicPaintablesCanvas
proc initBasicPaintablesCanvas*(this: BasicPaintablesCanvas, cmdListener: CommandListener, name: string, allBinaryGameLayerManager: AllBinaryGameLayerManager, paintableArray: JArray[Paintable])
method paint*(this: BasicPaintablesCanvas, graphics: Graphics)
import org/allbinary/game/paint/ColorFillPaintableFactory as ColorFillPaintableFactoryModule
export ColorFillPaintableFactoryModule


# Java field initializers run after the base initializer
proc initFieldsBasicPaintablesCanvas(this: BasicPaintablesCanvas) =
    
    
    discard

proc initBasicPaintablesCanvas*(this: BasicPaintablesCanvas, cmdListener: CommandListener, name: string, allBinaryGameLayerManager: AllBinaryGameLayerManager, paintableArray: JArray[Paintable]) =
        initGameCommandCanvas(this, cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        this.initFieldsBasicPaintablesCanvas()
        this.paintableArray = paintableArray
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)

proc newBasicPaintablesCanvas*(cmdListener: CommandListener, name: string, allBinaryGameLayerManager: AllBinaryGameLayerManager, paintableArray: JArray[Paintable]): BasicPaintablesCanvas =
    result = BasicPaintablesCanvas()
    initBasicPaintablesCanvas(result, cmdListener, name, allBinaryGameLayerManager, paintableArray)

method paint*(this: BasicPaintablesCanvas, graphics: Graphics) =
        this.colorFillPaintable.paint(graphics)
        graphics.setColor(this.foregroundColor)
        block:
            var index: int32 = this.paintableArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.paintableArray[index].paint(graphics)
        jSuperStatement(procCall GameCommandCanvas(this).paint(graphics))

when declared(newBasicPaintablesCanvasHook4):
    newBasicPaintablesCanvasHook4 = proc (cmdListener: CommandListener, name: string, allBinaryGameLayerManager: AllBinaryGameLayerManager, paintableArray: JArray[Paintable]): GameCommandCanvas = newBasicPaintablesCanvas(cmdListener, name, allBinaryGameLayerManager, paintableArray)

