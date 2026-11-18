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
# package org.allbinary.business.init

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    LicenseInitInfo* = ref object of JObject
        id*: string
        serverList*: BasicArrayList

proc newLicenseInitInfo*(): LicenseInitInfo
proc initLicenseInitInfo*(this: LicenseInitInfo)
method getLicenseId*(this: LicenseInitInfo): string {.base, discardable.}
method getServer*(this: LicenseInitInfo, index: int32): string {.base, discardable.}
method getNumberOfServers*(this: LicenseInitInfo): int32 {.base, discardable.}
method setLicenseId*(this: LicenseInitInfo, value: string) {.base.}
method clearServers*(this: LicenseInitInfo) {.base.}
method setServer*(this: LicenseInitInfo, value: string, index: int32) {.base.}
method addServer*(this: LicenseInitInfo, value: string) {.base.}
method getServerList*(this: LicenseInitInfo): BasicArrayList {.base, discardable.}
method setServerList*(this: LicenseInitInfo, servers: BasicArrayList) {.base.}
import org/allbinary/debug/DebugFactory as DebugFactoryModule
export DebugFactoryModule
import org/allbinary/debug/NoDebug as NoDebugModule
export NoDebugModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsLicenseInitInfo(this: LicenseInitInfo) =
    this.id = StringUtil.getInstance().EMPTY_STRING
    this.serverList = newBasicArrayListD()
    discard

proc initLicenseInitInfo*(this: LicenseInitInfo) =
        this.initFieldsLicenseInitInfo()
        discard

proc newLicenseInitInfo*(): LicenseInitInfo =
    result = LicenseInitInfo()
    initLicenseInitInfo(result)

method getLicenseId*(this: LicenseInitInfo): string {.base, discardable.} =
        return this.id

method getServer*(this: LicenseInitInfo, index: int32): string {.base, discardable.} =
        return jstr(this.serverList.get(index))

method getNumberOfServers*(this: LicenseInitInfo): int32 {.base, discardable.} =
        return this.serverList.size()

method setLicenseId*(this: LicenseInitInfo, value: string) {.base.} =
        this.id = value

method clearServers*(this: LicenseInitInfo) {.base.} =
        this.serverList.clear()

method setServer*(this: LicenseInitInfo, value: string, index: int32) {.base.} =
        this.serverList.addAt(index, value)

method addServer*(this: LicenseInitInfo, value: string) {.base.} =
        this.serverList.add(value)

method getServerList*(this: LicenseInitInfo): BasicArrayList {.base, discardable.} =
        return this.serverList

method setServerList*(this: LicenseInitInfo, servers: BasicArrayList) {.base.} =
        if DebugFactory.getInstance() == NoDebug.getInstance():
            this.serverList = servers

