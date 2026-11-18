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
import org/allbinary/bounds/event/BoundsChangeEvent as BoundsChangeEventModule
export BoundsChangeEventModule
import org/allbinary/bounds/event/BoundsChangeEventListener as BoundsChangeEventListenerModule
export BoundsChangeEventListenerModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/bounds/BoundsVisitorInterface as BoundsVisitorInterfaceModule
export BoundsVisitorInterfaceModule

type
    LayerBounds* = ref object of BoundsChangeEventListener
        logUtil*: LogUtil
        rectangle*: Rectangle

proc newLayerBounds*(rectangle: Rectangle): LayerBounds
proc initLayerBounds*(this: LayerBounds, rectangle: Rectangle)
method getRectangleP*(this: LayerBounds): Rectangle {.base, discardable.}
method visit*(this: LayerBounds, boundsVisitorInterface: BoundsVisitorInterface) {.base.}
method onEvent*(this: LayerBounds, eventObject: AllBinaryEventObject)
method onBoundsChangeEvent*(this: LayerBounds, boundsChangeEvent: BoundsChangeEvent)
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule


# Java field initializers run after the base initializer
proc initFieldsLayerBounds(this: LayerBounds) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initLayerBounds*(this: LayerBounds, rectangle: Rectangle) =
        this.initFieldsLayerBounds()
        this.rectangle = rectangle

proc newLayerBounds*(rectangle: Rectangle): LayerBounds =
    result = LayerBounds()
    initLayerBounds(result, rectangle)

method getRectangleP*(this: LayerBounds): Rectangle {.base, discardable.} =
        return this.rectangle

method visit*(this: LayerBounds, boundsVisitorInterface: BoundsVisitorInterface) {.base.} =
        discard

method onEvent*(this: LayerBounds, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onBoundsChangeEvent*(this: LayerBounds, boundsChangeEvent: BoundsChangeEvent) =
        this.rectangle = boundsChangeEvent.getRectangle()

