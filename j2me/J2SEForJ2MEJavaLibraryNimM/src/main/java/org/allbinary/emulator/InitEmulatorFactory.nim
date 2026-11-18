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
# package org.allbinary.emulator

{.warning[UnusedImport]: off.}
import allbinary_java

type
    InitEmulatorFactory* = ref object of JObject
        initEmulator*: bool

proc newInitEmulatorFactory*(): InitEmulatorFactory
proc getInstance*(t: typedesc[InitEmulatorFactory]): InitEmulatorFactory {.discardable.}
method setInitEmulator*(this: InitEmulatorFactory, initEmulator: bool) {.base.}
method isInitEmulator*(this: InitEmulatorFactory): bool {.base, discardable.}

var InitEmulatorFactory_instanceValue: InitEmulatorFactory
var InitEmulatorFactory_instanceSet = false
proc instance*(t: typedesc[InitEmulatorFactory]): InitEmulatorFactory =
    if not InitEmulatorFactory_instanceSet:
        InitEmulatorFactory_instanceSet = true
        InitEmulatorFactory_instanceValue = newInitEmulatorFactory()
    InitEmulatorFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsInitEmulatorFactory(this: InitEmulatorFactory) =
    this.initEmulator = false
    discard

proc initInitEmulatorFactory*(this: InitEmulatorFactory) =
    this.initFieldsInitEmulatorFactory()

proc newInitEmulatorFactory*(): InitEmulatorFactory =
    result = InitEmulatorFactory()
    initInitEmulatorFactory(result)

proc getInstance*(t: typedesc[InitEmulatorFactory]): InitEmulatorFactory {.discardable.} =
        return InitEmulatorFactory.instance

method setInitEmulator*(this: InitEmulatorFactory, initEmulator: bool) {.base.} =
        this.initEmulator = initEmulator

method isInitEmulator*(this: InitEmulatorFactory): bool {.base, discardable.} =
        return this.initEmulator

