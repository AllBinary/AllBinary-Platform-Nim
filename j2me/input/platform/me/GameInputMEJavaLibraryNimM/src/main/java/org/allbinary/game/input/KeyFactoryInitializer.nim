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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/init/Init as InitModule
export InitModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    KeyFactoryInitializer* = ref object of Init
        logUtil*: LogUtil

proc newKeyFactoryInitializer*(): KeyFactoryInitializer
method init*(this: KeyFactoryInitializer)


# Java field initializers run after the base initializer
proc initFieldsKeyFactoryInitializer(this: KeyFactoryInitializer) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initKeyFactoryInitializer*(this: KeyFactoryInitializer) =
    initInit(this)
    this.initFieldsKeyFactoryInitializer()

proc newKeyFactoryInitializer*(): KeyFactoryInitializer =
    result = KeyFactoryInitializer()
    initKeyFactoryInitializer(result)

method init*(this: KeyFactoryInitializer) =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT)

when declared(newKeyFactoryInitializerHook0):
    newKeyFactoryInitializerHook0 = proc (): Init = newKeyFactoryInitializer()

