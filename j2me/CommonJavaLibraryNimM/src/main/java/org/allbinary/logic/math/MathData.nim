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
# package org.allbinary.logic.math

{.warning[UnusedImport]: off.}
import allbinary_java

type
    MathData* = ref object of JObject
        EQUALS*: string
        PLUS*: string
        GREATER_THAN*: string
        MINUS*: string
        DIVIDE*: string
        MULTIPLY*: string

proc newMathData*(): MathData
proc initMathData*(this: MathData)
proc getInstance*(t: typedesc[MathData]): MathData {.discardable.}
import org/allbinary/string/CommonPhoneStrings as CommonPhoneStringsModule
export CommonPhoneStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var MathData_instanceValue: MathData
var MathData_instanceSet = false
proc instance*(t: typedesc[MathData]): MathData =
    if not MathData_instanceSet:
        MathData_instanceSet = true
        MathData_instanceValue = newMathData()
    MathData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsMathData(this: MathData) =
    
    this.PLUS = "+"
    this.GREATER_THAN = ">"
    
    
    
    discard

proc getInstance*(t: typedesc[MathData]): MathData {.discardable.} =
        return MathData.instance

proc initMathData*(this: MathData) =
        this.initFieldsMathData()
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        this.EQUALS = commonSeps.EQUALS
        this.MINUS = commonSeps.DASH
        this.DIVIDE = commonSeps.FORWARD_SLASH
        this.MULTIPLY = CommonPhoneStrings.getInstance().STAR

proc newMathData*(): MathData =
    result = MathData()
    initMathData(result)

