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
import org/allbinary/game/ag/ai/ThrustAIVisitor as ThrustAIVisitorModule
export ThrustAIVisitorModule

type
    ThrustAIVisitorFactory* = ref object of JObject

proc newThrustAIVisitorFactory*(): ThrustAIVisitorFactory
proc getInstance*(t: typedesc[ThrustAIVisitorFactory]): ThrustAIVisitor {.discardable.}

var ThrustAIVisitorFactory_instanceValue: ThrustAIVisitor
var ThrustAIVisitorFactory_instanceSet = false
proc instance*(t: typedesc[ThrustAIVisitorFactory]): ThrustAIVisitor =
    if not ThrustAIVisitorFactory_instanceSet:
        ThrustAIVisitorFactory_instanceSet = true
        ThrustAIVisitorFactory_instanceValue = newThrustAIVisitor()
    ThrustAIVisitorFactory_instanceValue

proc initThrustAIVisitorFactory*(this: ThrustAIVisitorFactory) =
    discard

proc newThrustAIVisitorFactory*(): ThrustAIVisitorFactory =
    result = ThrustAIVisitorFactory()
    initThrustAIVisitorFactory(result)

proc getInstance*(t: typedesc[ThrustAIVisitorFactory]): ThrustAIVisitor {.discardable.} =
        return ThrustAIVisitorFactory.instance

