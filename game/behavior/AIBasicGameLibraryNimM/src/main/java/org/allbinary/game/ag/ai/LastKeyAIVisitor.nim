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
import java/lang/Boolean as BooleanModule
export BooleanModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule

type
    LastKeyAIVisitor* = ref object of Visitor
        logUtil*: LogUtil
        TRUE*: bool

proc newLastKeyAIVisitor*(): LastKeyAIVisitor
proc initLastKeyAIVisitor*(this: LastKeyAIVisitor)
method visit*(this: LastKeyAIVisitor, anyType: JObject): JObject {.discardable.}
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsLastKeyAIVisitor(this: LastKeyAIVisitor) =
    this.logUtil = LogUtil.getInstance()
    this.TRUE = BooleanFactory.getInstance().TRUE
    discard

proc initLastKeyAIVisitor*(this: LastKeyAIVisitor) =
        initVisitor(this)
        this.initFieldsLastKeyAIVisitor()
        discard

proc newLastKeyAIVisitor*(): LastKeyAIVisitor =
    result = LastKeyAIVisitor()
    initLastKeyAIVisitor(result)

method visit*(this: LastKeyAIVisitor, anyType: JObject): JObject {.discardable.} =
        try:
            var basicAI: BasicAI = BasicAI(JObject(anyType))
            var key: int32 = basicAI.getLastKey()
            if key != -1:
                basicAI.processKeyAI(key)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
        return this.TRUE

when declared(newLastKeyAIVisitorHook0):
    newLastKeyAIVisitorHook0 = proc (): Visitor = newLastKeyAIVisitor()

