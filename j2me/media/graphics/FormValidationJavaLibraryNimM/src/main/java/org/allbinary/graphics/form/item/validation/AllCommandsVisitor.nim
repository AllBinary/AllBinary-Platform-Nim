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
    AllCommandsVisitor* = ref object of Visitor

proc newAllCommandsVisitor*(): AllCommandsVisitor
proc initAllCommandsVisitor*(this: AllCommandsVisitor)
method visit*(this: AllCommandsVisitor, anyType: JObject): JObject {.discardable.}
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule


proc initAllCommandsVisitor*(this: AllCommandsVisitor) =
        initVisitor(this)
        discard

proc newAllCommandsVisitor*(): AllCommandsVisitor =
    result = AllCommandsVisitor()
    initAllCommandsVisitor(result)

method visit*(this: AllCommandsVisitor, anyType: JObject): JObject {.discardable.} =
        return BooleanFactory.getInstance().TRUE

when declared(newAllCommandsVisitorHook0):
    newAllCommandsVisitorHook0 = proc (): Visitor = newAllCommandsVisitor()

