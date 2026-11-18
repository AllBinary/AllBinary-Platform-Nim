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
import java/lang/Integer as IntegerModule
export IntegerModule
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
import org/allbinary/game/configuration/persistance/PersistanceStrings as PersistanceStringsModule
export PersistanceStringsModule

type
    BasicPersitance* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        persistanceStrings*: PersistanceStrings
        platformRecordIdUtil*: PlatformRecordIdUtil
        recordId*: string
        valueList*: BasicArrayList
        idList*: BasicArrayList

proc newBasicPersitance*(recordId: string): BasicPersitance
proc initBasicPersitance*(this: BasicPersitance, recordId: string)
method deleteRecoreStore*(this: BasicPersitance, abeClientInformation: AbeClientInformationInterface) {.base.}
method deleteAll*(this: BasicPersitance, abeClientInformation: AbeClientInformationInterface) {.base.}
method delete*(this: BasicPersitance, abeClientInformation: AbeClientInformationInterface, deleteId: int32) {.base.}
method getRecordId*(this: BasicPersitance, abeClientInformation: AbeClientInformationInterface): string {.base, discardable.}
method getList*(this: BasicPersitance): BasicArrayList {.base, discardable.}
method getIds*(this: BasicPersitance): BasicArrayList {.base, discardable.}
method clear*(this: BasicPersitance) {.base.}
import javax/microedition/rms/RecordStore as RecordStoreModule
export RecordStoreModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/configuration/persistance/NullRecordStore as NullRecordStoreModule
export NullRecordStoreModule


# Java field initializers run after the base initializer
proc initFieldsBasicPersitance(this: BasicPersitance) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.persistanceStrings = PersistanceStrings.getInstance()
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    
    this.valueList = newBasicArrayListD()
    this.idList = newBasicArrayListD()
    discard

proc initBasicPersitance*(this: BasicPersitance, recordId: string) =
        this.initFieldsBasicPersitance()
        this.recordId = recordId

proc newBasicPersitance*(recordId: string): BasicPersitance =
    result = BasicPersitance()
    initBasicPersitance(result, recordId)

method deleteRecoreStore*(this: BasicPersitance, abeClientInformation: AbeClientInformationInterface) {.base.} =
        RecordStore.deleteRecordStore(this.getRecordId(abeClientInformation))

method deleteAll*(this: BasicPersitance, abeClientInformation: AbeClientInformationInterface) {.base.} =
        var size: int32 = this.idList.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var integer: int32 = jUnboxInteger(this.idList.objectArray[index])
                this.delete(abeClientInformation, integer.intValue())
        this.clear()

method delete*(this: BasicPersitance, abeClientInformation: AbeClientInformationInterface, deleteId: int32) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            this.logUtil.putF(newStringMaker().append(this.persistanceStrings.DELETING_WITH_ID).appendint(deleteId).toString(), this, this.commonStrings.delete)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e
        finally:
            if (not jIsNil(recordStore)):
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.delete)
                recordStore.closeRecordStore()

method getRecordId*(this: BasicPersitance, abeClientInformation: AbeClientInformationInterface): string {.base, discardable.} =
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.recordId)

method getList*(this: BasicPersitance): BasicArrayList {.base, discardable.} =
        return this.valueList

method getIds*(this: BasicPersitance): BasicArrayList {.base, discardable.} =
        return this.idList

method clear*(this: BasicPersitance) {.base.} =
        this.valueList.clear()
        this.idList.clear()

