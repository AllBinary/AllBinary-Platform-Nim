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
import org/allbinary/game/configuration/persistance/BasicPersitance as BasicPersitanceModule
export BasicPersitanceModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/util/HashtableUtil as HashtableUtilModule
export HashtableUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

#GameInputNoPersistanceLibrary
type
    InputPersistance* = ref object of BasicPersitance
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
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/game/input/Input as InputModule
export InputModule


# Java field initializers run after the base initializer
proc initFieldsInputPersistance(this: InputPersistance) =
    this.hashtableUtil = HashtableUtil.getInstance()
    discard

proc initInputPersistance*(this: InputPersistance, name: string) =
        initBasicPersitance(this, name)
        this.initFieldsInputPersistance()

proc newInputPersistance*(name: string): InputPersistance =
    result = InputPersistance()
    initInputPersistance(result, name)

method loadAll*(this: InputPersistance, abeClientInformation: AbeClientInformationInterface) {.base.} =
        let recordStore: RecordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
        let recordEnum: RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTERStatic, NullRecordComparator.NULL_RECORD_COMPARATORStatic, true)
        var hashtable: ABHashtable = nil
        let stringBuffer: StringMaker = newStringMaker()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        var id: int32 = 0
        while recordEnum.hasNextElement():
            id = recordEnum.nextRecordId()
            stringBuffer.delete(0, stringBuffer.length())
            this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL)
            hashtable = StdUtil.getInstance().createHashtable()
            this.valueList.add(hashtable)
            this.idList.add(smallIntegerSingletonFactory.getAt(id))
        recordStore.closeRecordStore()

method save*(this: InputPersistance, abeClientInformation: AbeClientInformationInterface, hashtable: ABHashtable) {.base.} =
        PreLogUtil.put(newStringMaker().append(this.persistanceStrings.NOT_SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE)
        let recordStore: RecordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
        var gameActionInput: Input = nil
        var list: BasicArrayList = nil
        var input: Input = nil
        let inputObjectArray: JArray[JObject] = this.hashtableUtil.getKeysAsArray(hashtable)
        let size: int32 = inputObjectArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                gameActionInput = Input(JObject(inputObjectArray[index]))
                list = BasicArrayList(JObject(hashtable.get(inputObjectArray[index])))
                block:
                    var index2: int32 = 0
                    while index2 < list.size():
                        defer: index2 = index2 +% 1
                        input = Input(JObject(list.get(index2)))
        recordStore.closeRecordStore()

when declared(newInputPersistanceHook1):
    newInputPersistanceHook1 = proc (name: string): BasicPersitance = newInputPersistance(name)

