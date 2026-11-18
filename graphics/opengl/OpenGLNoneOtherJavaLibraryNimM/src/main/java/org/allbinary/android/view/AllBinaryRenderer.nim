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
# package org.allbinary.android.view

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule

type
    AllBinaryRenderer* = ref object of JObject

proc newAllBinaryRenderer*(): AllBinaryRenderer
proc getInstance*(t: typedesc[AllBinaryRenderer]): AllBinaryRenderer {.discardable.}
method setRunnable*(this: AllBinaryRenderer, runnable: Runnable) {.base.}
method clearRunnable*(this: AllBinaryRenderer) {.base.}

var AllBinaryRenderer_instanceValue: AllBinaryRenderer
var AllBinaryRenderer_instanceSet = false
proc instance*(t: typedesc[AllBinaryRenderer]): AllBinaryRenderer =
    if not AllBinaryRenderer_instanceSet:
        AllBinaryRenderer_instanceSet = true
        AllBinaryRenderer_instanceValue = newAllBinaryRenderer()
    AllBinaryRenderer_instanceValue

proc initAllBinaryRenderer*(this: AllBinaryRenderer) =
    discard

proc newAllBinaryRenderer*(): AllBinaryRenderer =
    result = AllBinaryRenderer()
    initAllBinaryRenderer(result)

proc getInstance*(t: typedesc[AllBinaryRenderer]): AllBinaryRenderer {.discardable.} =
        return AllBinaryRenderer.instance

method setRunnable*(this: AllBinaryRenderer, runnable: Runnable) {.base.} =
        discard

method clearRunnable*(this: AllBinaryRenderer) {.base.} =
        discard

