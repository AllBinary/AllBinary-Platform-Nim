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
# package org.allbinary.string

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CommonLabels* = ref object of JObject
        WIDTH_LABEL*: string
        HEIGHT_LABEL*: string
        END_LABEL*: string
        TOTAL_LABEL*: string
        INDEX_LABEL*: string
        START_LABEL*: string
        COMMAND_LABEL*: string
        NAME_LABEL*: string
        START*: string
        ELAPSED*: string
        CURRENT*: string
        NEXT*: string
        ITEM_LABEL*: string
        RESULT_U*: string
        COLON_SEP*: string

proc newCommonLabels*(): CommonLabels
proc getInstance*(t: typedesc[CommonLabels]): CommonLabels {.discardable.}

var CommonLabels_instanceValue: CommonLabels
var CommonLabels_instanceSet = false
proc instance*(t: typedesc[CommonLabels]): CommonLabels =
    if not CommonLabels_instanceSet:
        CommonLabels_instanceSet = true
        CommonLabels_instanceValue = newCommonLabels()
    CommonLabels_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCommonLabels(this: CommonLabels) =
    this.WIDTH_LABEL = " Width: "
    this.HEIGHT_LABEL = " Height: "
    this.END_LABEL = "End: "
    this.TOTAL_LABEL = "Total: "
    this.INDEX_LABEL = "index: "
    this.START_LABEL = "Start: "
    this.COMMAND_LABEL = "Command: "
    this.NAME_LABEL = "Name: "
    this.START = this.START_LABEL
    this.ELAPSED = " Elapsed: "
    this.CURRENT = " Current: "
    this.NEXT = "Next"
    this.ITEM_LABEL = "Item: "
    this.RESULT_U = "Result: "
    this.COLON_SEP = ": "
    discard

proc initCommonLabels*(this: CommonLabels) =
    this.initFieldsCommonLabels()

proc newCommonLabels*(): CommonLabels =
    result = CommonLabels()
    initCommonLabels(result)

proc getInstance*(t: typedesc[CommonLabels]): CommonLabels {.discardable.} =
        return CommonLabels.instance

