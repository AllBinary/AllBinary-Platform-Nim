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
import javax/microedition/lcdui/TextField as TextFieldModule
export TextFieldModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    GameConfigurationTextInput* = ref object of JObject
        label*: string
        text*: string

proc newGameConfigurationTextInput*(label: string, text: string): GameConfigurationTextInput
proc initGameConfigurationTextInput*(this: GameConfigurationTextInput, label: string, text: string)
proc update*(t: typedesc[GameConfigurationTextInput], textField: TextField)
method setText*(this: GameConfigurationTextInput, text: string) {.base.}
method getText*(this: GameConfigurationTextInput): string {.base, discardable.}
method setLabel*(this: GameConfigurationTextInput, label: string) {.base.}
method getLabel*(this: GameConfigurationTextInput): string {.base, discardable.}
proc getHashtable*(t: typedesc[GameConfigurationTextInput]): ABHashtable {.discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var GameConfigurationTextInput_hashtableValue: ABHashtable
var GameConfigurationTextInput_hashtableSet = false
proc hashtable*(t: typedesc[GameConfigurationTextInput]): ABHashtable =
    if not GameConfigurationTextInput_hashtableSet:
        GameConfigurationTextInput_hashtableSet = true
        GameConfigurationTextInput_hashtableValue = StdUtil.getInstance().createHashtable()
    GameConfigurationTextInput_hashtableValue
proc `hashtable=`*(t: typedesc[GameConfigurationTextInput], value: ABHashtable) =
    GameConfigurationTextInput_hashtableSet = true
    GameConfigurationTextInput_hashtableValue = value
var GameConfigurationTextInput_SIMULATOR_IPValue: GameConfigurationTextInput
var GameConfigurationTextInput_SIMULATOR_IPSet = false
proc SIMULATOR_IP*(t: typedesc[GameConfigurationTextInput]): GameConfigurationTextInput =
    if not GameConfigurationTextInput_SIMULATOR_IPSet:
        GameConfigurationTextInput_SIMULATOR_IPSet = true
        GameConfigurationTextInput_SIMULATOR_IPValue = newGameConfigurationTextInput("IP: ", "192.168.1.3")
    GameConfigurationTextInput_SIMULATOR_IPValue
proc `SIMULATOR_IP=`*(t: typedesc[GameConfigurationTextInput], value: GameConfigurationTextInput) =
    GameConfigurationTextInput_SIMULATOR_IPSet = true
    GameConfigurationTextInput_SIMULATOR_IPValue = value
var GameConfigurationTextInput_SIMULATOR_PORTValue: GameConfigurationTextInput
var GameConfigurationTextInput_SIMULATOR_PORTSet = false
proc SIMULATOR_PORT*(t: typedesc[GameConfigurationTextInput]): GameConfigurationTextInput =
    if not GameConfigurationTextInput_SIMULATOR_PORTSet:
        GameConfigurationTextInput_SIMULATOR_PORTSet = true
        GameConfigurationTextInput_SIMULATOR_PORTValue = newGameConfigurationTextInput("Port: ", "8010")
    GameConfigurationTextInput_SIMULATOR_PORTValue
proc `SIMULATOR_PORT=`*(t: typedesc[GameConfigurationTextInput], value: GameConfigurationTextInput) =
    GameConfigurationTextInput_SIMULATOR_PORTSet = true
    GameConfigurationTextInput_SIMULATOR_PORTValue = value

# Java field initializers run after the base initializer
proc initFieldsGameConfigurationTextInput(this: GameConfigurationTextInput) =
    this.label = StringUtil.getInstance().EMPTY_STRING
    this.text = StringUtil.getInstance().EMPTY_STRING
    discard

proc initGameConfigurationTextInput*(this: GameConfigurationTextInput, label: string, text: string) =
        this.initFieldsGameConfigurationTextInput()
        this.setText(text)
        this.setLabel(label)
        GameConfigurationTextInput.hashtable.put(this.getLabel(), this)

proc newGameConfigurationTextInput*(label: string, text: string): GameConfigurationTextInput =
    result = GameConfigurationTextInput()
    initGameConfigurationTextInput(result, label, text)

proc update*(t: typedesc[GameConfigurationTextInput], textField: TextField) =
        let anyType: JObject = JObject(JObject(textField.getLabel()))
        var gameConfigurationTextInput: GameConfigurationTextInput = GameConfigurationTextInput(JObject(GameConfigurationTextInput.hashtable.get(anyType)))
        gameConfigurationTextInput.setText(textField.getString())

method setText*(this: GameConfigurationTextInput, text: string) {.base.} =
        this.text = text

method getText*(this: GameConfigurationTextInput): string {.base, discardable.} =
        return this.text

method setLabel*(this: GameConfigurationTextInput, label: string) {.base.} =
        this.label = label

method getLabel*(this: GameConfigurationTextInput): string {.base, discardable.} =
        return this.label

proc getHashtable*(t: typedesc[GameConfigurationTextInput]): ABHashtable {.discardable.} =
        return GameConfigurationTextInput.hashtable

