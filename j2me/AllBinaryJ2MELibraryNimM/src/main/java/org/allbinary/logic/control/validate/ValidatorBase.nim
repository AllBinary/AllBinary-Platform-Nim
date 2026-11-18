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
# package org.allbinary.logic.control.validate

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Boolean as BooleanModule
export BooleanModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/logic/control/validate/ValidatorBaseInterface as ValidatorBaseInterfaceModule
export ValidatorBaseInterfaceModule

type
    ValidatorBase* = ref object of ValidatorBaseInterface

proc newValidatorBase*(): ValidatorBase
proc initValidatorBase*(this: ValidatorBase)
proc getInstance*(t: typedesc[ValidatorBase]): ValidatorBase {.discardable.}
method isValid*(this: ValidatorBase): bool {.discardable.}
method validationInfo*(this: ValidatorBase): string {.discardable.}
method toHashtable*(this: ValidatorBase): ABHashtable {.discardable.}
method toList*(this: ValidatorBase): BasicArrayList {.discardable.}
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule

var ValidatorBase_instanceValue: ValidatorBase
var ValidatorBase_instanceSet = false
proc instance*(t: typedesc[ValidatorBase]): ValidatorBase =
    if not ValidatorBase_instanceSet:
        ValidatorBase_instanceSet = true
        ValidatorBase_instanceValue = newValidatorBase()
    ValidatorBase_instanceValue

proc getInstance*(t: typedesc[ValidatorBase]): ValidatorBase {.discardable.} =
        return ValidatorBase.instance

proc initValidatorBase*(this: ValidatorBase) =
        discard
        discard

proc newValidatorBase*(): ValidatorBase =
    result = ValidatorBase()
    initValidatorBase(result)

method isValid*(this: ValidatorBase): bool {.discardable.} =
        return BooleanFactory.getInstance().TRUE

method validationInfo*(this: ValidatorBase): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method toHashtable*(this: ValidatorBase): ABHashtable {.discardable.} =
        return StdUtil.getInstance().NULL_TABLE

method toList*(this: ValidatorBase): BasicArrayList {.discardable.} =
        return BasicArrayListUtil.getInstance().getImmutableInstance()

