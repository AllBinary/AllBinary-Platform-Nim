#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import javax/crypto/Cipher as CipherModule
export CipherModule
import javax/crypto/SecretKey as SecretKeyModule
export SecretKeyModule
import org/allbinary/logic/java/byteutil/ByteUtil as ByteUtilModule
export ByteUtilModule
import org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite as BaseSecretCompositeModule
export BaseSecretCompositeModule

type
    SecretComposite* = ref object of BaseSecretComposite
        byteUtil*: ByteUtil
        cipher*: Cipher
        secretKey*: SecretKey
        key*: JArray[int8]

proc newSecretComposite*(secretKey: SecretKey, cipher: Cipher, key: JArray[int8]): SecretComposite
proc initSecretComposite*(this: SecretComposite, secretKey: SecretKey, cipher: Cipher, key: JArray[int8])
method encrypt*(this: SecretComposite, array: JArray[int8]): JArray[int8] {.discardable.}
method decrypt*(this: SecretComposite, array: JArray[int8]): JArray[int8] {.discardable.}
method mutilate*(this: SecretComposite, array: JArray[int8]): JArray[int8] {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsSecretComposite(this: SecretComposite) =
    this.byteUtil = ByteUtil.getInstance()
    
    
    
    discard

proc initSecretComposite*(this: SecretComposite, secretKey: SecretKey, cipher: Cipher, key: JArray[int8]) =
        initBaseSecretComposite(this)
        this.initFieldsSecretComposite()
        this.secretKey = secretKey
        this.cipher = cipher
        this.key = key

proc newSecretComposite*(secretKey: SecretKey, cipher: Cipher, key: JArray[int8]): SecretComposite =
    result = SecretComposite()
    initSecretComposite(result, secretKey, cipher, key)

method encrypt*(this: SecretComposite, array: JArray[int8]): JArray[int8] {.discardable.} =
        var array = array
        array = this.mutilate(array)
        this.cipher.init(Cipher.ENCRYPT_MODE, this.secretKey)
        return this.cipher.doFinal(array)

method decrypt*(this: SecretComposite, array: JArray[int8]): JArray[int8] {.discardable.} =
        this.cipher.init(Cipher.DECRYPT_MODE, this.secretKey)
        return this.mutilate(this.cipher.doFinal(array))

method mutilate*(this: SecretComposite, array: JArray[int8]): JArray[int8] {.base, discardable.} =
        var array = array
        block:
            var index: int32 = 0
            while index < this.key.length:
                defer: index = index +% 1
                var value: int8 = this.key[index]
                if int32(value) < 8 and int32(value) > 0:
                    array = this.byteUtil.xorByte(array, int32(value))
        return array

when declared(newSecretCompositeHook3):
    newSecretCompositeHook3 = proc (secretKey: SecretKey, cipher: Cipher, key: JArray[int8]): BaseSecretComposite = newSecretComposite(secretKey, cipher, key)

