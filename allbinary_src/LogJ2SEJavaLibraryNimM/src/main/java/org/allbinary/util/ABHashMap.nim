#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import java/util/HashMap as HashMapModule
export HashMapModule

type
    ABHashMap* = ref object of HashMap

proc newABHashMap*(): ABHashMap


proc initABHashMap*(this: ABHashMap) =
    initHashMap(this)

proc newABHashMap*(): ABHashMap =
    result = ABHashMap()
    initABHashMap(result)

when declared(newABHashMapHook0):
    newABHashMapHook0 = proc (): HashMap = newABHashMap()

