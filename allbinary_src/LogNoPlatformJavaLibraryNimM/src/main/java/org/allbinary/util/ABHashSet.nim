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
import java/util/HashSet as HashSetModule
export HashSetModule

type
    ABHashSet* = ref object of HashSet

proc newABHashSet*(): ABHashSet


proc initABHashSet*(this: ABHashSet) =
    initHashSet(this)

proc newABHashSet*(): ABHashSet =
    result = ABHashSet()
    initABHashSet(result)

when declared(newABHashSetHook0):
    newABHashSetHook0 = proc (): HashSet = newABHashSet()

