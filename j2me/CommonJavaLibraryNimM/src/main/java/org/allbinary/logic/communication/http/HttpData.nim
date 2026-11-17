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
# package org.allbinary.logic.communication.http

{.warning[UnusedImport]: off.}
import allbinary_java

type
    HttpData* = ref object of JObject
        EQUALS*: string
        PARAM_SEP*: string
        URL_PARAM_SEP*: string
        URL_LABEL*: string

proc newHttpData*(): HttpData
proc initHttpData*(this: HttpData)
proc getInstance*(t: typedesc[HttpData]): HttpData {.discardable.}
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var HttpData_instanceValue: HttpData
var HttpData_instanceSet = false
proc instance*(t: typedesc[HttpData]): HttpData =
    if not HttpData_instanceSet:
        HttpData_instanceSet = true
        HttpData_instanceValue = newHttpData()
    HttpData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsHttpData(this: HttpData) =
    
    
    
    this.URL_LABEL = "Url: "
    discard

proc getInstance*(t: typedesc[HttpData]): HttpData {.discardable.} =
        return HttpData.instance

proc initHttpData*(this: HttpData) =
        this.initFieldsHttpData()
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        this.EQUALS = commonSeps.EQUALS
        this.PARAM_SEP = commonSeps.AMPERSAND
        this.URL_PARAM_SEP = commonSeps.QUESTION

proc newHttpData*(): HttpData =
    result = HttpData()
    initHttpData(result)

