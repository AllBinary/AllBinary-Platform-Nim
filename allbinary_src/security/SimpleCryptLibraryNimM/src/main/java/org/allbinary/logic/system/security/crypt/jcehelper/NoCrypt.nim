#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.crypt.jcehelper

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/init/crypt/jcehelper/CryptInterface as CryptInterfaceModule
export CryptInterfaceModule

type
    NoCrypt* = ref object of CryptInterface

proc newNoCrypt*(): NoCrypt
method encrypt*(this: NoCrypt, array: JArray[int8]): JArray[int8] {.discardable.}
method decrypt*(this: NoCrypt, array: JArray[int8]): JArray[int8] {.discardable.}


proc initNoCrypt*(this: NoCrypt) =
    discard

proc newNoCrypt*(): NoCrypt =
    result = NoCrypt()
    initNoCrypt(result)

method encrypt*(this: NoCrypt, array: JArray[int8]): JArray[int8] {.discardable.} =
        return array

method decrypt*(this: NoCrypt, array: JArray[int8]): JArray[int8] {.discardable.} =
        return array

