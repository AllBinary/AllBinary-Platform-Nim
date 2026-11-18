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
    PasswordValidator* = ref object of TextFieldItemValidator

proc newPasswordValidator*(textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): PasswordValidator
proc initPasswordValidator*(this: PasswordValidator, textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool)


proc initPasswordValidator*(this: PasswordValidator, textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool) =
        initTextFieldItemValidator(this, textFieldItem, min, max, allowOnEmpty)

proc newPasswordValidator*(textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): PasswordValidator =
    result = PasswordValidator()
    initPasswordValidator(result, textFieldItem, min, max, allowOnEmpty)

when declared(newPasswordValidatorHook4):
    newPasswordValidatorHook4 = proc (textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): TextFieldItemValidator = newPasswordValidator(textFieldItem, min, max, allowOnEmpty)

