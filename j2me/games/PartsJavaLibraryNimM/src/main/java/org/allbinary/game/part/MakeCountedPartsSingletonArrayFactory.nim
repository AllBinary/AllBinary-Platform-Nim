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
# package org.allbinary.game.part

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/part/PartInterface as PartInterfaceModule
export PartInterfaceModule

type
    MakeCountedPartsSingletonArrayFactory* = ref object of JObject
        logUtil*: LogUtil
        list*: BasicArrayList

proc newMakeCountedPartsSingletonArrayFactory*(): MakeCountedPartsSingletonArrayFactory
proc getInstance*(t: typedesc[MakeCountedPartsSingletonArrayFactory]): MakeCountedPartsSingletonArrayFactory {.discardable.}
method getUpdated*(this: MakeCountedPartsSingletonArrayFactory, partInterfaceArray: JArray[PartInterface]): JArray[PartInterface] {.base, discardable.}
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool as CountedPickedUpLayerInterfaceFactoryPoolModule
export CountedPickedUpLayerInterfaceFactoryPoolModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/game/part/CountedLayerInterfaceFactoryPart as CountedLayerInterfaceFactoryPartModule
export CountedLayerInterfaceFactoryPartModule

var MakeCountedPartsSingletonArrayFactory_instanceValue: MakeCountedPartsSingletonArrayFactory
var MakeCountedPartsSingletonArrayFactory_instanceSet = false
proc instance*(t: typedesc[MakeCountedPartsSingletonArrayFactory]): MakeCountedPartsSingletonArrayFactory =
    if not MakeCountedPartsSingletonArrayFactory_instanceSet:
        MakeCountedPartsSingletonArrayFactory_instanceSet = true
        MakeCountedPartsSingletonArrayFactory_instanceValue = newMakeCountedPartsSingletonArrayFactory()
    MakeCountedPartsSingletonArrayFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMakeCountedPartsSingletonArrayFactory(this: MakeCountedPartsSingletonArrayFactory) =
    this.logUtil = LogUtil.getInstance()
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance()
    discard

proc initMakeCountedPartsSingletonArrayFactory*(this: MakeCountedPartsSingletonArrayFactory) =
    this.initFieldsMakeCountedPartsSingletonArrayFactory()

proc newMakeCountedPartsSingletonArrayFactory*(): MakeCountedPartsSingletonArrayFactory =
    result = MakeCountedPartsSingletonArrayFactory()
    initMakeCountedPartsSingletonArrayFactory(result)

proc getInstance*(t: typedesc[MakeCountedPartsSingletonArrayFactory]): MakeCountedPartsSingletonArrayFactory {.discardable.} =
        return MakeCountedPartsSingletonArrayFactory.instance

method getUpdated*(this: MakeCountedPartsSingletonArrayFactory, partInterfaceArray: JArray[PartInterface]): JArray[PartInterface] {.base, discardable.} =
        this.list = newBasicArrayListD()
        block:
            var index: int32 = 0
            while index < partInterfaceArray.length:
                defer: index = index +% 1
                this.list.add(partInterfaceArray[index])
        let countedBasicArrayList: BasicArrayList = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        var layerInterfaceFactoryInterface: CountedPickedUpLayerInterfaceFactory = nil
        var size: int32 = countedBasicArrayList.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                layerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory(JObject(countedBasicArrayList.objectArray[index]))
                this.list.add(newCountedLayerInterfaceFactoryPart(0, layerInterfaceFactoryInterface))
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Total Parts: ")
        stringBuffer.appendint(this.list.size())
        stringBuffer.append(" Counted: ")
        stringBuffer.appendint(countedBasicArrayList.size())
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE)
        let newPartInterfaceArray: JArray[PartInterface] = newJArray[PartInterface](this.list.size(), default(PartInterface))
        let newSize: int32 = newPartInterfaceArray.length
        block:
            var index: int32 = 0
            while index < newSize:
                defer: index = index +% 1
                newPartInterfaceArray[index] = PartInterface(JObject(this.list.get(index)))
        return newPartInterfaceArray

