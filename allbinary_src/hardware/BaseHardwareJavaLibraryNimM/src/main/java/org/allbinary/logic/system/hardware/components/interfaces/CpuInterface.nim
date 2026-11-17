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
# package org.allbinary.logic.system.hardware.components.interfaces

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CpuInterface* = ref object of JObject


method getProcessor*(this: CpuInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getProcessor")

method getVendorId*(this: CpuInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getVendorId")

method getCpuFamily*(this: CpuInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getCpuFamily")

method getModel*(this: CpuInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getModel")

method getModelName*(this: CpuInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getModelName")

method getStepping*(this: CpuInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getStepping")

method getCpuSpeed*(this: CpuInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getCpuSpeed")

method getCacheSize*(this: CpuInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getCacheSize")

method compareTo*(this: CpuInterface, cpuInterface: CpuInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "compareTo")

