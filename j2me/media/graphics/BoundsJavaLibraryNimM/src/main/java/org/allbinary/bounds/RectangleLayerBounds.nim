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
# package org.allbinary.bounds

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/bounds/LayerBounds as LayerBoundsModule
export LayerBoundsModule
import org/allbinary/bounds/BoundsVisitorInterface as BoundsVisitorInterfaceModule
export BoundsVisitorInterfaceModule

type
    RectangleLayerBounds* = ref object of LayerBounds

proc newRectangleLayerBounds*(rectangle: Rectangle): RectangleLayerBounds
proc initRectangleLayerBounds*(this: RectangleLayerBounds, rectangle: Rectangle)
method visit*(this: RectangleLayerBounds, boundsVisitorInterface: BoundsVisitorInterface)


proc initRectangleLayerBounds*(this: RectangleLayerBounds, rectangle: Rectangle) =
        initLayerBounds(this, rectangle)

proc newRectangleLayerBounds*(rectangle: Rectangle): RectangleLayerBounds =
    result = RectangleLayerBounds()
    initRectangleLayerBounds(result, rectangle)

method visit*(this: RectangleLayerBounds, boundsVisitorInterface: BoundsVisitorInterface) =
        if boundsVisitorInterface.getX() > this.rectangle.getMaxX():
            boundsVisitorInterface.maxX()
        if boundsVisitorInterface.getY() > this.rectangle.getMaxY():
            boundsVisitorInterface.maxY()
        if boundsVisitorInterface.getX() < this.rectangle.getPoint().getX():
            boundsVisitorInterface.minX()
        if boundsVisitorInterface.getY() < this.rectangle.getPoint().getY():
            boundsVisitorInterface.minY()

when declared(newRectangleLayerBoundsHook1):
    newRectangleLayerBoundsHook1 = proc (rectangle: Rectangle): LayerBounds = newRectangleLayerBounds(rectangle)

