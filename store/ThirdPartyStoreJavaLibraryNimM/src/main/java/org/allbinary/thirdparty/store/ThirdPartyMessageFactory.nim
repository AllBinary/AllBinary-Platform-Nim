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

type
    ThirdPartyMessageFactory* = ref object of JObject
        AUTHORIZED*: string
        NOT_AUTHORIZED*: string
        LINKAGE_ERROR*: string

proc newThirdPartyMessageFactory*(): ThirdPartyMessageFactory
proc getInstance*(t: typedesc[ThirdPartyMessageFactory]): ThirdPartyMessageFactory {.discardable.}

var ThirdPartyMessageFactory_instanceValue: ThirdPartyMessageFactory
var ThirdPartyMessageFactory_instanceSet = false
proc instance*(t: typedesc[ThirdPartyMessageFactory]): ThirdPartyMessageFactory =
    if not ThirdPartyMessageFactory_instanceSet:
        ThirdPartyMessageFactory_instanceSet = true
        ThirdPartyMessageFactory_instanceValue = newThirdPartyMessageFactory()
    ThirdPartyMessageFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsThirdPartyMessageFactory(this: ThirdPartyMessageFactory) =
    this.AUTHORIZED = "Authorized"
    this.NOT_AUTHORIZED = "Not Authorized"
    this.LINKAGE_ERROR = "Linkage Error"
    discard

proc initThirdPartyMessageFactory*(this: ThirdPartyMessageFactory) =
    this.initFieldsThirdPartyMessageFactory()

proc newThirdPartyMessageFactory*(): ThirdPartyMessageFactory =
    result = ThirdPartyMessageFactory()
    initThirdPartyMessageFactory(result)

proc getInstance*(t: typedesc[ThirdPartyMessageFactory]): ThirdPartyMessageFactory {.discardable.} =
        return ThirdPartyMessageFactory.instance

