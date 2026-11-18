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
# package org.allbinary.media

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AllBinaryVibrationME* = ref object of JObject

proc newAllBinaryVibrationME*(): AllBinaryVibrationME
method vibrate*(this: AllBinaryVibrationME, duration: int32, `type`: int32, volume: int32) {.base.}


proc initAllBinaryVibrationME*(this: AllBinaryVibrationME) =
    discard

proc newAllBinaryVibrationME*(): AllBinaryVibrationME =
    result = AllBinaryVibrationME()
    initAllBinaryVibrationME(result)

method vibrate*(this: AllBinaryVibrationME, duration: int32, `type`: int32, volume: int32) {.base.} =
        discard

