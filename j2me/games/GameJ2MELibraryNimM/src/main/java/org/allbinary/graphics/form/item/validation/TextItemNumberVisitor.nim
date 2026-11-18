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
# package org.allbinary.graphics.form.item.validation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule

type
    TextItemNumberVisitor* = ref object of Visitor
        logUtil*: LogUtil

proc newTextItemNumberVisitor*(): TextItemNumberVisitor
proc initTextItemNumberVisitor*(this: TextItemNumberVisitor)
method visit*(this: TextItemNumberVisitor, anyType: JObject): JObject {.discardable.}
import org/allbinary/game/input/TextNotificationUtil as TextNotificationUtilModule
export TextNotificationUtilModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsTextItemNumberVisitor(this: TextItemNumberVisitor) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initTextItemNumberVisitor*(this: TextItemNumberVisitor) =
        initVisitor(this)
        this.initFieldsTextItemNumberVisitor()
        discard

proc newTextItemNumberVisitor*(): TextItemNumberVisitor =
    result = TextItemNumberVisitor()
    initTextItemNumberVisitor(result)

method visit*(this: TextItemNumberVisitor, anyType: JObject): JObject {.discardable.} =
        var value: string = jstr(anyType)
        if jLength(value) < 2:
            let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
            if stringValidationUtil.isNumber(value):
                return BooleanFactory.getInstance().TRUE
            else:
                try:
                    TextNotificationUtil.getInstance().fireError("Numbers Only")
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    let commonStrings: CommonStrings = CommonStrings.getInstance()
                    this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
                return BooleanFactory.getInstance().FALSE
        else:
            return BooleanFactory.getInstance().FALSE

when declared(newTextItemNumberVisitorHook0):
    newTextItemNumberVisitorHook0 = proc (): Visitor = newTextItemNumberVisitor()

