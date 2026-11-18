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
# package org.allbinary.graphics.form.item.validation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/form/item/ABTextFieldItem as ABTextFieldItemModule
export ABTextFieldItemModule
import org/allbinary/graphics/form/item/validation/TextFieldItemValidator as TextFieldItemValidatorModule
export TextFieldItemValidatorModule

type
    UsernameValidator* = ref object of TextFieldItemValidator

proc newUsernameValidator*(textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): UsernameValidator
proc initUsernameValidator*(this: UsernameValidator, textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool)


proc initUsernameValidator*(this: UsernameValidator, textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool) =
        initTextFieldItemValidator(this, textFieldItem, min, max, allowOnEmpty)

proc newUsernameValidator*(textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): UsernameValidator =
    result = UsernameValidator()
    initUsernameValidator(result, textFieldItem, min, max, allowOnEmpty)

when declared(newUsernameValidatorHook4):
    newUsernameValidatorHook4 = proc (textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): TextFieldItemValidator = newUsernameValidator(textFieldItem, min, max, allowOnEmpty)

