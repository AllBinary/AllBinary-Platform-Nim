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
# package org.allbinary.graphics.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule

type
    PaintableComposite* = ref object of Paintable
        paintableArray*: JArray[PaintableInterface]

proc newPaintableComposite*(paintableArray: JArray[PaintableInterface]): PaintableComposite
proc initPaintableComposite*(this: PaintableComposite, paintableArray: JArray[PaintableInterface])
method paint*(this: PaintableComposite, graphics: Graphics)
method paintThreed*(this: PaintableComposite, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsPaintableComposite(this: PaintableComposite) =
    
    discard

proc initPaintableComposite*(this: PaintableComposite, paintableArray: JArray[PaintableInterface]) =
        initPaintable(this)
        this.initFieldsPaintableComposite()
        this.paintableArray = paintableArray

proc newPaintableComposite*(paintableArray: JArray[PaintableInterface]): PaintableComposite =
    result = PaintableComposite()
    initPaintableComposite(result, paintableArray)

method paint*(this: PaintableComposite, graphics: Graphics) =
        block:
            var index: int32 = this.paintableArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.paintableArray[index].paint(graphics)

method paintThreed*(this: PaintableComposite, graphics: Graphics) =
        block:
            var index: int32 = this.paintableArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.paintableArray[index].paintThreed(graphics)

when declared(newPaintableCompositeHook1):
    newPaintableCompositeHook1 = proc (paintableArray: JArray[PaintableInterface]): Paintable = newPaintableComposite(paintableArray)

