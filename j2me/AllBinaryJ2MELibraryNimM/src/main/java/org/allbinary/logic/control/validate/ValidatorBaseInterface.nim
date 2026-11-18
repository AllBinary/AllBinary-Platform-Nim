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
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    ValidatorBaseInterface* = ref object of JObject


method isValid*(this: ValidatorBaseInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isValid")

method validationInfo*(this: ValidatorBaseInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "validationInfo")

method toHashtable*(this: ValidatorBaseInterface): ABHashtable {.base, discardable.} =
        raise newJException("AbstractMethodError", "toHashtable")

method toList*(this: ValidatorBaseInterface): BasicArrayList {.base, discardable.} =
        raise newJException("AbstractMethodError", "toList")

