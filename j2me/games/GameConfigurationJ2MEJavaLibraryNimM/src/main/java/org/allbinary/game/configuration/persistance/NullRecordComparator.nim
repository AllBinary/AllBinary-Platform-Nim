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
import javax/microedition/rms/RecordComparator as RecordComparatorModule
export RecordComparatorModule

type
    NullRecordComparator* = ref object of RecordComparator

proc newNullRecordComparator*(): NullRecordComparator
method compare*(this: NullRecordComparator, rec1: JArray[int8], rec2: JArray[int8]): int32 {.discardable.}

var NullRecordComparator_NULL_RECORD_COMPARATORValue: NullRecordComparator
var NullRecordComparator_NULL_RECORD_COMPARATORSet = false
proc NULL_RECORD_COMPARATORStatic*(t: typedesc[NullRecordComparator]): NullRecordComparator =
    if not NullRecordComparator_NULL_RECORD_COMPARATORSet:
        NullRecordComparator_NULL_RECORD_COMPARATORSet = true
        NullRecordComparator_NULL_RECORD_COMPARATORValue = newNullRecordComparator()
    NullRecordComparator_NULL_RECORD_COMPARATORValue

proc initNullRecordComparator*(this: NullRecordComparator) =
    discard

proc newNullRecordComparator*(): NullRecordComparator =
    result = NullRecordComparator()
    initNullRecordComparator(result)

method compare*(this: NullRecordComparator, rec1: JArray[int8], rec2: JArray[int8]): int32 {.discardable.} =
        return 0

