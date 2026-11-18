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
# package org.allbinary.emulator.device

{.warning[UnusedImport]: off.}
import allbinary_java

type
    TrueTypeFontUtilBase* = ref object of JObject

proc newTrueTypeFontUtilBase*(scale: int32): TrueTypeFontUtilBase
proc initTrueTypeFontUtilBase*(this: TrueTypeFontUtilBase, scale: int32)
method getAsTextureSize*(this: TrueTypeFontUtilBase, textureSize: int32): int32 {.base, discardable.}
method getCellSize*(this: TrueTypeFontUtilBase, cellSize: int32): int32 {.base, discardable.}


proc initTrueTypeFontUtilBase*(this: TrueTypeFontUtilBase, scale: int32) =
        discard
        discard

proc newTrueTypeFontUtilBase*(scale: int32): TrueTypeFontUtilBase =
    result = TrueTypeFontUtilBase()
    initTrueTypeFontUtilBase(result, scale)

method getAsTextureSize*(this: TrueTypeFontUtilBase, textureSize: int32): int32 {.base, discardable.} =
        return -1

method getCellSize*(this: TrueTypeFontUtilBase, cellSize: int32): int32 {.base, discardable.} =
        return -1

