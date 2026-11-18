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
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule

#J2ME
type
    TsUtil* = ref object of JObject

proc newTsUtil*(): TsUtil
proc getInstance*(t: typedesc[TsUtil]): TsUtil {.discardable.}
method hashCode*(this: TsUtil, anyType: JObject): int32 {.base, discardable.}
method waitFor*(this: TsUtil, any: JObject, timeoutMillis: int64) {.base.}
method getRecord*(this: TsUtil, anyType: JObject, recordId: int32): JArray[int8] {.base, discardable.}
method compareTo*(this: TsUtil, a: string, b: string): int32 {.base, discardable.}
method equalIgnoreCase*(this: TsUtil, a: string, b: string): bool {.base, discardable.}
method equalsNotstring*(this: TsUtil, anyType: JObject, object2: JObject): bool {.base, discardable.}
method toNumberFromChar*(this: TsUtil, value: uint16): int32 {.base, discardable.}
method toNumber*(this: TsUtil, value: int32): int32 {.base, discardable.}
method getByteArray*(this: TsUtil, string: string): JArray[int8] {.base, discardable.}
method isItemListener*(this: TsUtil, owner: Displayable): bool {.base, discardable.}
method printAvailableMethods*(this: TsUtil, anyType: JObject) {.base.}
method gc*(this: TsUtil) {.base.}
import javax/microedition/lcdui/Form as FormModule
export FormModule
import javax/microedition/rms/InvalidRecordIDException as InvalidRecordIDExceptionModule
export InvalidRecordIDExceptionModule
import javax/microedition/rms/RecordStore as RecordStoreModule
export RecordStoreModule
import javax/microedition/rms/RecordStoreException as RecordStoreExceptionModule
export RecordStoreExceptionModule
import javax/microedition/rms/RecordStoreNotOpenException as RecordStoreNotOpenExceptionModule
export RecordStoreNotOpenExceptionModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var TsUtil_instanceValue: TsUtil
var TsUtil_instanceSet = false
proc instance*(t: typedesc[TsUtil]): TsUtil =
    if not TsUtil_instanceSet:
        TsUtil_instanceSet = true
        TsUtil_instanceValue = newTsUtil()
    TsUtil_instanceValue

proc initTsUtil*(this: TsUtil) =
    discard

proc newTsUtil*(): TsUtil =
    result = TsUtil()
    initTsUtil(result)

proc getInstance*(t: typedesc[TsUtil]): TsUtil {.discardable.} =
        return TsUtil.instance

method hashCode*(this: TsUtil, anyType: JObject): int32 {.base, discardable.} =
        return anyType.hashCode()

method waitFor*(this: TsUtil, any: JObject, timeoutMillis: int64) {.base.} =
        let anyType: JObject = JObject(JObject(any))
        anyType.wait(timeoutMillis)

method getRecord*(this: TsUtil, anyType: JObject, recordId: int32): JArray[int8] {.base, discardable.} =
        let recordStore: RecordStore = RecordStore(JObject(anyType))
        var data: JArray[int8] = nil
        block:
            data = newJArray[int8](recordStore.getRecordSize(recordId), default(int8))
            recordStore.getRecord(recordId, data, 0)
        return (if data.length < 1: NullUtil.getInstance().NULL_BYTE_ARRAY else: data)

method compareTo*(this: TsUtil, a: string, b: string): int32 {.base, discardable.} =
        return jCompareTo(a, b)

method equalIgnoreCase*(this: TsUtil, a: string, b: string): bool {.base, discardable.} =
        return jEqualsIgnoreCase(a, b)

method equalsNotstring*(this: TsUtil, anyType: JObject, object2: JObject): bool {.base, discardable.} =
        return anyType.equals(object2)

method toNumberFromChar*(this: TsUtil, value: uint16): int32 {.base, discardable.} =
        return int32(value)

method toNumber*(this: TsUtil, value: int32): int32 {.base, discardable.} =
        return value

method getByteArray*(this: TsUtil, string: string): JArray[int8] {.base, discardable.} =
        return jGetBytes(string)

method isItemListener*(this: TsUtil, owner: Displayable): bool {.base, discardable.} =
        if (owner of Form):
            return true
        else:
            return false

method printAvailableMethods*(this: TsUtil, anyType: JObject) {.base.} =
        discard

method gc*(this: TsUtil) {.base.} =
        System.gc()

