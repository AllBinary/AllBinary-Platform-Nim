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
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule

type
    TextItemVisitor* = ref object of Visitor

proc newTextItemVisitor*(): TextItemVisitor
proc initTextItemVisitor*(this: TextItemVisitor)
method visit*(this: TextItemVisitor, anyType: JObject): JObject {.discardable.}
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule


proc initTextItemVisitor*(this: TextItemVisitor) =
        initVisitor(this)
        discard

proc newTextItemVisitor*(): TextItemVisitor =
    result = TextItemVisitor()
    initTextItemVisitor(result)

method visit*(this: TextItemVisitor, anyType: JObject): JObject {.discardable.} =
        let value: string = jstr(anyType)
        if jLength(value) < 2:
            return BooleanFactory.getInstance().TRUE
        else:
            return BooleanFactory.getInstance().FALSE

when declared(newTextItemVisitorHook0):
    newTextItemVisitorHook0 = proc (): Visitor = newTextItemVisitor()

