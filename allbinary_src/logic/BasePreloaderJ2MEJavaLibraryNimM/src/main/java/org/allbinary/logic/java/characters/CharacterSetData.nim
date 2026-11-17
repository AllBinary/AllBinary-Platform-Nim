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
# package org.allbinary.logic.java.characters

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CharacterSetData* = ref object of JObject
        US_ASCII*: string
        ISO_8859_1*: string
        UTF_8*: string
        UTF_16*: string
        UTF_16BE*: string
        UTF_16LE*: string

proc newCharacterSetData*(): CharacterSetData
proc initCharacterSetData*(this: CharacterSetData)
proc getInstance*(t: typedesc[CharacterSetData]): CharacterSetData {.discardable.}

var CharacterSetData_instanceValue: CharacterSetData
var CharacterSetData_instanceSet = false
proc instance*(t: typedesc[CharacterSetData]): CharacterSetData =
    if not CharacterSetData_instanceSet:
        CharacterSetData_instanceSet = true
        CharacterSetData_instanceValue = newCharacterSetData()
    CharacterSetData_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCharacterSetData(this: CharacterSetData) =
    this.US_ASCII = "US-ASCII"
    this.ISO_8859_1 = "ISO-8859-1"
    this.UTF_8 = "UTF-8"
    this.UTF_16 = "UTF-16"
    this.UTF_16BE = "UTF-16BE"
    this.UTF_16LE = "UTF-16LE"
    discard

proc getInstance*(t: typedesc[CharacterSetData]): CharacterSetData {.discardable.} =
        return CharacterSetData.instance

proc initCharacterSetData*(this: CharacterSetData) =
        this.initFieldsCharacterSetData()
        discard

proc newCharacterSetData*(): CharacterSetData =
    result = CharacterSetData()
    initCharacterSetData(result)

