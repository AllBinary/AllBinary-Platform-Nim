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
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayListS as BasicArrayListSModule
export BasicArrayListSModule

type
    BasicArrayListD* = ref object of BasicArrayListS

proc newBasicArrayListD*(): BasicArrayListD
proc initBasicArrayListD*(this: BasicArrayListD)


proc initBasicArrayListD*(this: BasicArrayListD) =
        initBasicArrayListS(this, 7)

proc newBasicArrayListD*(): BasicArrayListD =
    result = BasicArrayListD()
    initBasicArrayListD(result)

when declared(newBasicArrayListDHook0):
    newBasicArrayListDHook0 = proc (): BasicArrayListS = newBasicArrayListD()

