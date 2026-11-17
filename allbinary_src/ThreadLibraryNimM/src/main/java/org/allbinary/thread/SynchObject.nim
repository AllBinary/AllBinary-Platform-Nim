#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.thread

{.warning[UnusedImport]: off.}
import allbinary_java

type
    SynchObject* = ref object of JObject

proc newSynchObject*(): SynchObject


proc initSynchObject*(this: SynchObject) =
    discard

proc newSynchObject*(): SynchObject =
    result = SynchObject()
    initSynchObject(result)

