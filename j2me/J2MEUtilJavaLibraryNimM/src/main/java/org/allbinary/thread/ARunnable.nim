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
import java/lang/Runnable as RunnableModule
export RunnableModule

type
    ARunnable* = ref object of Runnable

proc newARunnable*(): ARunnable
method run*(this: ARunnable)


proc initARunnable*(this: ARunnable) =
    discard

proc newARunnable*(): ARunnable =
    result = ARunnable()
    initARunnable(result)

method run*(this: ARunnable) =
        discard

