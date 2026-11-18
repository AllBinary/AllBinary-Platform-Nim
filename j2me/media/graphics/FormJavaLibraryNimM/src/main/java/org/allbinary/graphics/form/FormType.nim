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

type
    FormType* = ref object of JObject
        name*: string

proc newFormType*(name: string): FormType
proc initFormType*(this: FormType, name: string)
method toString*(this: FormType): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsFormType(this: FormType) =
    
    discard

proc initFormType*(this: FormType, name: string) =
        this.initFieldsFormType()
        this.name = name

proc newFormType*(name: string): FormType =
    result = FormType()
    initFormType(result, name)

method toString*(this: FormType): string {.discardable.} =
        return this.name

