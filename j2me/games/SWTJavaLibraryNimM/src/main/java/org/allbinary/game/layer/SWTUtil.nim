#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java

type
    SWTUtil* = ref object of JObject

proc newSWTUtil*(): SWTUtil

var SWTUtil_isSWTValue: bool
var SWTUtil_isSWTSet = false
proc isSWT*(t: typedesc[SWTUtil]): bool =
    if not SWTUtil_isSWTSet:
        SWTUtil_isSWTSet = true
        SWTUtil_isSWTValue = true
    SWTUtil_isSWTValue
proc `isSWT=`*(t: typedesc[SWTUtil], value: bool) =
    SWTUtil_isSWTSet = true
    SWTUtil_isSWTValue = value
var SWTUtil_SWTValue: string
var SWTUtil_SWTSet = false
proc SWT*(t: typedesc[SWTUtil]): string =
    if not SWTUtil_SWTSet:
        SWTUtil_SWTSet = true
        SWTUtil_SWTValue = "SWT"
    SWTUtil_SWTValue
proc `SWT=`*(t: typedesc[SWTUtil], value: string) =
    SWTUtil_SWTSet = true
    SWTUtil_SWTValue = value

proc initSWTUtil*(this: SWTUtil) =
    discard

proc newSWTUtil*(): SWTUtil =
    result = SWTUtil()
    initSWTUtil(result)

