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
# package org.allbinary.logic.io.path

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AbPathData* = ref object of JObject
        EXTENSION_SEP*: string
        SEPARATORCHAR*: uint16
        SEPARATOR*: string

proc newAbPathData*(): AbPathData
proc initAbPathData*(this: AbPathData)
proc getInstance*(t: typedesc[AbPathData]): AbPathData {.discardable.}
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var AbPathData_instanceValue: AbPathData
var AbPathData_instanceSet = false
proc instance*(t: typedesc[AbPathData]): AbPathData =
    if not AbPathData_instanceSet:
        AbPathData_instanceSet = true
        AbPathData_instanceValue = newAbPathData()
    AbPathData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAbPathData(this: AbPathData) =
    this.EXTENSION_SEP = CommonSeps.getInstance().PERIOD
    this.SEPARATORCHAR = uint16(ord('/'))
    this.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH
    discard

proc getInstance*(t: typedesc[AbPathData]): AbPathData {.discardable.} =
        return AbPathData.instance

proc initAbPathData*(this: AbPathData) =
        this.initFieldsAbPathData()
        discard

proc newAbPathData*(): AbPathData =
    result = AbPathData()
    initAbPathData(result)

