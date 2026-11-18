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
# package org.allbinary.graphics.pipeline

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    RandomRotationFactory* = ref object of JObject
        myRandomFactory*: MyRandomFactory
        angleFactory*: AngleFactory

proc newRandomRotationFactory*(): RandomRotationFactory
proc getInstance*(t: typedesc[RandomRotationFactory]): RandomRotationFactory {.discardable.}
method getInstanceList*(this: RandomRotationFactory, vector: BasicArrayList, howMuch: int32): BasicArrayList {.base, discardable.}
method getNextRandomAngle*(this: RandomRotationFactory, howMuch: int32): int32 {.base, discardable.}
import org/allbinary/graphics/pipeline/BasicGraphicsPipeline as BasicGraphicsPipelineModule
export BasicGraphicsPipelineModule

var RandomRotationFactory_instanceValue: RandomRotationFactory
var RandomRotationFactory_instanceSet = false
proc instance*(t: typedesc[RandomRotationFactory]): RandomRotationFactory =
    if not RandomRotationFactory_instanceSet:
        RandomRotationFactory_instanceSet = true
        RandomRotationFactory_instanceValue = newRandomRotationFactory()
    RandomRotationFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsRandomRotationFactory(this: RandomRotationFactory) =
    this.myRandomFactory = MyRandomFactory.getInstance()
    this.angleFactory = AngleFactory.getInstance()
    discard

proc initRandomRotationFactory*(this: RandomRotationFactory) =
    this.initFieldsRandomRotationFactory()

proc newRandomRotationFactory*(): RandomRotationFactory =
    result = RandomRotationFactory()
    initRandomRotationFactory(result)

proc getInstance*(t: typedesc[RandomRotationFactory]): RandomRotationFactory {.discardable.} =
        return RandomRotationFactory.instance

method getInstanceList*(this: RandomRotationFactory, vector: BasicArrayList, howMuch: int32): BasicArrayList {.base, discardable.} =
        let graphicsPipe: BasicGraphicsPipeline = newBasicGraphicsPipeline(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.rotateToAngle(this.angleFactory.getAt(this.getNextRandomAngle(howMuch)))
        return graphicsPipe.getMatrix()

method getNextRandomAngle*(this: RandomRotationFactory, howMuch: int32): int32 {.base, discardable.} =
        return this.myRandomFactory.getNextInt(howMuch *% 10)

