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
    TextItemUserIdentifierVisitor* = ref object of Visitor
        logUtil*: LogUtil

proc newTextItemUserIdentifierVisitor*(): TextItemUserIdentifierVisitor
proc initTextItemUserIdentifierVisitor*(this: TextItemUserIdentifierVisitor)
method visit*(this: TextItemUserIdentifierVisitor, anyType: JObject): JObject {.discardable.}
method isLetter*(this: TextItemUserIdentifierVisitor, charValue: uint16): bool {.base, discardable.}
import org/allbinary/game/input/TextNotificationUtil as TextNotificationUtilModule
export TextNotificationUtilModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsTextItemUserIdentifierVisitor(this: TextItemUserIdentifierVisitor) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initTextItemUserIdentifierVisitor*(this: TextItemUserIdentifierVisitor) =
        initVisitor(this)
        this.initFieldsTextItemUserIdentifierVisitor()
        discard

proc newTextItemUserIdentifierVisitor*(): TextItemUserIdentifierVisitor =
    result = TextItemUserIdentifierVisitor()
    initTextItemUserIdentifierVisitor(result)

method visit*(this: TextItemUserIdentifierVisitor, anyType: JObject): JObject {.discardable.} =
        var value: string = jstr(anyType)
        if jLength(value) < 2:
            var charValue: uint16 = jCharAt(value, 0)
            let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
            if stringValidationUtil.isNumber(value):
                return BooleanFactory.getInstance().TRUE
            elif this.isLetter(charValue):
                return BooleanFactory.getInstance().TRUE
            else:
                try:
                    TextNotificationUtil.getInstance().fireError("Only Letters & Numbers Allowed")
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    let commonStrings: CommonStrings = CommonStrings.getInstance()
                    this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e)
                return BooleanFactory.getInstance().FALSE
        else:
            return BooleanFactory.getInstance().FALSE

method isLetter*(this: TextItemUserIdentifierVisitor, charValue: uint16): bool {.base, discardable.} =
        let value: int32 = int32(charValue)
        return (value > 64 and value < 91) or (value > 96 and value < 123)

when declared(newTextItemUserIdentifierVisitorHook0):
    newTextItemUserIdentifierVisitorHook0 = proc (): Visitor = newTextItemUserIdentifierVisitor()

