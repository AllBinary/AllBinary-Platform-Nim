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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
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
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/persistance/PlatformRecordIdUtil as PlatformRecordIdUtilModule
export PlatformRecordIdUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    HighScoreNamePersistanceSingleton* = ref object of JObject
        logUtil*: LogUtil
        tsUtil*: TsUtil
        commonStrings*: CommonStrings
        platformRecordIdUtil*: PlatformRecordIdUtil
        RECORD_ID*: string
        name*: string
        nameBasicArrayList*: BasicArrayList

proc newHighScoreNamePersistanceSingleton*(): HighScoreNamePersistanceSingleton
proc getInstance*(t: typedesc[HighScoreNamePersistanceSingleton]): HighScoreNamePersistanceSingleton {.discardable.}
method clear*(this: HighScoreNamePersistanceSingleton) {.base.}
method deleteAll*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo) {.base.}
method getRecordId*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface): string {.base, discardable.}
method delete*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, deleteId: int32) {.base.}
method getIds*(this: HighScoreNamePersistanceSingleton): BasicArrayList {.base, discardable.}
method load*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo): string {.base, discardable.}
method save*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, name: string) {.base.}
import javax/microedition/rms/RecordEnumeration as RecordEnumerationModule
export RecordEnumerationModule
import javax/microedition/rms/RecordStore as RecordStoreModule
export RecordStoreModule
import javax/microedition/rms/RecordStoreException as RecordStoreExceptionModule
export RecordStoreExceptionModule
import org/allbinary/game/configuration/persistance/NullRecordComparator as NullRecordComparatorModule
export NullRecordComparatorModule
import org/allbinary/game/configuration/persistance/NullRecordFilter as NullRecordFilterModule
export NullRecordFilterModule
import org/allbinary/game/configuration/persistance/NullRecordStore as NullRecordStoreModule
export NullRecordStoreModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/java/exception/ExceptionUtil as ExceptionUtilModule
export ExceptionUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var HighScoreNamePersistanceSingleton_SINGLETONValue: HighScoreNamePersistanceSingleton
var HighScoreNamePersistanceSingleton_SINGLETONSet = false
proc SINGLETON*(t: typedesc[HighScoreNamePersistanceSingleton]): HighScoreNamePersistanceSingleton =
    if not HighScoreNamePersistanceSingleton_SINGLETONSet:
        HighScoreNamePersistanceSingleton_SINGLETONSet = true
        HighScoreNamePersistanceSingleton_SINGLETONValue = newHighScoreNamePersistanceSingleton()
    HighScoreNamePersistanceSingleton_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[HighScoreNamePersistanceSingleton], value: HighScoreNamePersistanceSingleton) =
    HighScoreNamePersistanceSingleton_SINGLETONSet = true
    HighScoreNamePersistanceSingleton_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsHighScoreNamePersistanceSingleton(this: HighScoreNamePersistanceSingleton) =
    this.logUtil = LogUtil.getInstance()
    this.tsUtil = TsUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    this.RECORD_ID = "_SN"
    this.name = StringUtil.getInstance().EMPTY_STRING
    this.nameBasicArrayList = newBasicArrayListD()
    discard

proc initHighScoreNamePersistanceSingleton*(this: HighScoreNamePersistanceSingleton) =
    this.initFieldsHighScoreNamePersistanceSingleton()

proc newHighScoreNamePersistanceSingleton*(): HighScoreNamePersistanceSingleton =
    result = HighScoreNamePersistanceSingleton()
    initHighScoreNamePersistanceSingleton(result)

proc getInstance*(t: typedesc[HighScoreNamePersistanceSingleton]): HighScoreNamePersistanceSingleton {.discardable.} =
        return HighScoreNamePersistanceSingleton.SINGLETON

method clear*(this: HighScoreNamePersistanceSingleton) {.base.} =
        this.name = StringUtil.getInstance().EMPTY_STRING

method deleteAll*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo) {.base.} =
        var size: int32 = this.nameBasicArrayList.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                let integer: int32 = jUnboxInteger(this.nameBasicArrayList.objectArray[index])
                this.delete(abeClientInformation, gameInfo, integer.intValue())
        this.clear()

method getRecordId*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface): string {.base, discardable.} =
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.RECORD_ID)

method delete*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, deleteId: int32) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            this.logUtil.putF(newStringMaker().append("Deleting: ").appendint(deleteId).toString(), this, this.commonStrings.delete)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e
        finally:
            if (not jIsNil(recordStore)):
                PreLogUtil.put("Closing RecordStore", this, this.commonStrings.delete)
                recordStore.closeRecordStore()

method getIds*(this: HighScoreNamePersistanceSingleton): BasicArrayList {.base, discardable.} =
        return this.nameBasicArrayList

method load*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo): string {.base, discardable.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            if this.name == StringUtil.getInstance().EMPTY_STRING:
                let LOADING_ID: string = "Loading id: "
                recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
                let recordEnum: RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTERStatic, NullRecordComparator.NULL_RECORD_COMPARATORStatic, true)
                let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
                var recordAsBytes: JArray[int8] = nil
                var byteArrayInputStream: ByteArrayInputStream = nil
                var inputStream: DataInputStream = nil
                while recordEnum.hasNextElement():
                    let id: int32 = recordEnum.nextRecordId()
                    this.logUtil.putF(newStringMaker().append(LOADING_ID).appendint(id).toString(), this, this.commonStrings.LOAD)
                    recordAsBytes = this.tsUtil.getRecord(recordStore, id)
                    byteArrayInputStream = newByteArrayInputStream(recordAsBytes)
                    inputStream = newDataInputStream(byteArrayInputStream)
                    while inputStream.available() > 0:
                        this.name = inputStream.readUTF()
                    this.nameBasicArrayList.add(smallIntegerSingletonFactory.getAt(id))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.save(abeClientInformation, gameInfo, this.name)
            this.logUtil.putF(newStringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(ExceptionUtil.getInstance().getStackTrace(e)).toString(), this, this.commonStrings.LOAD)
        finally:
            try:
                if (not jIsNil(recordStore)):
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.LOAD)
                    recordStore.closeRecordStore()
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.LOAD, e)
        return this.name

method save*(this: HighScoreNamePersistanceSingleton, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, name: string) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            this.logUtil.putF(newStringMaker().append("Saving: ").append(name).toString(), this, this.commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            let byteArrayOutputStream: ByteArrayOutputStream = newByteArrayOutputStream()
            let outputStream: DataOutputStream = newDataOutputStream(byteArrayOutputStream)
            outputStream.writeUTF(name)
            let savedGameBytes: JArray[int8] = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
            this.name = name
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e)
        finally:
            try:
                if (not jIsNil(recordStore)):
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.SAVE)
                    recordStore.closeRecordStore()
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e)

