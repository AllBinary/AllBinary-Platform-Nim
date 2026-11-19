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
import java/lang/Integer as IntegerModule
export IntegerModule
import java/util/Enumeration as EnumerationModule
export EnumerationModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/EnumerationUtil as EnumerationUtilModule
export EnumerationUtilModule

type
    LevelLayersFinder* = ref object of JObject
        enumerationUtil*: EnumerationUtil

proc newLevelLayersFinder*(): LevelLayersFinder
proc getInstance*(t: typedesc[LevelLayersFinder]): LevelLayersFinder {.discardable.}
method get*(this: LevelLayersFinder, hashtable: ABHashtable): BasicArrayList {.base, discardable.}
import org/allbinary/layer/Layer as LayerModule
export LayerModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var LevelLayersFinder_instanceValue: LevelLayersFinder
var LevelLayersFinder_instanceSet = false
proc instance*(t: typedesc[LevelLayersFinder]): LevelLayersFinder =
    if not LevelLayersFinder_instanceSet:
        LevelLayersFinder_instanceSet = true
        LevelLayersFinder_instanceValue = newLevelLayersFinder()
    LevelLayersFinder_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLevelLayersFinder(this: LevelLayersFinder) =
    this.enumerationUtil = EnumerationUtil.getInstance()
    discard

proc initLevelLayersFinder*(this: LevelLayersFinder) =
    this.initFieldsLevelLayersFinder()

proc newLevelLayersFinder*(): LevelLayersFinder =
    result = LevelLayersFinder()
    initLevelLayersFinder(result)

proc getInstance*(t: typedesc[LevelLayersFinder]): LevelLayersFinder {.discardable.} =
        return LevelLayersFinder.instance

method get*(this: LevelLayersFinder, hashtable: ABHashtable): BasicArrayList {.base, discardable.} =
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        let list: BasicArrayList = newBasicArrayListD()
        let enumeration: Enumeration = hashtable.keys()
        var layerHashtableCanBeNull: ABHashtable = nil
        var integerCanBeNull: int32 = 0
        var cachedIntegerCanBeNull: int32 = 0
        while this.enumerationUtil.hasMoreElements(enumeration):
            layerHashtableCanBeNull = ABHashtable(JObject(hashtable.get(JObject(JObject(this.enumerationUtil.nextElement(enumeration))))))
            integerCanBeNull = jUnboxInteger(layerHashtableCanBeNull.get(JObject(JObject(Layer.ID))))
            cachedIntegerCanBeNull = smallIntegerSingletonFactory.getAt(integerCanBeNull.intValue())
            if (not list.contains(cachedIntegerCanBeNull)):
                list.add(cachedIntegerCanBeNull)
        return list

