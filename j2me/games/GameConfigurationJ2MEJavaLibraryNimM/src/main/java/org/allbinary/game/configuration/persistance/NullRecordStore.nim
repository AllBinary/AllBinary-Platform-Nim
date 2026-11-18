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
import javax/microedition/rms/RecordStore as RecordStoreModule
export RecordStoreModule

type
    NullRecordStore* = ref object of RecordStore

proc newNullRecordStore*(): NullRecordStore

var NullRecordStore_NULL_RECORD_STOREValue: NullRecordStore
var NullRecordStore_NULL_RECORD_STORESet = false
proc NULL_RECORD_STOREStatic*(t: typedesc[NullRecordStore]): NullRecordStore =
    if not NullRecordStore_NULL_RECORD_STORESet:
        NullRecordStore_NULL_RECORD_STORESet = true
        NullRecordStore_NULL_RECORD_STOREValue = newNullRecordStore()
    NullRecordStore_NULL_RECORD_STOREValue
proc `NULL_RECORD_STOREStatic=`*(t: typedesc[NullRecordStore], value: NullRecordStore) =
    NullRecordStore_NULL_RECORD_STORESet = true
    NullRecordStore_NULL_RECORD_STOREValue = value

proc initNullRecordStore*(this: NullRecordStore) =
    initRecordStore(this)

proc newNullRecordStore*(): NullRecordStore =
    result = NullRecordStore()
    initNullRecordStore(result)

when declared(newNullRecordStoreHook0):
    newNullRecordStoreHook0 = proc (): RecordStore = newNullRecordStore()

