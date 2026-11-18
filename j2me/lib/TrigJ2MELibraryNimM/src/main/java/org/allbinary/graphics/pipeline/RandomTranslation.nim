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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    RandomTranslation* = ref object of JObject

proc newRandomTranslation*(): RandomTranslation
proc getInstance*(t: typedesc[RandomTranslation], vector: BasicArrayList, howMuch: int32): BasicArrayList {.discardable.}
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule
import org/allbinary/graphics/pipeline/BasicGraphicsPipeline as BasicGraphicsPipelineModule
export BasicGraphicsPipelineModule


proc initRandomTranslation*(this: RandomTranslation) =
    discard

proc newRandomTranslation*(): RandomTranslation =
    result = RandomTranslation()
    initRandomTranslation(result)

proc getInstance*(t: typedesc[RandomTranslation], vector: BasicArrayList, howMuch: int32): BasicArrayList {.discardable.} =
        let myRandomFactory: MyRandomFactory = MyRandomFactory.getInstance()
        var x: int32 = -myRandomFactory.getNextInt(howMuch)
        var y: int32 = myRandomFactory.getNextInt(howMuch)
        var graphicsPipe: BasicGraphicsPipeline = newBasicGraphicsPipeline(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(x, y)
        return graphicsPipe.getMatrix()

