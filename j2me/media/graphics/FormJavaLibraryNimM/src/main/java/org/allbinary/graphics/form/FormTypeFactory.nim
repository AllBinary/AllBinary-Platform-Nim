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
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/form/FormType as FormTypeModule
export FormTypeModule

type
    FormTypeFactory* = ref object of JObject
        UNK*: string
        NULL_FORM_TYPE*: FormType
        TEMP_HORIZONTAL_FORM*: FormType
        HORIZONTAL_FORM*: FormType
        VERTICAL_CENTER_FORM*: FormType

proc newFormTypeFactory*(): FormTypeFactory
proc getInstance*(t: typedesc[FormTypeFactory]): FormTypeFactory {.discardable.}
method getFormType*(this: FormTypeFactory): FormType {.base, discardable.}
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var FormTypeFactory_instanceValue: FormTypeFactory
var FormTypeFactory_instanceSet = false
proc instance*(t: typedesc[FormTypeFactory]): FormTypeFactory =
    if not FormTypeFactory_instanceSet:
        FormTypeFactory_instanceSet = true
        FormTypeFactory_instanceValue = newFormTypeFactory()
    FormTypeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsFormTypeFactory(this: FormTypeFactory) =
    this.UNK = "Unknown FormType"
    this.NULL_FORM_TYPE = newFormType(StringUtil.getInstance().NULL_STRING)
    this.TEMP_HORIZONTAL_FORM = newFormType("TempHorizontal")
    this.HORIZONTAL_FORM = newFormType("Horizontal")
    this.VERTICAL_CENTER_FORM = newFormType("Vertical")
    discard

proc initFormTypeFactory*(this: FormTypeFactory) =
    this.initFieldsFormTypeFactory()

proc newFormTypeFactory*(): FormTypeFactory =
    result = FormTypeFactory()
    initFormTypeFactory(result)

proc getInstance*(t: typedesc[FormTypeFactory]): FormTypeFactory {.discardable.} =
        return FormTypeFactory.instance

method getFormType*(this: FormTypeFactory): FormType {.base, discardable.} =
        var displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        var formType: FormType = nil
        if displayInfo.isPortrait():
            formType = this.VERTICAL_CENTER_FORM
        else:
            formType = this.HORIZONTAL_FORM
        return formType

