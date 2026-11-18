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
# package org.allbinary.game.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterfaceModule
export ArtificialIntelligenceInterfaceFactoryInterfaceModule

type
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory* = ref object of JObject
        list*: BasicArrayList

proc newArtificialIntelligenceInterfaceFactoryInterfaceFactory*(): ArtificialIntelligenceInterfaceFactoryInterfaceFactory
method clear*(this: ArtificialIntelligenceInterfaceFactoryInterfaceFactory) {.base.}
proc getInstance*(t: typedesc[ArtificialIntelligenceInterfaceFactoryInterfaceFactory]): ArtificialIntelligenceInterfaceFactoryInterfaceFactory {.discardable.}
method getInstanceFromCollection*(this: ArtificialIntelligenceInterfaceFactoryInterfaceFactory, hashtable: ABHashtable): ArtificialIntelligenceInterfaceFactoryInterface {.base, discardable.}
method add*(this: ArtificialIntelligenceInterfaceFactoryInterfaceFactory, artificialIntelligenceInterfaceFactoryInterface: ArtificialIntelligenceInterfaceFactoryInterface) {.base.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule

var ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONValue: ArtificialIntelligenceInterfaceFactoryInterfaceFactory
var ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[ArtificialIntelligenceInterfaceFactoryInterfaceFactory]): ArtificialIntelligenceInterfaceFactoryInterfaceFactory =
    if not ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONSet:
        ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONSet = true
        ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONValue = newArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[ArtificialIntelligenceInterfaceFactoryInterfaceFactory], value: ArtificialIntelligenceInterfaceFactoryInterfaceFactory) =
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONSet = true
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory(this: ArtificialIntelligenceInterfaceFactoryInterfaceFactory) =
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance()
    discard

proc initArtificialIntelligenceInterfaceFactoryInterfaceFactory*(this: ArtificialIntelligenceInterfaceFactoryInterfaceFactory) =
    this.initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory()

proc newArtificialIntelligenceInterfaceFactoryInterfaceFactory*(): ArtificialIntelligenceInterfaceFactoryInterfaceFactory =
    result = ArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    initArtificialIntelligenceInterfaceFactoryInterfaceFactory(result)

method clear*(this: ArtificialIntelligenceInterfaceFactoryInterfaceFactory) {.base.} =
        this.list = newBasicArrayListD()

proc getInstance*(t: typedesc[ArtificialIntelligenceInterfaceFactoryInterfaceFactory]): ArtificialIntelligenceInterfaceFactoryInterfaceFactory {.discardable.} =
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON

method getInstanceFromCollection*(this: ArtificialIntelligenceInterfaceFactoryInterfaceFactory, hashtable: ABHashtable): ArtificialIntelligenceInterfaceFactoryInterface {.base, discardable.} =
        let typeInteger: int32 = jUnboxInteger(hashtable.get(JObject(JObject(BasicAI.ID))))
        var `type`: int32 = typeInteger.intValue()
        let artificialIntelligenceInterfaceFactoryInterface: ArtificialIntelligenceInterfaceFactoryInterface = ArtificialIntelligenceInterfaceFactoryInterface(JObject(this.list.objectArray[`type` -% 1]))
        return artificialIntelligenceInterfaceFactoryInterface

method add*(this: ArtificialIntelligenceInterfaceFactoryInterfaceFactory, artificialIntelligenceInterfaceFactoryInterface: ArtificialIntelligenceInterfaceFactoryInterface) {.base.} =
        this.list.add(artificialIntelligenceInterfaceFactoryInterface)

