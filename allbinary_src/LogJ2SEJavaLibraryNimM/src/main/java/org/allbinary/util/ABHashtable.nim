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
import java/util/Hashtable as HashtableModule
export HashtableModule

type
    ABHashtable* = ref object of Hashtable

proc newABHashtable*(initialCapacity: int32): ABHashtable
proc newABHashtable*(): ABHashtable
proc initABHashtable*(this: ABHashtable, initialCapacity: int32)
proc initABHashtable*(this: ABHashtable)


proc initABHashtable*(this: ABHashtable, initialCapacity: int32) =
        initHashtable(this, initialCapacity)

proc newABHashtable*(initialCapacity: int32): ABHashtable =
    result = ABHashtable()
    initABHashtable(result, initialCapacity)

proc initABHashtable*(this: ABHashtable) =
        initHashtable(this)

proc newABHashtable*(): ABHashtable =
    result = ABHashtable()
    initABHashtable(result)

when declared(newABHashtableHook1):
    newABHashtableHook1 = proc (initialCapacity: int32): Hashtable = newABHashtable(initialCapacity)

when declared(newABHashtableHook0):
    newABHashtableHook0 = proc (): Hashtable = newABHashtable()

