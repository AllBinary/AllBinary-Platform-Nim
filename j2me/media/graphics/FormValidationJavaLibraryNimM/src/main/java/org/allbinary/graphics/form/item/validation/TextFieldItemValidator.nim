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
import java/lang/Boolean as BooleanModule
export BooleanModule
import org/allbinary/graphics/form/item/ABTextFieldItem as ABTextFieldItemModule
export ABTextFieldItemModule
import org/allbinary/logic/control/validate/ValidatorBase as ValidatorBaseModule
export ValidatorBaseModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    TextFieldItemValidator* = ref object of ValidatorBase
        textFieldItem*: ABTextFieldItem
        min*: int32
        max*: int32
        allowOnEmpty*: bool

proc newTextFieldItemValidator*(textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): TextFieldItemValidator
proc initTextFieldItemValidator*(this: TextFieldItemValidator, textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool)
method isValid*(this: TextFieldItemValidator): bool {.discardable.}
method toList*(this: TextFieldItemValidator): BasicArrayList {.discardable.}
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsTextFieldItemValidator(this: TextFieldItemValidator) =
    
    
    
    
    discard

proc initTextFieldItemValidator*(this: TextFieldItemValidator, textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool) =
        initValidatorBase(this)
        this.initFieldsTextFieldItemValidator()
        this.textFieldItem = textFieldItem
        this.min = min
        this.max = max
        this.allowOnEmpty = allowOnEmpty

proc newTextFieldItemValidator*(textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): TextFieldItemValidator =
    result = TextFieldItemValidator()
    initTextFieldItemValidator(result, textFieldItem, min, max, allowOnEmpty)

method isValid*(this: TextFieldItemValidator): bool {.discardable.} =
        var booleanFactory: BooleanFactory = BooleanFactory.getInstance()
        var `result`: bool = booleanFactory.TRUE
        let string: string = this.textFieldItem.getString()
        var textLength: int32 = jLength(string)
        if (textLength == 0 and this.allowOnEmpty) or textLength > this.min and textLength < this.max:
            discard
        else:
            if textLength < this.min:
                `result` = booleanFactory.FALSE
            elif textLength > this.max:
                `result` = booleanFactory.FALSE
        return `result`

method toList*(this: TextFieldItemValidator): BasicArrayList {.discardable.} =
        let list: BasicArrayList = newBasicArrayListD()
        let string: string = this.textFieldItem.getString()
        var textLength: int32 = jLength(string)
        if textLength > this.min and textLength < this.max:
            discard
        else:
            let label: string = this.textFieldItem.getLabel()
            let name: string = jSubstring(label, 0, jLength(label) -% 2)
            if textLength < this.min:
                list.add(newStringMaker().append(name).append(" is to short").toString())
            elif textLength > this.max:
                list.add(newStringMaker().append(name).append(" is to long").toString())
        return list

when declared(newTextFieldItemValidatorHook4):
    newTextFieldItemValidatorHook4 = proc (textFieldItem: ABTextFieldItem, min: int32, max: int32, allowOnEmpty: bool): ValidatorBase = newTextFieldItemValidator(textFieldItem, min, max, allowOnEmpty)

