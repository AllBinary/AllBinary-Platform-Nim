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
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/layer/Layer as LayerModule
export LayerModule

type
    PaintableLayerComposite* = ref object of Paintable
        paintableArray*: JArray[Layer]

proc newPaintableLayerComposite*(paintableArray: JArray[Layer]): PaintableLayerComposite
proc initPaintableLayerComposite*(this: PaintableLayerComposite, paintableArray: JArray[Layer])
method paint*(this: PaintableLayerComposite, graphics: Graphics)
method paintThreed*(this: PaintableLayerComposite, graphics: Graphics)
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule


# Java field initializers run after the base initializer
proc initFieldsPaintableLayerComposite(this: PaintableLayerComposite) =
    
    discard

proc initPaintableLayerComposite*(this: PaintableLayerComposite, paintableArray: JArray[Layer]) =
        initPaintable(this)
        this.initFieldsPaintableLayerComposite()
        this.paintableArray = paintableArray

proc newPaintableLayerComposite*(paintableArray: JArray[Layer]): PaintableLayerComposite =
    result = PaintableLayerComposite()
    initPaintableLayerComposite(result, paintableArray)

method paint*(this: PaintableLayerComposite, graphics: Graphics) =
        block:
            var index: int32 = this.paintableArray.length
            while jPreDecrement(index) >= 0:
                this.paintableArray[index].paint(graphics)

method paintThreed*(this: PaintableLayerComposite, graphics: Graphics) =
        var paintableInterface: PaintableInterface = nil
        block:
            var index: int32 = this.paintableArray.length
            while jPreDecrement(index) >= 0:
                paintableInterface = PaintableInterface(JObject(this.paintableArray[index]))
                paintableInterface.paintThreed(graphics)

when declared(newPaintableLayerCompositeHook1):
    newPaintableLayerCompositeHook1 = proc (paintableArray: JArray[Layer]): Paintable = newPaintableLayerComposite(paintableArray)

