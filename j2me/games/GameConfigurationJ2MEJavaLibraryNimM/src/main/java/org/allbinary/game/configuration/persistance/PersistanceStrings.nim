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
# package org.allbinary.game.configuration.persistance

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PersistanceStrings* = ref object of JObject
        SAVING*: string
        NUMBER_OF_RECORDS*: string
        LOADING_ID*: string
        LOAD_ALL*: string
        DELETING_WITH_ID*: string
        CLOSING_RECORDSTORE*: string
        NOT_SAVING*: string
        ERROR_LOADING*: string
        ERROR_LOADING_ID*: string
        ID*: string
        GAME_ACTION_INPUT*: string

proc newPersistanceStrings*(): PersistanceStrings
proc getInstance*(t: typedesc[PersistanceStrings]): PersistanceStrings {.discardable.}

var PersistanceStrings_instanceValue: PersistanceStrings
var PersistanceStrings_instanceSet = false
proc instance*(t: typedesc[PersistanceStrings]): PersistanceStrings =
    if not PersistanceStrings_instanceSet:
        PersistanceStrings_instanceSet = true
        PersistanceStrings_instanceValue = newPersistanceStrings()
    PersistanceStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPersistanceStrings(this: PersistanceStrings) =
    this.SAVING = "Saving: "
    this.NUMBER_OF_RECORDS = "Number of records: "
    this.LOADING_ID = "Loading data with id: "
    this.LOAD_ALL = "loadAll"
    this.DELETING_WITH_ID = "Deleting data with id: "
    this.CLOSING_RECORDSTORE = "Closing RecordStore"
    this.NOT_SAVING = "Not Saving: "
    this.ERROR_LOADING = "Error Loading gameActionInput: "
    this.ERROR_LOADING_ID = "Error Loading id: "
    this.ID = " id: "
    this.GAME_ACTION_INPUT = " GameActionInput: "
    discard

proc initPersistanceStrings*(this: PersistanceStrings) =
    this.initFieldsPersistanceStrings()

proc newPersistanceStrings*(): PersistanceStrings =
    result = PersistanceStrings()
    initPersistanceStrings(result)

proc getInstance*(t: typedesc[PersistanceStrings]): PersistanceStrings {.discardable.} =
        return PersistanceStrings.instance

