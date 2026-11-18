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
# package org.allbinary.thirdparty.store

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/thirdparty/store/ThirdPartyStore as ThirdPartyStoreModule
export ThirdPartyStoreModule

type
    NoThirdPartyStore* = ref object of ThirdPartyStore

proc newNoThirdPartyStore*(): NoThirdPartyStore
proc initNoThirdPartyStore*(this: NoThirdPartyStore)
method authorize*(this: NoThirdPartyStore, clientInformationInterface: AbeClientInformationInterface)
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initNoThirdPartyStore*(this: NoThirdPartyStore) =
        initThirdPartyStore(this, StringUtil.getInstance().EMPTY_STRING)

proc newNoThirdPartyStore*(): NoThirdPartyStore =
    result = NoThirdPartyStore()
    initNoThirdPartyStore(result)

method authorize*(this: NoThirdPartyStore, clientInformationInterface: AbeClientInformationInterface) =
        this.setAuthorized(true)

when declared(newNoThirdPartyStoreHook0):
    newNoThirdPartyStoreHook0 = proc (): ThirdPartyStore = newNoThirdPartyStore()

