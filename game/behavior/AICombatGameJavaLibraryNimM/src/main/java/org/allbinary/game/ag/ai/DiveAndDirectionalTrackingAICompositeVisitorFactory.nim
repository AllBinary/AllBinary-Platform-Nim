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
# package org.allbinary.game.ag.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule
import org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI as DiveAndDirectionalTrackingAIModule
export DiveAndDirectionalTrackingAIModule

type
    DiveAndDirectionalTrackingAICompositeVisitorFactory* = ref object of JObject

proc newDiveAndDirectionalTrackingAICompositeVisitorFactory*(): DiveAndDirectionalTrackingAICompositeVisitorFactory
method getInstance*(this: DiveAndDirectionalTrackingAICompositeVisitorFactory, diveBombAI: DiveAndDirectionalTrackingAI): Visitor {.base, discardable.}


proc initDiveAndDirectionalTrackingAICompositeVisitorFactory*(this: DiveAndDirectionalTrackingAICompositeVisitorFactory) =
    discard

proc newDiveAndDirectionalTrackingAICompositeVisitorFactory*(): DiveAndDirectionalTrackingAICompositeVisitorFactory =
    result = DiveAndDirectionalTrackingAICompositeVisitorFactory()
    initDiveAndDirectionalTrackingAICompositeVisitorFactory(result)

method getInstance*(this: DiveAndDirectionalTrackingAICompositeVisitorFactory, diveBombAI: DiveAndDirectionalTrackingAI): Visitor {.base, discardable.} =
        return Visitor.getInstance()

