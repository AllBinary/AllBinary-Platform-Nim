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
# package org.allbinary.data.tree.dom

{.warning[UnusedImport]: off.}
import allbinary_java

type
    DomData* = ref object of JObject

proc newDomData*(): DomData
proc initDomData*(this: DomData)

var DomData_IDValue: string
var DomData_IDSet = false
proc ID*(t: typedesc[DomData]): string =
    if not DomData_IDSet:
        DomData_IDSet = true
        DomData_IDValue = "id"
    DomData_IDValue
var DomData_CHILDValue: string
var DomData_CHILDSet = false
proc CHILD*(t: typedesc[DomData]): string =
    if not DomData_CHILDSet:
        DomData_CHILDSet = true
        DomData_CHILDValue = "child"
    DomData_CHILDValue
var DomData_NAMEValue: string
var DomData_NAMESet = false
proc NAME*(t: typedesc[DomData]): string =
    if not DomData_NAMESet:
        DomData_NAMESet = true
        DomData_NAMEValue = "name"
    DomData_NAMEValue
var DomData_VALUEValue: string
var DomData_VALUESet = false
proc VALUE*(t: typedesc[DomData]): string =
    if not DomData_VALUESet:
        DomData_VALUESet = true
        DomData_VALUEValue = "value"
    DomData_VALUEValue
var DomData_INDEXValue: string
var DomData_INDEXSet = false
proc INDEX*(t: typedesc[DomData]): string =
    if not DomData_INDEXSet:
        DomData_INDEXSet = true
        DomData_INDEXValue = "index"
    DomData_INDEXValue

proc initDomData*(this: DomData) =
        discard
        discard

proc newDomData*(): DomData =
    result = DomData()
    initDomData(result)

