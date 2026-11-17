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
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayListS as BasicArrayListSModule
export BasicArrayListSModule

type
    ImmutableBasicArrayList* = ref object of BasicArrayListS
        name*: string

proc newImmutableBasicArrayList*(name: string, size: int32): ImmutableBasicArrayList
proc initImmutableBasicArrayList*(this: ImmutableBasicArrayList, name: string, size: int32)
method add*(this: ImmutableBasicArrayList, e: JObject): bool {.discardable.}
method addAt*(this: ImmutableBasicArrayList, index: int32, element: JObject)
method toString*(this: ImmutableBasicArrayList): string {.discardable.}
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule


# Java field initializers run after the base initializer
proc initFieldsImmutableBasicArrayList(this: ImmutableBasicArrayList) =
    
    discard

proc initImmutableBasicArrayList*(this: ImmutableBasicArrayList, name: string, size: int32) =
        initBasicArrayListS(this, size)
        this.initFieldsImmutableBasicArrayList()
        this.name = name

proc newImmutableBasicArrayList*(name: string, size: int32): ImmutableBasicArrayList =
    result = ImmutableBasicArrayList()
    initImmutableBasicArrayList(result, name, size)

method add*(this: ImmutableBasicArrayList, e: JObject): bool {.discardable.} =
        ForcedLogUtil.log(this.name, this)
        return true

method addAt*(this: ImmutableBasicArrayList, index: int32, element: JObject) =
        ForcedLogUtil.log(this.name, this)

method toString*(this: ImmutableBasicArrayList): string {.discardable.} =
        return this.name

when declared(newImmutableBasicArrayListHook2):
    newImmutableBasicArrayListHook2 = proc (name: string, size: int32): BasicArrayListS = newImmutableBasicArrayList(name, size)

