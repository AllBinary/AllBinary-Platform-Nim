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
# package org.allbinary.logic.system.os

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/java/character/CharacterSet as CharacterSetModule
export CharacterSetModule

type
    OperatingSystemInterface* = ref object of JObject


method getName*(this: OperatingSystemInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getName")

method getVersion*(this: OperatingSystemInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getVersion")

method getArch*(this: OperatingSystemInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getArch")

method getCharacterSet*(this: OperatingSystemInterface): CharacterSet {.base, discardable.} =
        raise newJException("AbstractMethodError", "getCharacterSet")

method isOverScan*(this: OperatingSystemInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isOverScan")

method getOverScanXPercent*(this: OperatingSystemInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getOverScanXPercent")

method getOverScanYPercent*(this: OperatingSystemInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getOverScanYPercent")

method isScalable*(this: OperatingSystemInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isScalable")

method isAutoHide*(this: OperatingSystemInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isAutoHide")

method toString*(this: OperatingSystemInterface): string {.discardable.} =
        raise newJException("AbstractMethodError", "toString")

