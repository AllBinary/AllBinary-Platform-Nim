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
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule

type
    CustomItemUtil* = ref object of JObject
        CUSTOM_ITEM_ARRAY*: JArray[ABCustomItem]

proc newCustomItemUtil*(): CustomItemUtil
proc getInstance*(t: typedesc[CustomItemUtil]): CustomItemUtil {.discardable.}

var CustomItemUtil_instanceValue: CustomItemUtil
var CustomItemUtil_instanceSet = false
proc instance*(t: typedesc[CustomItemUtil]): CustomItemUtil =
    if not CustomItemUtil_instanceSet:
        CustomItemUtil_instanceSet = true
        CustomItemUtil_instanceValue = newCustomItemUtil()
    CustomItemUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCustomItemUtil(this: CustomItemUtil) =
    this.CUSTOM_ITEM_ARRAY = newJArray[ABCustomItem](0, default(ABCustomItem))
    discard

proc initCustomItemUtil*(this: CustomItemUtil) =
    this.initFieldsCustomItemUtil()

proc newCustomItemUtil*(): CustomItemUtil =
    result = CustomItemUtil()
    initCustomItemUtil(result)

proc getInstance*(t: typedesc[CustomItemUtil]): CustomItemUtil {.discardable.} =
        return CustomItemUtil.instance

