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
# package org.allbinary.game.configuration.persistance

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/ByteArrayInputStream as ByteArrayInputStreamModule
export ByteArrayInputStreamModule
import java/io/ByteArrayOutputStream as ByteArrayOutputStreamModule
export ByteArrayOutputStreamModule
import java/io/DataInputStream as DataInputStreamModule
export DataInputStreamModule
import java/io/DataOutputStream as DataOutputStreamModule
export DataOutputStreamModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/configuration/persistance/BasicPersitance as BasicPersitanceModule
export BasicPersitanceModule

type
    KeyValuePersistance* = ref object of BasicPersitance
        tsUtil*: TsUtil

proc newKeyValuePersistance*(recordId: string): KeyValuePersistance
proc initKeyValuePersistance*(this: KeyValuePersistance, recordId: string)
method loadAll*(this: KeyValuePersistance, abeClientInformation: AbeClientInformationInterface) {.base.}
method loadAllSize*(this: KeyValuePersistance, abeClientInformation: AbeClientInformationInterface, size: int32) {.base.}
method save*(this: KeyValuePersistance, abeClientInformation: AbeClientInformationInterface, hashtable: ABHashtable) {.base.}
method get*(this: KeyValuePersistance, index: int32): ABHashtable {.base, discardable.}
import javax/microedition/rms/RecordEnumeration as RecordEnumerationModule
export RecordEnumerationModule
import javax/microedition/rms/RecordStore as RecordStoreModule
export RecordStoreModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/HashtableUtil as HashtableUtilModule
export HashtableUtilModule
import org/allbinary/game/configuration/persistance/NullRecordStore as NullRecordStoreModule
export NullRecordStoreModule
import org/allbinary/game/configuration/persistance/NullRecordFilter as NullRecordFilterModule
export NullRecordFilterModule
import org/allbinary/game/configuration/persistance/NullRecordComparator as NullRecordComparatorModule
export NullRecordComparatorModule


# Java field initializers run after the base initializer
proc initFieldsKeyValuePersistance(this: KeyValuePersistance) =
    this.tsUtil = TsUtil.getInstance()
    discard

proc initKeyValuePersistance*(this: KeyValuePersistance, recordId: string) =
        initBasicPersitance(this, recordId)
        this.initFieldsKeyValuePersistance()

proc newKeyValuePersistance*(recordId: string): KeyValuePersistance =
    result = KeyValuePersistance()
    initKeyValuePersistance(result, recordId)

method loadAll*(this: KeyValuePersistance, abeClientInformation: AbeClientInformationInterface) {.base.} =
        this.loadAllSize(abeClientInformation, 1)

method loadAllSize*(this: KeyValuePersistance, abeClientInformation: AbeClientInformationInterface, size: int32) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            let recordEnum: RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTERStatic, NullRecordComparator.NULL_RECORD_COMPARATORStatic, true)
            var hashtable: ABHashtable = nil
            var name: string = ""
            var value: string = ""
            let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            let stringBuffer: StringMaker = newStringMaker()
            var recordAsBytes: JArray[int8] = nil
            var byteArrayInputStream: ByteArrayInputStream = nil
            var inputStream: DataInputStream = nil
            while recordEnum.hasNextElement():
                let id: int32 = recordEnum.nextRecordId()
                stringBuffer.delete(0, stringBuffer.length())
                this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL)
                recordAsBytes = this.tsUtil.getRecord(recordStore, id)
                if (not jIsNil(recordAsBytes)):
                    byteArrayInputStream = newByteArrayInputStream(recordAsBytes)
                    inputStream = newDataInputStream(byteArrayInputStream)
                    hashtable = newABHashtable()
                    block:
                        var index: int32 = 0
                        while index < size:
                            defer: index = index +% 1
                            name = inputStream.readUTF()
                            inputStream.readUTF()
                            value = inputStream.readUTF()
                            hashtable.put(name, value)
                    this.valueList.add(hashtable)
                    this.idList.add(smallIntegerSingletonFactory.getAt(id))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e
        finally:
            if (not jIsNil(recordStore)):
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.persistanceStrings.LOAD_ALL)
                recordStore.closeRecordStore()

method save*(this: KeyValuePersistance, abeClientInformation: AbeClientInformationInterface, hashtable: ABHashtable) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            this.logUtil.putF(newStringMaker().append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            let byteArrayOutputStream: ByteArrayOutputStream = newByteArrayOutputStream()
            let outputStream: DataOutputStream = newDataOutputStream(byteArrayOutputStream)
            var value: string = ""
            let commonSeps: CommonSeps = CommonSeps.getInstance()
            let objectArray: JArray[JObject] = HashtableUtil.getInstance().getKeysAsArray(hashtable)
            var anyType: JObject = nil
            let size: int32 = objectArray.length
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    outputStream.writeUTF(jstr(objectArray[index]))
                    outputStream.writeUTF(commonSeps.EQUALS)
                    anyType = JObject(JObject(objectArray[index]))
                    value = jstr(hashtable.get(anyType))
                    outputStream.writeUTF(value)
            let tsUtil: TsUtil = TsUtil.getInstance()
            let savedGameBytes: JArray[int8] = tsUtil.getByteArray(byteArrayOutputStream.toString())
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e
        finally:
            if (not jIsNil(recordStore)):
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE)
                recordStore.closeRecordStore()

method get*(this: KeyValuePersistance, index: int32): ABHashtable {.base, discardable.} =
        let hashtable: ABHashtable = ABHashtable(JObject(this.valueList.objectArray[index]))
        return hashtable

when declared(newKeyValuePersistanceHook1):
    newKeyValuePersistanceHook1 = proc (recordId: string): BasicPersitance = newKeyValuePersistance(recordId)

