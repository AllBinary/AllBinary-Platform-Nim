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
# package org.allbinary.logic.system.security.crypt.jcehelper

{.warning[UnusedImport]: off.}
import allbinary_java
import java/security/spec/KeySpec as KeySpecModule
export KeySpecModule

type
    KeySpecFactory* = ref object of JObject
        DES*: string
        DESEDE*: string
        BLOWFISH*: string

proc newKeySpecFactory*(): KeySpecFactory
proc initKeySpecFactory*(this: KeySpecFactory)
proc getInstance*(t: typedesc[KeySpecFactory]): KeySpecFactory {.discardable.}
method getInstance*(this: KeySpecFactory, algorithm: string, keyData: JArray[int8]): KeySpec {.base, discardable.}
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var KeySpecFactory_instanceValue: KeySpecFactory
var KeySpecFactory_instanceSet = false
proc instance*(t: typedesc[KeySpecFactory]): KeySpecFactory =
    if not KeySpecFactory_instanceSet:
        KeySpecFactory_instanceSet = true
        KeySpecFactory_instanceValue = newKeySpecFactory()
    KeySpecFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsKeySpecFactory(this: KeySpecFactory) =
    this.DES = "DES"
    this.DESEDE = "DESede"
    this.BLOWFISH = "Blowfish"
    discard

proc getInstance*(t: typedesc[KeySpecFactory]): KeySpecFactory {.discardable.} =
        return KeySpecFactory.instance

proc initKeySpecFactory*(this: KeySpecFactory) =
        this.initFieldsKeySpecFactory()
        discard

proc newKeySpecFactory*(): KeySpecFactory =
    result = KeySpecFactory()
    initKeySpecFactory(result)

method getInstance*(this: KeySpecFactory, algorithm: string, keyData: JArray[int8]): KeySpec {.base, discardable.} =
        try:
            let tsUtil: TsUtil = TsUtil.getInstance()
            if tsUtil.compareTo(algorithm, this.DES) == 0:
                return newDESKeySpec(keyData)
            elif tsUtil.compareTo(algorithm, this.DESEDE) == 0:
                return newDESedeKeySpec(keyData)
            else:
                raise newJException("RuntimeException", "")
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            raise newJException("RuntimeException", "")

