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
    ThrustAIVisitor* = ref object of Visitor
        logUtil*: LogUtil
        TRUE*: bool

proc newThrustAIVisitor*(): ThrustAIVisitor
proc initThrustAIVisitor*(this: ThrustAIVisitor)
method visit*(this: ThrustAIVisitor, anyType: JObject): JObject {.discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsThrustAIVisitor(this: ThrustAIVisitor) =
    this.logUtil = LogUtil.getInstance()
    this.TRUE = BooleanFactory.getInstance().TRUE
    discard

proc initThrustAIVisitor*(this: ThrustAIVisitor) =
        initVisitor(this)
        this.initFieldsThrustAIVisitor()
        discard

proc newThrustAIVisitor*(): ThrustAIVisitor =
    result = ThrustAIVisitor()
    initThrustAIVisitor(result)

method visit*(this: ThrustAIVisitor, anyType: JObject): JObject {.discardable.} =
        try:
            var basicAI: BasicAI = BasicAI(JObject(anyType))
            basicAI.processKeyAI(Canvas.UP)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
        return this.TRUE

when declared(newThrustAIVisitorHook0):
    newThrustAIVisitorHook0 = proc (): Visitor = newThrustAIVisitor()

