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
# package org.allbinary.game.tracking

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    TrackingEvent* = ref object of AllBinaryEventObject
        layerInterface*: AllBinaryLayer

proc newTrackingEvent*(allBinaryLayerInterface: JObject): TrackingEvent
proc initTrackingEvent*(this: TrackingEvent, allBinaryLayerInterface: JObject)
method init*(this: TrackingEvent, anyType: JObject) {.base.}
method getLayerInterface*(this: TrackingEvent): AllBinaryLayer {.base, discardable.}
method setLayerInterface*(this: TrackingEvent, layerInterface: AllBinaryLayer) {.base.}
method setLayerInterfaceForCircularStaticPool*(this: TrackingEvent, layerInterface: AllBinaryLayer) {.base.}
method toString*(this: TrackingEvent): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/game/tracking/TrackingEventHandler as TrackingEventHandlerModule
export TrackingEventHandlerModule


# Java field initializers run after the base initializer
proc initFieldsTrackingEvent(this: TrackingEvent) =
    this.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    discard

proc initTrackingEvent*(this: TrackingEvent, allBinaryLayerInterface: JObject) =
        initAllBinaryEventObject(this, allBinaryLayerInterface)
        this.initFieldsTrackingEvent()
        if (not jSame(allBinaryLayerInterface, TrackingEventHandler.getInstance())):
            this.setLayerInterface(AllBinaryLayer(JObject(allBinaryLayerInterface)))

proc newTrackingEvent*(allBinaryLayerInterface: JObject): TrackingEvent =
    result = TrackingEvent()
    initTrackingEvent(result, allBinaryLayerInterface)

method init*(this: TrackingEvent, anyType: JObject) {.base.} =
        this.setSource(anyType)

method getLayerInterface*(this: TrackingEvent): AllBinaryLayer {.base, discardable.} =
        return this.layerInterface

method setLayerInterface*(this: TrackingEvent, layerInterface: AllBinaryLayer) {.base.} =
        this.layerInterface = layerInterface

method setLayerInterfaceForCircularStaticPool*(this: TrackingEvent, layerInterface: AllBinaryLayer) {.base.} =
        this.layerInterface = layerInterface

method toString*(this: TrackingEvent): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("TrackingEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(this.layerInterface.toString())
        return stringBuffer.toString()

when declared(newTrackingEventHook1):
    newTrackingEventHook1 = proc (allBinaryLayerInterface: JObject): AllBinaryEventObject = newTrackingEvent(allBinaryLayerInterface)

