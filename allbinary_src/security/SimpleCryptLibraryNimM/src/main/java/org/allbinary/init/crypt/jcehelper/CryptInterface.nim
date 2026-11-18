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
# package org.allbinary.init.crypt.jcehelper

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CryptInterface* = ref object of JObject


method encrypt*(this: CryptInterface, array: JArray[int8]): JArray[int8] {.base, discardable.} =
        raise newJException("AbstractMethodError", "encrypt")

method decrypt*(this: CryptInterface, array: JArray[int8]): JArray[int8] {.base, discardable.} =
        raise newJException("AbstractMethodError", "decrypt")

