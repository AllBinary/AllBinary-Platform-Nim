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
# package org.allbinary.logic.util.event

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AllBinaryEventObject* = ref object of JObject
        source*: JObject

proc newAllBinaryEventObject*(anyType: JObject): AllBinaryEventObject
proc initAllBinaryEventObject*(this: AllBinaryEventObject, anyType: JObject)
method getSource*(this: AllBinaryEventObject): JObject {.base, discardable.}
method setSource*(this: AllBinaryEventObject, source: JObject) {.base.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var AllBinaryEventObject_NULL_EVENTValue: AllBinaryEventObject
var AllBinaryEventObject_NULL_EVENTSet = false
proc NULL_EVENT*(t: typedesc[AllBinaryEventObject]): AllBinaryEventObject =
    if not AllBinaryEventObject_NULL_EVENTSet:
        AllBinaryEventObject_NULL_EVENTSet = true
        AllBinaryEventObject_NULL_EVENTValue = newAllBinaryEventObject(NullUtil.getInstance().NULL_OBJECT)
    AllBinaryEventObject_NULL_EVENTValue

# Java field initializers run after the base initializer
proc initFieldsAllBinaryEventObject(this: AllBinaryEventObject) =
    
    discard

proc initAllBinaryEventObject*(this: AllBinaryEventObject, anyType: JObject) =
        this.initFieldsAllBinaryEventObject()
        this.source = anyType

proc newAllBinaryEventObject*(anyType: JObject): AllBinaryEventObject =
    result = AllBinaryEventObject()
    initAllBinaryEventObject(result, anyType)

method getSource*(this: AllBinaryEventObject): JObject {.base, discardable.} =
        return this.source

method setSource*(this: AllBinaryEventObject, source: JObject) {.base.} =
        this.source = source

