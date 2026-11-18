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
# package org.allbinary.layer.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    LayerManagerEvent* = ref object of AllBinaryEventObject
        layerInterface*: AllBinaryLayer
        crud*: string

proc newLayerManagerEvent*(layerManager: LayerManager, crud: string): LayerManagerEvent
proc initLayerManagerEvent*(this: LayerManagerEvent, layerManager: LayerManager, crud: string)
method getLayerInterface*(this: LayerManagerEvent): AllBinaryLayer {.base, discardable.}
method setLayerInterface*(this: LayerManagerEvent, layerInterface: AllBinaryLayer) {.base.}
method toString*(this: LayerManagerEvent): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


# Java field initializers run after the base initializer
proc initFieldsLayerManagerEvent(this: LayerManagerEvent) =
    this.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    
    discard

proc initLayerManagerEvent*(this: LayerManagerEvent, layerManager: LayerManager, crud: string) =
        initAllBinaryEventObject(this, layerManager)
        this.initFieldsLayerManagerEvent()
        this.crud = crud

proc newLayerManagerEvent*(layerManager: LayerManager, crud: string): LayerManagerEvent =
    result = LayerManagerEvent()
    initLayerManagerEvent(result, layerManager, crud)

method getLayerInterface*(this: LayerManagerEvent): AllBinaryLayer {.base, discardable.} =
        return this.layerInterface

method setLayerInterface*(this: LayerManagerEvent, layerInterface: AllBinaryLayer) {.base.} =
        this.layerInterface = layerInterface

method toString*(this: LayerManagerEvent): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("LayerManagerEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(this.getLayerInterface().toString())
        stringBuffer.append("\nCRUD: ")
        stringBuffer.append(this.crud)
        return stringBuffer.toString()

when declared(newLayerManagerEventHook2):
    newLayerManagerEventHook2 = proc (layerManager: LayerManager, crud: string): AllBinaryEventObject = newLayerManagerEvent(layerManager, crud)

