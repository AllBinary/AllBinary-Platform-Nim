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
import org/allbinary/game/ag/ai/LastKeyAIVisitor as LastKeyAIVisitorModule
export LastKeyAIVisitorModule

type
    LastKeyAIVisitorFactory* = ref object of JObject

proc newLastKeyAIVisitorFactory*(): LastKeyAIVisitorFactory
proc getInstance*(t: typedesc[LastKeyAIVisitorFactory]): LastKeyAIVisitor {.discardable.}

var LastKeyAIVisitorFactory_instanceValue: LastKeyAIVisitor
var LastKeyAIVisitorFactory_instanceSet = false
proc instance*(t: typedesc[LastKeyAIVisitorFactory]): LastKeyAIVisitor =
    if not LastKeyAIVisitorFactory_instanceSet:
        LastKeyAIVisitorFactory_instanceSet = true
        LastKeyAIVisitorFactory_instanceValue = newLastKeyAIVisitor()
    LastKeyAIVisitorFactory_instanceValue

proc initLastKeyAIVisitorFactory*(this: LastKeyAIVisitorFactory) =
    discard

proc newLastKeyAIVisitorFactory*(): LastKeyAIVisitorFactory =
    result = LastKeyAIVisitorFactory()
    initLastKeyAIVisitorFactory(result)

proc getInstance*(t: typedesc[LastKeyAIVisitorFactory]): LastKeyAIVisitor {.discardable.} =
        return LastKeyAIVisitorFactory.instance

