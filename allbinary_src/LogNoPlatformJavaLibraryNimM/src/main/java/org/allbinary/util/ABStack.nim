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
import java/util/Stack as StackModule
export StackModule

type
    ABStack* = ref object of Stack

proc newABStack*(): ABStack


proc initABStack*(this: ABStack) =
    initStack(this)

proc newABStack*(): ABStack =
    result = ABStack()
    initABStack(result)

when declared(newABStackHook0):
    newABStackHook0 = proc (): Stack = newABStack()

