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
# package org.allbinary.business.error

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ErrorData* = ref object of JObject
        NAME*: string
        TEXT*: string

proc newErrorData*(): ErrorData
proc initErrorData*(this: ErrorData)
proc getInstance*(t: typedesc[ErrorData]): ErrorData {.discardable.}

var ErrorData_instanceValue: ErrorData
var ErrorData_instanceSet = false
proc instance*(t: typedesc[ErrorData]): ErrorData =
    if not ErrorData_instanceSet:
        ErrorData_instanceSet = true
        ErrorData_instanceValue = newErrorData()
    ErrorData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsErrorData(this: ErrorData) =
    this.NAME = "ERROR_NAME"
    this.TEXT = "ERROR_TEXT"
    discard

proc getInstance*(t: typedesc[ErrorData]): ErrorData {.discardable.} =
        return ErrorData.instance

proc initErrorData*(this: ErrorData) =
        this.initFieldsErrorData()
        discard

proc newErrorData*(): ErrorData =
    result = ErrorData()
    initErrorData(result)

