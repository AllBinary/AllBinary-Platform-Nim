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
import java/security/Security as SecurityModule
export SecurityModule
import java/security/spec/KeySpec as KeySpecModule
export KeySpecModule
import javax/crypto/Cipher as CipherModule
export CipherModule
import javax/crypto/SecretKey as SecretKeyModule
export SecretKeyModule
import javax/crypto/SecretKeyFactory as SecretKeyFactoryModule
export SecretKeyFactoryModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/init/crypt/jcehelper/CryptInterface as CryptInterfaceModule
export CryptInterfaceModule
import org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite as BaseSecretCompositeModule
export BaseSecretCompositeModule

type
    AbCrypt* = ref object of CryptInterface
        tsUtil*: TsUtil
        secretComposite*: BaseSecretComposite
        algorithm*: string

proc newAbCrypt*(algorithm: string): AbCrypt
proc initAbCrypt*(this: AbCrypt, algorithm: string)
method init*(this: AbCrypt, keyAsString: string) {.base.}
method encrypt*(this: AbCrypt, array: JArray[int8]): JArray[int8] {.discardable.}
method decrypt*(this: AbCrypt, array: JArray[int8]): JArray[int8] {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/bouncycastle/jce/provider/BouncyCastleProvider as BouncyCastleProviderModule
export BouncyCastleProviderModule
import org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory as KeySpecFactoryModule
export KeySpecFactoryModule
import org/allbinary/logic/system/security/crypt/jcehelper/SecretComposite as SecretCompositeModule
export SecretCompositeModule


# Java field initializers run after the base initializer
proc initFieldsAbCrypt(this: AbCrypt) =
    this.tsUtil = TsUtil.getInstance()
    this.secretComposite = BaseSecretComposite.NULL_SECRET_COMPOSITE
    
    discard

proc initAbCrypt*(this: AbCrypt, algorithm: string) =
        this.initFieldsAbCrypt()
        this.algorithm = algorithm

proc newAbCrypt*(algorithm: string): AbCrypt =
    result = AbCrypt()
    initAbCrypt(result, algorithm)

method init*(this: AbCrypt, keyAsString: string) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        try:
            try:
                Security.addProvider(newBouncyCastleProvider())
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                PreLogUtil.putOE(commonStrings.EXCEPTION, this, commonStrings.INIT, e)
            let key: JArray[int8] = this.tsUtil.getByteArray(keyAsString)
            let keySpec: KeySpec = KeySpecFactory.getInstance().getInstance(this.algorithm, key)
            let keyFactory: SecretKeyFactory = SecretKeyFactory.getInstance(this.algorithm)
            let secretKey: SecretKey = keyFactory.generateSecret(keySpec)
            let cipher: Cipher = Cipher.getInstance(this.algorithm)
            this.secretComposite = newSecretComposite(secretKey, cipher, key)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE("init Failed", this, commonStrings.INIT, e)

method encrypt*(this: AbCrypt, array: JArray[int8]): JArray[int8] {.discardable.} =
        try:
            return this.secretComposite.encrypt(array)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE("Encrypt Failed", this, "encrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY

method decrypt*(this: AbCrypt, array: JArray[int8]): JArray[int8] {.discardable.} =
        try:
            return this.secretComposite.decrypt(array)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY

