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
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    AbeClientInformationInterface* = ref object of JObject


method init*(this: AbeClientInformationInterface) {.base.} =
        raise newJException("AbstractMethodError", "init")

method getOperatingSystemInterface*(this: AbeClientInformationInterface): GenericOperatingSystem {.base, discardable.} =
        raise newJException("AbstractMethodError", "getOperatingSystemInterface")

method getName*(this: AbeClientInformationInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getName")

method getSpecialName*(this: AbeClientInformationInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getSpecialName")

method getVersion*(this: AbeClientInformationInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getVersion")

method getLicenseId*(this: AbeClientInformationInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLicenseId")

method getLicenseServers*(this: AbeClientInformationInterface): BasicArrayList {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLicenseServers")

method getLicenseServer*(this: AbeClientInformationInterface, index: int32): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLicenseServer")

method getNumberOfLicenseServers*(this: AbeClientInformationInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getNumberOfLicenseServers")

method toHashtable*(this: AbeClientInformationInterface): ABHashtable {.base, discardable.} =
        raise newJException("AbstractMethodError", "toHashtable")

method isSameId*(this: AbeClientInformationInterface, alicenseId: string): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isSameId")

method isLargerOrDifferentServerList*(this: AbeClientInformationInterface, vector: BasicArrayList): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isLargerOrDifferentServerList")

method isHardSale*(this: AbeClientInformationInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isHardSale")

method toShortString*(this: AbeClientInformationInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "toShortString")

