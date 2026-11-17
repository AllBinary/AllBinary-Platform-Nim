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
# package org.allbinary.logic.util.visitor

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/util/visitor/VisitorInterface as VisitorInterfaceModule
export VisitorInterfaceModule

type
    Visitor* = ref object of VisitorInterface
        nullUtil*: NullUtil

proc newVisitor*(): Visitor
method visit*(this: Visitor, anyType: JObject): JObject {.discardable.}
proc getInstance*(t: typedesc[Visitor]): Visitor {.discardable.}

var Visitor_instanceValue: Visitor
var Visitor_instanceSet = false
proc instance*(t: typedesc[Visitor]): Visitor =
    if not Visitor_instanceSet:
        Visitor_instanceSet = true
        Visitor_instanceValue = newVisitor()
    Visitor_instanceValue

# Java field initializers run after the base initializer
proc initFieldsVisitor(this: Visitor) =
    this.nullUtil = NullUtil.getInstance()
    discard

proc initVisitor*(this: Visitor) =
    this.initFieldsVisitor()

proc newVisitor*(): Visitor =
    result = Visitor()
    initVisitor(result)

method visit*(this: Visitor, anyType: JObject): JObject {.discardable.} =
        return this.nullUtil.NULL_OBJECT

proc getInstance*(t: typedesc[Visitor]): Visitor {.discardable.} =
        return Visitor.instance

