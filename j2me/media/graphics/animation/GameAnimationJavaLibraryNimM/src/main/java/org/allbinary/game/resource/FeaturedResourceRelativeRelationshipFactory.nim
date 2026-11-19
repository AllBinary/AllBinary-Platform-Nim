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
# package org.allbinary.game.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/game/resource/FeaturedResourceFactory as FeaturedResourceFactoryModule
export FeaturedResourceFactoryModule

type
    FeaturedResourceRelativeRelationshipFactory* = ref object of FeaturedResourceFactory
        basicArrayListUtil*: BasicArrayListUtil

proc newFeaturedResourceRelativeRelationshipFactory*(): FeaturedResourceRelativeRelationshipFactory
proc initFeaturedResourceRelativeRelationshipFactory*(this: FeaturedResourceRelativeRelationshipFactory)
proc getInstance*(t: typedesc[FeaturedResourceRelativeRelationshipFactory]): FeaturedResourceRelativeRelationshipFactory {.discardable.}
method getRelativeRelationshipList*(this: FeaturedResourceRelativeRelationshipFactory, resource: string, layer: AllBinaryLayer): BasicArrayList {.base, discardable.}
method duplicate*(this: FeaturedResourceRelativeRelationshipFactory, list: BasicArrayList, layer: AllBinaryLayer): BasicArrayList {.base, discardable.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/RelativeRelationship as RelativeRelationshipModule
export RelativeRelationshipModule
import org/allbinary/layer/relationship/RelativeLayerRelationship as RelativeLayerRelationshipModule
export RelativeLayerRelationshipModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface as ResourceRelativeRelationshipFactoryInterfaceModule
export ResourceRelativeRelationshipFactoryInterfaceModule

var FeaturedResourceRelativeRelationshipFactory_INSTANCEValue: FeaturedResourceRelativeRelationshipFactory
var FeaturedResourceRelativeRelationshipFactory_INSTANCESet = false
proc INSTANCE*(t: typedesc[FeaturedResourceRelativeRelationshipFactory]): FeaturedResourceRelativeRelationshipFactory =
    if not FeaturedResourceRelativeRelationshipFactory_INSTANCESet:
        FeaturedResourceRelativeRelationshipFactory_INSTANCESet = true
        FeaturedResourceRelativeRelationshipFactory_INSTANCEValue = newFeaturedResourceRelativeRelationshipFactory()
    FeaturedResourceRelativeRelationshipFactory_INSTANCEValue
proc `INSTANCE=`*(t: typedesc[FeaturedResourceRelativeRelationshipFactory], value: FeaturedResourceRelativeRelationshipFactory) =
    FeaturedResourceRelativeRelationshipFactory_INSTANCESet = true
    FeaturedResourceRelativeRelationshipFactory_INSTANCEValue = value

# Java field initializers run after the base initializer
proc initFieldsFeaturedResourceRelativeRelationshipFactory(this: FeaturedResourceRelativeRelationshipFactory) =
    this.basicArrayListUtil = BasicArrayListUtil.getInstance()
    discard

proc initFeaturedResourceRelativeRelationshipFactory*(this: FeaturedResourceRelativeRelationshipFactory) =
        initFeaturedResourceFactory(this)
        this.initFieldsFeaturedResourceRelativeRelationshipFactory()
        discard

proc newFeaturedResourceRelativeRelationshipFactory*(): FeaturedResourceRelativeRelationshipFactory =
    result = FeaturedResourceRelativeRelationshipFactory()
    initFeaturedResourceRelativeRelationshipFactory(result)

proc getInstance*(t: typedesc[FeaturedResourceRelativeRelationshipFactory]): FeaturedResourceRelativeRelationshipFactory {.discardable.} =
        return FeaturedResourceRelativeRelationshipFactory.INSTANCE

method getRelativeRelationshipList*(this: FeaturedResourceRelativeRelationshipFactory, resource: string, layer: AllBinaryLayer): BasicArrayList {.base, discardable.} =
        let featureReleaseList: BasicArrayList = this.getList()
        var size: int32 = this.getList().size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var featureInterface: ResourceRelativeRelationshipFactoryInterface = ResourceRelativeRelationshipFactoryInterface(JObject(featureReleaseList.objectArray[index]))
                if featureInterface.isFeature():
                    var list: BasicArrayList = featureInterface.getResourceRelativeRelationshipList(resource)
                    if (not jSame(list, this.basicArrayListUtil.getImmutableInstance())):
                        return this.duplicate(list, layer)
        raise newJException("Exception", newStringMaker().append("Not available for current feature selection or Resource: ").append(resource).toString())

method duplicate*(this: FeaturedResourceRelativeRelationshipFactory, list: BasicArrayList, layer: AllBinaryLayer): BasicArrayList {.base, discardable.} =
        let pointFactory: PointFactory = PointFactory.getInstance()
        let newList: BasicArrayList = newBasicArrayListD()
        let size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var relativeRelationship: RelativeRelationship = RelativeRelationship(JObject(list.objectArray[index]))
                newList.add(newRelativeLayerRelationship(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), BasicArrayListUtil.getInstance().getImmutableInstance()))
        return newList

when declared(newFeaturedResourceRelativeRelationshipFactoryHook0):
    newFeaturedResourceRelativeRelationshipFactoryHook0 = proc (): FeaturedResourceFactory = newFeaturedResourceRelativeRelationshipFactory()

