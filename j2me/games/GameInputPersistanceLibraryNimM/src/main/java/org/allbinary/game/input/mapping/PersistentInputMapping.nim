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
# package org.allbinary.game.input.mapping

{.warning[UnusedImport]: off.}
import allbinary_java
import java/util/Enumeration as EnumerationModule
export EnumerationModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/InputPersistance as InputPersistanceModule
export InputPersistanceModule
import org/allbinary/game/input/mapping/event/InputMappingEvent as InputMappingEventModule
export InputMappingEventModule
import org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface as InputMappingEventListenerInterfaceModule
export InputMappingEventListenerInterfaceModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/EnumerationUtil as EnumerationUtilModule
export EnumerationUtilModule
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule

#GameInputPersistanceLibrary
type
    PersistentInputMapping* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        enumerationUtil*: EnumerationUtil
        inputMapping*: InputToGameKeyMapping
        inputMappingEventListenerInterface*: InputMappingEventListenerInterface
        inputPersistance*: InputPersistance
        inputMappingEvent*: InputMappingEvent

proc newPersistentInputMapping*(name: string): PersistentInputMapping
proc initPersistentInputMapping*(this: PersistentInputMapping, name: string)
proc getNullInstance*(t: typedesc[PersistentInputMapping]): PersistentInputMapping {.discardable.}
method getTotalMapped*(this: PersistentInputMapping): int32 {.base, discardable.}
method isDefaultNew*(this: PersistentInputMapping): bool {.base, discardable.}
method getDefault*(this: PersistentInputMapping): InputToGameKeyMapping {.base, discardable.}
method setDefault*(this: PersistentInputMapping, abeClientInformation: AbeClientInformationInterface) {.base.}
method update*(this: PersistentInputMapping, abeClientInformation: AbeClientInformationInterface) {.base.}
method save*(this: PersistentInputMapping, abeClientInformation: AbeClientInformationInterface) {.base.}
method init*(this: PersistentInputMapping, abeClientInformation: AbeClientInformationInterface) {.base.}
method setInputMappingEventListenerInterface*(this: PersistentInputMapping, inputMappingEventListenerInterface: InputMappingEventListenerInterface) {.base.}
method getInputMappingEventListenerInterface*(this: PersistentInputMapping): InputMappingEventListenerInterface {.base, discardable.}
method getInputMapping*(this: PersistentInputMapping): InputToGameKeyMapping {.base, discardable.}
method isDelete*(this: PersistentInputMapping, input: Input): bool {.base, discardable.}
method isSystemInput*(this: PersistentInputMapping, input: Input): bool {.base, discardable.}
import org/allbinary/game/configuration/persistance/GamePersistanceStrings as GamePersistanceStringsModule
export GamePersistanceStringsModule
import org/allbinary/game/input/mapping/event/NullInputMappingEventListener as NullInputMappingEventListenerModule
export NullInputMappingEventListenerModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

var PersistentInputMapping_instanceValue: JObject
var PersistentInputMapping_instanceSet = false
proc instance*(t: typedesc[PersistentInputMapping]): JObject =
    if not PersistentInputMapping_instanceSet:
        PersistentInputMapping_instanceSet = true
        PersistentInputMapping_instanceValue = NullUtil.getInstance().NULL_OBJECT
    PersistentInputMapping_instanceValue
proc `instance=`*(t: typedesc[PersistentInputMapping], value: JObject) =
    PersistentInputMapping_instanceSet = true
    PersistentInputMapping_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsPersistentInputMapping(this: PersistentInputMapping) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.enumerationUtil = EnumerationUtil.getInstance()
    this.inputMapping = newInputToGameKeyMapping()
    this.inputMappingEventListenerInterface = NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENERStatic
    
    this.inputMappingEvent = newInputMappingEvent(this)
    discard

