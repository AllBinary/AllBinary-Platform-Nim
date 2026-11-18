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
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule

# This is the information sent to the license server
type
    ClientInformation* = ref object of AbeClientInformationInterface
        operatingSystemInterface*: GenericOperatingSystem
        tsUtil*: TsUtil
        name*: string
        shortName*: string
        version*: string
        specialName*: string
        hardSale*: bool
        licenseId*: string
        licenseServers*: BasicArrayList

proc newClientInformation*(name: string, version: string, specialName: string, shortName: string): ClientInformation
proc initClientInformation*(this: ClientInformation, name: string, version: string, specialName: string, shortName: string)
method init*(this: ClientInformation)
method getOperatingSystemInterface*(this: ClientInformation): GenericOperatingSystem {.discardable.}
method getName*(this: ClientInformation): string {.discardable.}
method getSpecialName*(this: ClientInformation): string {.discardable.}
method getVersion*(this: ClientInformation): string {.discardable.}
method getLicenseId*(this: ClientInformation): string {.discardable.}
method getLicenseServers*(this: ClientInformation): BasicArrayList {.discardable.}
method getLicenseServer*(this: ClientInformation, index: int32): string {.discardable.}
method getNumberOfLicenseServers*(this: ClientInformation): int32 {.discardable.}
method toHashtable*(this: ClientInformation): ABHashtable {.discardable.}
method isSameId*(this: ClientInformation, alicenseId: string): bool {.discardable.}
method isLargerOrDifferentServerList*(this: ClientInformation, list: BasicArrayList): bool {.discardable.}
method setHardSale*(this: ClientInformation, hardSale: bool) {.base.}
method isHardSale*(this: ClientInformation): bool {.discardable.}
method setOperatingSystemInterface*(this: ClientInformation, operatingSystemInterface: GenericOperatingSystem) {.base.}
method setLicenseId*(this: ClientInformation, licenseId: string) {.base.}
method setLicenseServers*(this: ClientInformation, licenseServers: BasicArrayList) {.base.}
method toShortString*(this: ClientInformation): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/system/hardware/HardwareInterface as HardwareInterfaceModule
export HardwareInterfaceModule
import org/allbinary/logic/system/hardware/SystemHardwareFactory as SystemHardwareFactoryModule
export SystemHardwareFactoryModule
import org/allbinary/logic/system/os/NoOperatingSystem as NoOperatingSystemModule
export NoOperatingSystemModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationData as AbeClientInformationDataModule
export AbeClientInformationDataModule


# Java field initializers run after the base initializer
proc initFieldsClientInformation(this: ClientInformation) =
    this.operatingSystemInterface = NoOperatingSystem.NO_OPERATING_SYSTEMStatic
    this.tsUtil = TsUtil.getInstance()
    
    
    
    
    this.hardSale = true
    this.licenseId = StringUtil.getInstance().EMPTY_STRING
    this.licenseServers = BasicArrayListUtil.getInstance().getImmutableInstance()
    discard

proc initClientInformation*(this: ClientInformation, name: string, version: string, specialName: string, shortName: string) =
        this.initFieldsClientInformation()
        this.name = name
        this.version = version
        this.specialName = specialName
        this.shortName = newStringMaker().append(shortName).append(CommonSeps.getInstance().UNDERSCORE).append(version).toString()
        this.init()

proc newClientInformation*(name: string, version: string, specialName: string, shortName: string): ClientInformation =
    result = ClientInformation()
    initClientInformation(result, name, version, specialName, shortName)

method init*(this: ClientInformation) =
        discard

method getOperatingSystemInterface*(this: ClientInformation): GenericOperatingSystem {.discardable.} =
        return this.operatingSystemInterface

method getName*(this: ClientInformation): string {.discardable.} =
        return this.name

method getSpecialName*(this: ClientInformation): string {.discardable.} =
        return this.specialName

method getVersion*(this: ClientInformation): string {.discardable.} =
        return this.version

method getLicenseId*(this: ClientInformation): string {.discardable.} =
        return this.licenseId

method getLicenseServers*(this: ClientInformation): BasicArrayList {.discardable.} =
        return this.licenseServers

method getLicenseServer*(this: ClientInformation, index: int32): string {.discardable.} =
        return jstr(this.licenseServers.objectArray[index])

method getNumberOfLicenseServers*(this: ClientInformation): int32 {.discardable.} =
        return this.licenseServers.size()

method toHashtable*(this: ClientInformation): ABHashtable {.discardable.} =
        let abeClientInformationData: AbeClientInformationData = AbeClientInformationData.getInstance()
        let genericOperatingSystem: GenericOperatingSystem = this.getOperatingSystemInterface()
        let clientInfoHashtable: ABHashtable = StdUtil.getInstance().createHashtable()
        clientInfoHashtable.put(abeClientInformationData.NAME, this.name)
        clientInfoHashtable.put(abeClientInformationData.VERSION, this.version)
        clientInfoHashtable.put(abeClientInformationData.SPECIALNAME, this.specialName)
        clientInfoHashtable.put(abeClientInformationData.LICENSEID, this.getLicenseId())
        clientInfoHashtable.put(abeClientInformationData.OSNAME, genericOperatingSystem.getName())
        clientInfoHashtable.put(abeClientInformationData.OSARCH, genericOperatingSystem.getArch())
        clientInfoHashtable.put(abeClientInformationData.OSVERSION, genericOperatingSystem.getVersion())
        clientInfoHashtable.put(abeClientInformationData.OS, genericOperatingSystem.toString())
        let hardwareInterface: HardwareInterface = SystemHardwareFactory.getInstance().getInstance(genericOperatingSystem)
        var hardwareString: string = hardwareInterface.toString()
        clientInfoHashtable.put(abeClientInformationData.HARDWARE, hardwareString)
        return clientInfoHashtable

method isSameId*(this: ClientInformation, alicenseId: string): bool {.discardable.} =
        if this.tsUtil.compareTo(this.getLicenseId(), alicenseId) == 0:
            return true
        else:
            return false

method isLargerOrDifferentServerList*(this: ClientInformation, list: BasicArrayList): bool {.discardable.} =
        let size: int32 = list.size() -% 1
        let currentSize: int32 = this.licenseServers.size() -% 1
        if size > currentSize:
            return true
        block:
            var index: int32 = size
            while index >= 0:
                defer: index = index -% 1
                let newServerName: string = jstr(list.objectArray[index])
                block:
                    var index2: int32 = currentSize
                    while index2 >= 0:
                        defer: index2 = index2 -% 1
                        let nextOldServerName: string = jstr(this.licenseServers.objectArray[index])
                        if this.tsUtil.compareTo(newServerName, nextOldServerName) != 0:
                            return true
        return false

method setHardSale*(this: ClientInformation, hardSale: bool) {.base.} =
        this.hardSale = hardSale

method isHardSale*(this: ClientInformation): bool {.discardable.} =
        return this.hardSale

method setOperatingSystemInterface*(this: ClientInformation, operatingSystemInterface: GenericOperatingSystem) {.base.} =
        this.operatingSystemInterface = operatingSystemInterface

method setLicenseId*(this: ClientInformation, licenseId: string) {.base.} =
        this.licenseId = licenseId

method setLicenseServers*(this: ClientInformation, licenseServers: BasicArrayList) {.base.} =
        this.licenseServers = licenseServers

method toShortString*(this: ClientInformation): string {.discardable.} =
        return this.shortName

