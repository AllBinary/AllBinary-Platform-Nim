#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.configuration.persistance

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/rms/RecordFilter as RecordFilterModule
export RecordFilterModule

type
    NullRecordFilter* = ref object of RecordFilter

proc newNullRecordFilter*(): NullRecordFilter
method matches*(this: NullRecordFilter, candidate: JArray[int8]): bool {.discardable.}

var NullRecordFilter_NULL_RECORD_FILTERValue: NullRecordFilter
var NullRecordFilter_NULL_RECORD_FILTERSet = false
proc NULL_RECORD_FILTERStatic*(t: typedesc[NullRecordFilter]): NullRecordFilter =
    if not NullRecordFilter_NULL_RECORD_FILTERSet:
        NullRecordFilter_NULL_RECORD_FILTERSet = true
        NullRecordFilter_NULL_RECORD_FILTERValue = newNullRecordFilter()
    NullRecordFilter_NULL_RECORD_FILTERValue
proc `NULL_RECORD_FILTERStatic=`*(t: typedesc[NullRecordFilter], value: NullRecordFilter) =
    NullRecordFilter_NULL_RECORD_FILTERSet = true
    NullRecordFilter_NULL_RECORD_FILTERValue = value

proc initNullRecordFilter*(this: NullRecordFilter) =
    discard

proc newNullRecordFilter*(): NullRecordFilter =
    result = NullRecordFilter()
    initNullRecordFilter(result)

method matches*(this: NullRecordFilter, candidate: JArray[int8]): bool {.discardable.} =
        return true