proc getNullInstance*(t: typedesc[PersistentInputMapping]): PersistentInputMapping {.discardable.} =
        if PersistentInputMapping.instance == NullUtil.getInstance().NULL_OBJECT:
            PersistentInputMapping.instance = newPersistentInputMapping(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
        return PersistentInputMapping(JObject(PersistentInputMapping.instance))

proc initPersistentInputMapping*(this: PersistentInputMapping, name: string) =
        this.initFieldsPersistentInputMapping()
        this.inputPersistance = newInputPersistance(name)

proc newPersistentInputMapping*(name: string): PersistentInputMapping =
    result = PersistentInputMapping()
    initPersistentInputMapping(result, name)

method getTotalMapped*(this: PersistentInputMapping): int32 {.base, discardable.} =
        return this.getInputMapping().getHashtable().size()

method isDefaultNew*(this: PersistentInputMapping): bool {.base, discardable.} =
        return false

method getDefault*(this: PersistentInputMapping): InputToGameKeyMapping {.base, discardable.} =
        return InputToGameKeyMapping.getNullInstance()

method setDefault*(this: PersistentInputMapping, abeClientInformation: AbeClientInformationInterface) {.base.} =
        this.getInputMapping().removeAll()
        this.getInputMapping().addMapping(this.getDefault())
        this.save(abeClientInformation)

method update*(this: PersistentInputMapping, abeClientInformation: AbeClientInformationInterface) {.base.} =
        this.inputPersistance.deleteAll(abeClientInformation)
        this.save(abeClientInformation)

method save*(this: PersistentInputMapping, abeClientInformation: AbeClientInformationInterface) {.base.} =
        this.inputPersistance.save(abeClientInformation, this.getInputMapping().getHashtable())
        this.inputMappingEvent.setInputToGameKeyMapping(this.getInputMapping())
        if (not jIsNil(this.getInputMappingEventListenerInterface())):
            this.getInputMappingEventListenerInterface().onInputMappingEvent(this.inputMappingEvent)

method init*(this: PersistentInputMapping, abeClientInformation: AbeClientInformationInterface) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT)
        try:
            this.inputPersistance.loadAll(abeClientInformation)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e)
            this.inputPersistance.deleteRecoreStore(abeClientInformation)
            this.setDefault(abeClientInformation)
            this.inputPersistance.loadAll(abeClientInformation)
        let list: BasicArrayList = this.inputPersistance.getList()
        var totalMappedTo: int32 = 0
        let size: int32 = list.size()
        var hashtable: ABHashtable = nil
        var enumeration: Enumeration = nil
        var mappedToInput: Input = nil
        var gameActionInput: Input = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                hashtable = ABHashtable(JObject(list.objectArray[index]))
                enumeration = hashtable.keys()
                while this.enumerationUtil.hasMoreElements(enumeration):
                    mappedToInput = Input(JObject(this.enumerationUtil.nextElement(enumeration)))
                    gameActionInput = Input(JObject(hashtable.get(mappedToInput)))
                    totalMappedTo = totalMappedTo +% 1
                    this.getInputMapping().add(gameActionInput, mappedToInput)
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("End - Total Loaded Keys Mapped: ")
        stringBuffer.appendint(this.getTotalMapped())
        stringBuffer.append(" to: ")
        stringBuffer.appendint(totalMappedTo)
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT)

method setInputMappingEventListenerInterface*(this: PersistentInputMapping, inputMappingEventListenerInterface: InputMappingEventListenerInterface) {.base.} =
        this.inputMappingEventListenerInterface = inputMappingEventListenerInterface

method getInputMappingEventListenerInterface*(this: PersistentInputMapping): InputMappingEventListenerInterface {.base, discardable.} =
        return this.inputMappingEventListenerInterface

method getInputMapping*(this: PersistentInputMapping): InputToGameKeyMapping {.base, discardable.} =
        return this.inputMapping

method isDelete*(this: PersistentInputMapping, input: Input): bool {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method isSystemInput*(this: PersistentInputMapping, input: Input): bool {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

