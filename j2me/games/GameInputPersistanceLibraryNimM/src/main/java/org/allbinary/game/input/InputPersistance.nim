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
# package org.allbinary.game.input

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
import org/allbinary/game/configuration/persistance/BasicPersitance as BasicPersitanceModule
export BasicPersitanceModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/util/HashtableUtil as HashtableUtilModule
export HashtableUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

#GameInputPersistanceLibrary
type
    InputPersistance* = ref object of BasicPersitance
        tsUtil*: TsUtil
        hashtableUtil*: HashtableUtil

proc newInputPersistance*(name: string): InputPersistance
proc initInputPersistance*(this: InputPersistance, name: string)
method loadAll*(this: InputPersistance, abeClientInformation: AbeClientInformationInterface) {.base.}
method save*(this: InputPersistance, abeClientInformation: AbeClientInformationInterface, hashtable: ABHashtable) {.base.}
import javax/microedition/rms/RecordEnumeration as RecordEnumerationModule
export RecordEnumerationModule
import javax/microedition/rms/RecordStore as RecordStoreModule
export RecordStoreModule
import org/allbinary/game/configuration/persistance/NullRecordComparator as NullRecordComparatorModule
export NullRecordComparatorModule
import org/allbinary/game/configuration/persistance/NullRecordFilter as NullRecordFilterModule
export NullRecordFilterModule
import org/allbinary/game/configuration/persistance/NullRecordStore as NullRecordStoreModule
export NullRecordStoreModule
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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/GameKeyMappingFactory as GameKeyMappingFactoryModule
export GameKeyMappingFactoryModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule


# Java field initializers run after the base initializer
proc initFieldsInputPersistance(this: InputPersistance) =
    this.tsUtil = TsUtil.getInstance()
    this.hashtableUtil = HashtableUtil.getInstance()
    discard

proc initInputPersistance*(this: InputPersistance, name: string) =
        initBasicPersitance(this, name)
        this.initFieldsInputPersistance()

proc newInputPersistance*(name: string): InputPersistance =
    result = InputPersistance()
    initInputPersistance(result, name)

method loadAll*(this: InputPersistance, abeClientInformation: AbeClientInformationInterface) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            let recordEnum: RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTERStatic, NullRecordComparator.NULL_RECORD_COMPARATORStatic, true)
            var gameActionInputId: int64 = 0
            var inputId: int64 = 0
            var gameActionInput: Input = nil
            var input: Input = nil
            var hashtable: ABHashtable = nil
            let gameKeyFactory: GameKeyMappingFactory = GameKeyMappingFactory.getInstance()
            let stringBuffer: StringMaker = newStringMaker()
            let inputFactory: InputFactory = InputFactory.getInstance()
            let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            let stdUtil: StdUtil = StdUtil.getInstance()
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
                    hashtable = stdUtil.createHashtable()
                    var value: int32 = 0
                    while inputStream.available() > 0:
                        let gameActionInputIdAsString: string = inputStream.readUTF()
                        value = jParseInt(gameActionInputIdAsString)
                        gameActionInputId = int64(value)
                        inputStream.readUTF()
                        value = jParseInt(inputStream.readUTF())
                        inputId = int64(value)
                        gameActionInput = gameKeyFactory.getGameKey(jToInt32(gameActionInputId))
                        input = inputFactory.getInstanceById(jToInt32(inputId))
                        if input == inputFactory.NO_INPUT or (jIsNil(gameActionInput)):
                            stringBuffer.delete(0, stringBuffer.length())
                            if input == inputFactory.NO_INPUT:
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING_ID)
                                stringBuffer.appendlong(inputId)
                                stringBuffer.append(this.persistanceStrings.GAME_ACTION_INPUT)
                                stringBuffer.appendlong(gameActionInputId)
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL)
                            if (jIsNil(gameActionInput)):
                                stringBuffer.delete(0, stringBuffer.length())
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING)
                                stringBuffer.appendlong(gameActionInputId)
                                stringBuffer.append(this.persistanceStrings.ID)
                                stringBuffer.appendlong(inputId)
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL)
                        else:
                            discard
                        hashtable.put(input, gameActionInput)
                    this.valueList.add(hashtable)
                    this.idList.add(smallIntegerSingletonFactory.getAt(id))
                else:
                    discard
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e
        finally:
            if (not jIsNil(recordStore)):
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.persistanceStrings.LOAD_ALL)
                recordStore.closeRecordStore()

method save*(this: InputPersistance, abeClientInformation: AbeClientInformationInterface, hashtable: ABHashtable) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            let stringBuffer: StringMaker = newStringMaker()
            PreLogUtil.put(stringBuffer.append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            var byteArrayOutputStream: ByteArrayOutputStream = newByteArrayOutputStream()
            var outputStream: DataOutputStream = newDataOutputStream(byteArrayOutputStream)
            var gameActionInput: Input = nil
            var list: BasicArrayList = nil
            var input: Input = nil
            var savedGameBytes: JArray[int8] = nil
            let commonSeps: CommonSeps = CommonSeps.getInstance()
            let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            let inputObjectArray: JArray[JObject] = this.hashtableUtil.getKeysAsArray(hashtable)
            let size: int32 = inputObjectArray.length
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    gameActionInput = Input(JObject(inputObjectArray[index]))
                    list = BasicArrayList(JObject(hashtable.get(JObject(JObject(inputObjectArray[index])))))
                    block:
                        var index2: int32 = 0
                        while index2 < list.size():
                            defer: index2 = index2 +% 1
                            let gameActionInputIdAsString: string = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).toString()
                            outputStream.writeUTF(gameActionInputIdAsString)
                            outputStream.writeUTF(commonSeps.EQUALS)
                            input = Input(JObject(list.objectArray[index2]))
                            let inputIdAsString: string = smallIntegerSingletonFactory.getAt(input.getId()).toString()
                            outputStream.writeUTF(inputIdAsString)
            savedGameBytes = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e
        finally:
            if (not jIsNil(recordStore)):
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE)
                recordStore.closeRecordStore()

when declared(newInputPersistanceHook1):
    newInputPersistanceHook1 = proc (name: string): BasicPersitance = newInputPersistance(name)

