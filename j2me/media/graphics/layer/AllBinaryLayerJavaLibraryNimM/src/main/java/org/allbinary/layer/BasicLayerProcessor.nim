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
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    BasicLayerProcessor* = ref object of JObject
        logUtil*: LogUtil
        list*: BasicArrayList

proc newBasicLayerProcessor*(): BasicLayerProcessor
proc initBasicLayerProcessor*(this: BasicLayerProcessor)
method add*(this: BasicLayerProcessor, layerInterface: AllBinaryLayer) {.base.}
method process*(this: BasicLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager) {.base.}
method getList*(this: BasicLayerProcessor): BasicArrayList {.base, discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var BasicLayerProcessor_NULL_LAYER_PROCESSORValue: BasicLayerProcessor
var BasicLayerProcessor_NULL_LAYER_PROCESSORSet = false
proc NULL_LAYER_PROCESSOR*(t: typedesc[BasicLayerProcessor]): BasicLayerProcessor =
    if not BasicLayerProcessor_NULL_LAYER_PROCESSORSet:
        BasicLayerProcessor_NULL_LAYER_PROCESSORSet = true
        BasicLayerProcessor_NULL_LAYER_PROCESSORValue = newBasicLayerProcessor()
    BasicLayerProcessor_NULL_LAYER_PROCESSORValue

# Java field initializers run after the base initializer
proc initFieldsBasicLayerProcessor(this: BasicLayerProcessor) =
    this.logUtil = LogUtil.getInstance()
    this.list = newBasicArrayListD()
    discard

proc initBasicLayerProcessor*(this: BasicLayerProcessor) =
        this.initFieldsBasicLayerProcessor()
        discard

proc newBasicLayerProcessor*(): BasicLayerProcessor =
    result = BasicLayerProcessor()
    initBasicLayerProcessor(result)

method add*(this: BasicLayerProcessor, layerInterface: AllBinaryLayer) {.base.} =
        if (not this.list.contains(layerInterface)):
            this.list.add(layerInterface)

method process*(this: BasicLayerProcessor, allBinaryLayerManager: AllBinaryLayerManager) {.base.} =
        raise newJException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED)

method getList*(this: BasicLayerProcessor): BasicArrayList {.base, discardable.} =
        return this.list

