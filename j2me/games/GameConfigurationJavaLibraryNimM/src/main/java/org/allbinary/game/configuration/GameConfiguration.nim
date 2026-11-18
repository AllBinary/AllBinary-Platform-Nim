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
# package org.allbinary.game.configuration

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Boolean as BooleanModule
export BooleanModule

type
    GameConfiguration* = ref object of JObject
        name*: string
        defaultValue*: int32
        value*: int32
        minValue*: int32
        maxValue*: int32
        modifiable*: bool

proc newGameConfiguration*(name: string, defaultValue: int32, minValue: int32, maxValue: int32): GameConfiguration
proc initGameConfiguration*(this: GameConfiguration, name: string, defaultValue: int32, minValue: int32, maxValue: int32)
method setValue*(this: GameConfiguration, value: int32) {.base.}
method getValue*(this: GameConfiguration): int32 {.base, discardable.}
method setMaxValue*(this: GameConfiguration, maxValue: int32) {.base.}
method getMaxValue*(this: GameConfiguration): int32 {.base, discardable.}
method setMinValue*(this: GameConfiguration, minValue: int32) {.base.}
method getMinValue*(this: GameConfiguration): int32 {.base, discardable.}
method setName*(this: GameConfiguration, name: string) {.base.}
method getName*(this: GameConfiguration): string {.base, discardable.}
method setDefaultValue*(this: GameConfiguration, defaultValue: int32) {.base.}
method getDefaultValue*(this: GameConfiguration): int32 {.base, discardable.}
method setDefault*(this: GameConfiguration) {.base.}
method toString*(this: GameConfiguration): string {.discardable.}
method setModifiable*(this: GameConfiguration, modifiable: bool) {.base.}
method isModifiable*(this: GameConfiguration): bool {.base, discardable.}
import org/allbinary/game/configuration/event/GameFeatureEvent as GameFeatureEventModule
export GameFeatureEventModule
import org/allbinary/game/configuration/event/GameFeatureEventHandler as GameFeatureEventHandlerModule
export GameFeatureEventHandlerModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/game/configuration/GameConfigurationSingleton as GameConfigurationSingletonModule
export GameConfigurationSingletonModule

var GameConfiguration_MIN_VALUEValue: int32
var GameConfiguration_MIN_VALUESet = false
proc MIN_VALUE*(t: typedesc[GameConfiguration]): int32 =
    if not GameConfiguration_MIN_VALUESet:
        GameConfiguration_MIN_VALUESet = true
        GameConfiguration_MIN_VALUEValue = Integer.MIN_VALUE
    GameConfiguration_MIN_VALUEValue

# Java field initializers run after the base initializer
proc initFieldsGameConfiguration(this: GameConfiguration) =
    this.name = StringUtil.getInstance().EMPTY_STRING
    this.defaultValue = SmallIntegerSingletonFactory.getInstance().getAt(0)
    this.value = GameConfiguration.MIN_VALUE
    this.minValue = this.defaultValue
    this.maxValue = this.defaultValue
    this.modifiable = BooleanFactory.getInstance().TRUE
    discard

proc initGameConfiguration*(this: GameConfiguration, name: string, defaultValue: int32, minValue: int32, maxValue: int32) =
        this.initFieldsGameConfiguration()
        this.setName(name)
        this.setDefaultValue(defaultValue)
        this.value = this.getDefaultValue()
        this.setMinValue(minValue)
        this.setMaxValue(maxValue)
        GameConfigurationSingleton.getInstance().getHashtable().put(this.getName(), this)

proc newGameConfiguration*(name: string, defaultValue: int32, minValue: int32, maxValue: int32): GameConfiguration =
    result = GameConfiguration()
    initGameConfiguration(result, name, defaultValue, minValue, maxValue)

method setValue*(this: GameConfiguration, value: int32) {.base.} =
        if this.value != value:
            let oldValue: int32 = this.value
            this.value = value
            GameFeatureEventHandler.getInstance().fireEvent(newGameFeatureEvent(this, newStringMaker().append(this.name).append(" value: from: ").appendint(int32(oldValue.intValue())).append(" to ").appendint(int32(this.value.intValue())).toString()))

method getValue*(this: GameConfiguration): int32 {.base, discardable.} =
        return this.value

method setMaxValue*(this: GameConfiguration, maxValue: int32) {.base.} =
        this.maxValue = maxValue

method getMaxValue*(this: GameConfiguration): int32 {.base, discardable.} =
        return this.maxValue

method setMinValue*(this: GameConfiguration, minValue: int32) {.base.} =
        this.minValue = minValue

method getMinValue*(this: GameConfiguration): int32 {.base, discardable.} =
        return this.minValue

method setName*(this: GameConfiguration, name: string) {.base.} =
        this.name = name

method getName*(this: GameConfiguration): string {.base, discardable.} =
        return this.name

method setDefaultValue*(this: GameConfiguration, defaultValue: int32) {.base.} =
        this.defaultValue = defaultValue

method getDefaultValue*(this: GameConfiguration): int32 {.base, discardable.} =
        return this.defaultValue

method setDefault*(this: GameConfiguration) {.base.} =
        this.setValue(this.getDefaultValue())

method toString*(this: GameConfiguration): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Name: ")
        stringBuffer.append(this.name)
        stringBuffer.append(" Min: ")
        stringBuffer.appendint(int32(this.getMinValue().intValue()))
        stringBuffer.append(" Max: ")
        stringBuffer.appendint(int32(this.getMaxValue().intValue()))
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(int32(this.getValue().intValue()))
        stringBuffer.append(" Default: ")
        stringBuffer.appendint(int32(this.getDefaultValue().intValue()))
        stringBuffer.append(" Modifiable: ")
        stringBuffer.appendboolean(this.isModifiable().booleanValue())
        return stringBuffer.toString()

method setModifiable*(this: GameConfiguration, modifiable: bool) {.base.} =
        this.modifiable = modifiable

method isModifiable*(this: GameConfiguration): bool {.base, discardable.} =
        return this.modifiable

