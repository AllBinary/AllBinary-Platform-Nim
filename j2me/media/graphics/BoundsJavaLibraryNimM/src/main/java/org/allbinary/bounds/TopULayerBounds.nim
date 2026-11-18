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
    TopULayerBounds* = ref object of LayerBounds

proc newTopULayerBounds*(rectangle: Rectangle): TopULayerBounds
proc initTopULayerBounds*(this: TopULayerBounds, rectangle: Rectangle)
method visit*(this: TopULayerBounds, boundsVisitorInterface: BoundsVisitorInterface)


proc initTopULayerBounds*(this: TopULayerBounds, rectangle: Rectangle) =
        initLayerBounds(this, rectangle)

proc newTopULayerBounds*(rectangle: Rectangle): TopULayerBounds =
    result = TopULayerBounds()
    initTopULayerBounds(result, rectangle)

method visit*(this: TopULayerBounds, boundsVisitorInterface: BoundsVisitorInterface) =
        if boundsVisitorInterface.getX() > this.rectangle.getMaxX():
            boundsVisitorInterface.maxX()
        if boundsVisitorInterface.getX() < this.rectangle.getPoint().getX():
            boundsVisitorInterface.minX()
        if boundsVisitorInterface.getY() < this.rectangle.getPoint().getY():
            boundsVisitorInterface.minY()

when declared(newTopULayerBoundsHook1):
    newTopULayerBoundsHook1 = proc (rectangle: Rectangle): LayerBounds = newTopULayerBounds(rectangle)

