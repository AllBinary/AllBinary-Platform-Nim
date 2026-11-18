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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/layer/LayerInterfaceFactoryInterface as LayerInterfaceFactoryInterfaceModule
export LayerInterfaceFactoryInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    LayerInterfaceFactory* = ref object of JObject
        logUtil*: LogUtil
        list*: BasicArrayList
        HASHTABLE_LABEL*: string

proc newLayerInterfaceFactory*(): LayerInterfaceFactory
proc getInstance*(t: typedesc[LayerInterfaceFactory]): LayerInterfaceFactory {.discardable.}
method init*(this: LayerInterfaceFactory) {.base.}
method getNexInstance*(this: LayerInterfaceFactory, hashtable: ABHashtable, x: int32, y: int32, z: int32): AllBinaryLayer {.base, discardable.}
method add*(this: LayerInterfaceFactory, layerInterfaceFactoryInterface: LayerInterfaceFactoryInterface) {.base.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/layer/Layer as LayerModule
export LayerModule

var LayerInterfaceFactory_SINGLETONValue: LayerInterfaceFactory
var LayerInterfaceFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[LayerInterfaceFactory]): LayerInterfaceFactory =
    if not LayerInterfaceFactory_SINGLETONSet:
        LayerInterfaceFactory_SINGLETONSet = true
        LayerInterfaceFactory_SINGLETONValue = newLayerInterfaceFactory()
    LayerInterfaceFactory_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsLayerInterfaceFactory(this: LayerInterfaceFactory) =
    this.logUtil = LogUtil.getInstance()
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance()
    this.HASHTABLE_LABEL = "Hashtable: "
    discard

proc initLayerInterfaceFactory*(this: LayerInterfaceFactory) =
    this.initFieldsLayerInterfaceFactory()

proc newLayerInterfaceFactory*(): LayerInterfaceFactory =
    result = LayerInterfaceFactory()
    initLayerInterfaceFactory(result)

proc getInstance*(t: typedesc[LayerInterfaceFactory]): LayerInterfaceFactory {.discardable.} =
        return LayerInterfaceFactory.SINGLETON

method init*(this: LayerInterfaceFactory) {.base.} =
        this.list = newBasicArrayListD()

method getNexInstance*(this: LayerInterfaceFactory, hashtable: ABHashtable, x: int32, y: int32, z: int32): AllBinaryLayer {.base, discardable.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        this.logUtil.putF(newStringMaker().append(this.HASHTABLE_LABEL).append(StringUtil.getInstance().toString(hashtable)).toString(), this, commonStrings.GET_INSTANCE)
        let typeInteger: int32 = jUnboxInteger(hashtable.get(JObject(JObject(Layer.ID))))
        let layerInterfaceFactoryInterface: LayerInterfaceFactoryInterface = LayerInterfaceFactoryInterface(JObject(this.list.objectArray[typeInteger.intValue() -% 1]))
        return layerInterfaceFactoryInterface.getNextInstance(hashtable, x, y, z)

method add*(this: LayerInterfaceFactory, layerInterfaceFactoryInterface: LayerInterfaceFactoryInterface) {.base.} =
        this.list.add(layerInterfaceFactoryInterface)

