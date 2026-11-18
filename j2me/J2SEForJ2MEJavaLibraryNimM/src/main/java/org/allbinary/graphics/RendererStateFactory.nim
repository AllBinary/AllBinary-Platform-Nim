#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java

type
    RendererStateFactory* = ref object of JObject
        loaded*: bool
        surfaceChanged*: bool

proc newRendererStateFactory*(): RendererStateFactory
proc getInstance*(t: typedesc[RendererStateFactory]): RendererStateFactory {.discardable.}
method setLoaded*(this: RendererStateFactory, loaded: bool) {.base.}
method isLoaded*(this: RendererStateFactory): bool {.base, discardable.}
method setSurfaceChanged*(this: RendererStateFactory, initialized: bool) {.base.}
method isSurfaceChanged*(this: RendererStateFactory): bool {.base, discardable.}

var RendererStateFactory_instanceValue: RendererStateFactory
var RendererStateFactory_instanceSet = false
proc instance*(t: typedesc[RendererStateFactory]): RendererStateFactory =
    if not RendererStateFactory_instanceSet:
        RendererStateFactory_instanceSet = true
        RendererStateFactory_instanceValue = newRendererStateFactory()
    RendererStateFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsRendererStateFactory(this: RendererStateFactory) =
    this.loaded = false
    this.surfaceChanged = false
    discard

proc initRendererStateFactory*(this: RendererStateFactory) =
    this.initFieldsRendererStateFactory()

proc newRendererStateFactory*(): RendererStateFactory =
    result = RendererStateFactory()
    initRendererStateFactory(result)

proc getInstance*(t: typedesc[RendererStateFactory]): RendererStateFactory {.discardable.} =
        return RendererStateFactory.instance

method setLoaded*(this: RendererStateFactory, loaded: bool) {.base.} =
        this.loaded = loaded

method isLoaded*(this: RendererStateFactory): bool {.base, discardable.} =
        return this.loaded

method setSurfaceChanged*(this: RendererStateFactory, initialized: bool) {.base.} =
        this.surfaceChanged = initialized

method isSurfaceChanged*(this: RendererStateFactory): bool {.base, discardable.} =
        return this.surfaceChanged

