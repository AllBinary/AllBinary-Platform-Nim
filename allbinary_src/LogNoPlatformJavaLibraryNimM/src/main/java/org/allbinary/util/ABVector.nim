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
import java/util/Vector as VectorModule
export VectorModule

type
    ABVector* = ref object of Vector

proc newABVector*(): ABVector


proc initABVector*(this: ABVector) =
    initVector(this)

proc newABVector*(): ABVector =
    result = ABVector()
    initABVector(result)

when declared(newABVectorHook0):
    newABVectorHook0 = proc (): Vector = newABVector()

