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
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Boolean as BooleanModule
export BooleanModule
import org/allbinary/graphics/form/item/ABTextFieldItem as ABTextFieldItemModule
export ABTextFieldItemModule
import org/allbinary/logic/control/validate/ValidatorBase as ValidatorBaseModule
export ValidatorBaseModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    NumberTextFieldItemValidator* = ref object of ValidatorBase
        textFieldItem*: ABTextFieldItem
        min*: int32
        max*: int32
        maxChars*: int32

proc newNumberTextFieldItemValidator*(textFieldItem: ABTextFieldItem, maxChars: int32, min: int32, max: int32): NumberTextFieldItemValidator
proc initNumberTextFieldItemValidator*(this: NumberTextFieldItemValidator, textFieldItem: ABTextFieldItem, maxChars: int32, min: int32, max: int32)
method isNumberValid*(this: NumberTextFieldItemValidator, value: int32): bool {.base, discardable.}
method toNumberVector*(this: NumberTextFieldItemValidator, value: int32): BasicArrayList {.base, discardable.}
method isValid*(this: NumberTextFieldItemValidator): bool {.discardable.}
method toList*(this: NumberTextFieldItemValidator): BasicArrayList {.discardable.}
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsNumberTextFieldItemValidator(this: NumberTextFieldItemValidator) =
    
    
    
    
    discard

proc initNumberTextFieldItemValidator*(this: NumberTextFieldItemValidator, textFieldItem: ABTextFieldItem, maxChars: int32, min: int32, max: int32) =
        initValidatorBase(this)
        this.initFieldsNumberTextFieldItemValidator()
        this.textFieldItem = textFieldItem
        this.min = min
        this.max = max
        this.maxChars = maxChars

proc newNumberTextFieldItemValidator*(textFieldItem: ABTextFieldItem, maxChars: int32, min: int32, max: int32): NumberTextFieldItemValidator =
    result = NumberTextFieldItemValidator()
    initNumberTextFieldItemValidator(result, textFieldItem, maxChars, min, max)

method isNumberValid*(this: NumberTextFieldItemValidator, value: int32): bool {.base, discardable.} =
        return BooleanFactory.getInstance().TRUE

method toNumberVector*(this: NumberTextFieldItemValidator, value: int32): BasicArrayList {.base, discardable.} =
        return newBasicArrayListD()

method isValid*(this: NumberTextFieldItemValidator): bool {.discardable.} =
        var `result`: bool = BooleanFactory.getInstance().TRUE
        let string: string = this.textFieldItem.getString()
        var textLength: int32 = jLength(string)
        if textLength > 0 and textLength < this.maxChars:
            try:
                jParseInt(this.textFieldItem.getString())
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                `result` = BooleanFactory.getInstance().FALSE
        else:
            if textLength < 1:
                `result` = BooleanFactory.getInstance().FALSE
            elif textLength > this.maxChars:
                `result` = BooleanFactory.getInstance().FALSE
        return `result`

method toList*(this: NumberTextFieldItemValidator): BasicArrayList {.discardable.} =
        let list: BasicArrayList = newBasicArrayListD()
        let string: string = this.textFieldItem.getString()
        var textLength: int32 = jLength(string)
        let label: string = this.textFieldItem.getLabel()
        let name: string = jSubstring(label, 0, jLength(label) -% 2)
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        let stringMaker: StringMaker = newStringMaker()
        if textLength > 0 and textLength < this.maxChars:
            try:
                var number: int32 = smallIntegerSingletonFactory.createInstance(jParseInt(this.textFieldItem.getString()))
                if number.intValue() > this.min:
                    stringMaker.delete(0, stringMaker.length())
                    list.add(stringMaker.append(name).append(" is to small").toString())
                elif number.intValue() > this.max:
                    stringMaker.delete(0, stringMaker.length())
                    list.add(stringMaker.append(name).append(" is to large").toString())
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is not a number").toString())
        else:
            if textLength < 1:
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is to short").toString())
            elif textLength > this.maxChars:
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is to long").toString())
        return list

when declared(newNumberTextFieldItemValidatorHook4):
    newNumberTextFieldItemValidatorHook4 = proc (textFieldItem: ABTextFieldItem, maxChars: int32, min: int32, max: int32): ValidatorBase = newNumberTextFieldItemValidator(textFieldItem, maxChars, min, max)

