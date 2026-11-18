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
# package org.allbinary.game.paint.help

{.warning[UnusedImport]: off.}
import allbinary_java

type
    UpdateMyFontProperties* = ref object of JObject
        actionStringArray*: JArray[string]
        keymappingBeginWidthArray*: JArray[int32]
        actionStringDeltaXArray*: JArray[int32]
        inputDeltaXArray*: JArray[JArray[int32]]
        sepArray*: JArray[JArray[string]]
        sepWidthArray*: JArray[JArray[int32]]
        charHeight*: int32

proc newUpdateMyFontProperties*(): UpdateMyFontProperties
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsUpdateMyFontProperties(this: UpdateMyFontProperties) =
    this.actionStringArray = StringUtil.getInstance().getArrayInstance()
    this.keymappingBeginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
    this.actionStringDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY
    this.inputDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
    this.sepArray = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
    this.sepWidthArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
    this.charHeight = 0
    discard

proc initUpdateMyFontProperties*(this: UpdateMyFontProperties) =
    this.initFieldsUpdateMyFontProperties()

proc newUpdateMyFontProperties*(): UpdateMyFontProperties =
    result = UpdateMyFontProperties()
    initUpdateMyFontProperties(result)

