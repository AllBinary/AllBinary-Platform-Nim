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
# package org.allbinary.image.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/image/opengles/OpenGLImageFactory as OpenGLImageFactoryModule
export OpenGLImageFactoryModule

type
    OpenGLImageSpecificFactory* = ref object of JObject
        imageFactory*: OpenGLImageFactory
        updating*: bool

proc newOpenGLImageSpecificFactory*(): OpenGLImageSpecificFactory
proc getInstance*(t: typedesc[OpenGLImageSpecificFactory]): OpenGLImageSpecificFactory {.discardable.}
method setImageFactory*(this: OpenGLImageSpecificFactory, imageFactory: OpenGLImageFactory) {.base.}
method getImageFactory*(this: OpenGLImageSpecificFactory): OpenGLImageFactory {.base, discardable.}
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var OpenGLImageSpecificFactory_instanceValue: OpenGLImageSpecificFactory
var OpenGLImageSpecificFactory_instanceSet = false
proc instance*(t: typedesc[OpenGLImageSpecificFactory]): OpenGLImageSpecificFactory =
    if not OpenGLImageSpecificFactory_instanceSet:
        OpenGLImageSpecificFactory_instanceSet = true
        OpenGLImageSpecificFactory_instanceValue = newOpenGLImageSpecificFactory()
    OpenGLImageSpecificFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOpenGLImageSpecificFactory(this: OpenGLImageSpecificFactory) =
    this.imageFactory = OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY
    this.updating = false
    discard

proc initOpenGLImageSpecificFactory*(this: OpenGLImageSpecificFactory) =
    this.initFieldsOpenGLImageSpecificFactory()

proc newOpenGLImageSpecificFactory*(): OpenGLImageSpecificFactory =
    result = OpenGLImageSpecificFactory()
    initOpenGLImageSpecificFactory(result)

proc getInstance*(t: typedesc[OpenGLImageSpecificFactory]): OpenGLImageSpecificFactory {.discardable.} =
        return OpenGLImageSpecificFactory.instance

method setImageFactory*(this: OpenGLImageSpecificFactory, imageFactory: OpenGLImageFactory) {.base.} =
        this.imageFactory = imageFactory
        PreLogUtil.put(newStringMaker().append("Selected Image Factory: ").append(StringUtil.getInstance().toString(this.imageFactory)).toString(), this, "setImageFactory")

method getImageFactory*(this: OpenGLImageSpecificFactory): OpenGLImageFactory {.base, discardable.} =
        return this.imageFactory

