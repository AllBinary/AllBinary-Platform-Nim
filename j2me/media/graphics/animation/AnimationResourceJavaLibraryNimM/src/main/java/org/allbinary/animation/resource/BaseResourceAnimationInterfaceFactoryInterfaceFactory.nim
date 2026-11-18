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
# package org.allbinary.animation.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/BasicAnimationInterfaceFactoryInterface as BasicAnimationInterfaceFactoryInterfaceModule
export BasicAnimationInterfaceFactoryInterfaceModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface as FeatureResourceAnimationInterfaceFactoryInterfaceModule
export FeatureResourceAnimationInterfaceFactoryInterfaceModule

type
    BaseResourceAnimationInterfaceFactoryInterfaceFactory* = ref object of FeatureResourceAnimationInterfaceFactoryInterface
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        hashtable*: ABHashtable
        rectangleHashtable*: ABHashtable
        rectangleArrayOfArraysHashtable*: ABHashtable
        name*: string
        initialized*: bool

proc newBaseResourceAnimationInterfaceFactoryInterfaceFactory*(name: string, hashtable: ABHashtable, rectangleHashtable: ABHashtable, rectangleArrayHashtable: ABHashtable): BaseResourceAnimationInterfaceFactoryInterfaceFactory
proc initBaseResourceAnimationInterfaceFactoryInterfaceFactory*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, name: string, hashtable: ABHashtable, rectangleHashtable: ABHashtable, rectangleArrayHashtable: ABHashtable)
method getName*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): string {.base, discardable.}
method init*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, level: int32)
method initImageCache*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, imageCache: ImageCache, level: int32) {.base.}
method add*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string, animationInterfaceFactoryInterface: BasicAnimationInterfaceFactoryInterface) {.base.}
method getBasicAnimationInterfaceFactoryInstance*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string): BasicAnimationInterfaceFactoryInterface {.discardable.}
method getRectangle*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string): Rectangle {.discardable.}
method addRectangle*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string, rectangle: Rectangle) {.base.}
method getRectangleArrayOfArrays*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string): JArray[JArray[Rectangle]] {.discardable.}
method addRectangleArrayOfArrays*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string, rectangleArrayOfArrays: JArray[JArray[Rectangle]]) {.base.}
method isFeature*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): bool {.discardable.}
method isLoadingLevel*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, level: int32): bool {.discardable.}
method toString*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): string {.discardable.}
method getHashtable*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): ABHashtable {.discardable.}
method getRectangleHashtable*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): ABHashtable {.base, discardable.}
method getRectangleArrayOfArraysHashtable*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): ABHashtable {.base, discardable.}
method setInitialized*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, initialized: bool) {.base.}
method isInitialized*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): bool {.base, discardable.}
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    
    
    this.initialized = false
    discard

proc initBaseResourceAnimationInterfaceFactoryInterfaceFactory*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, name: string, hashtable: ABHashtable, rectangleHashtable: ABHashtable, rectangleArrayHashtable: ABHashtable) =
        this.initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory()
        this.hashtable = hashtable
        this.rectangleHashtable = rectangleHashtable
        this.rectangleArrayOfArraysHashtable = rectangleArrayHashtable
        this.name = name

proc newBaseResourceAnimationInterfaceFactoryInterfaceFactory*(name: string, hashtable: ABHashtable, rectangleHashtable: ABHashtable, rectangleArrayHashtable: ABHashtable): BaseResourceAnimationInterfaceFactoryInterfaceFactory =
    result = BaseResourceAnimationInterfaceFactoryInterfaceFactory()
    initBaseResourceAnimationInterfaceFactoryInterfaceFactory(result, name, hashtable, rectangleHashtable, rectangleArrayHashtable)

method getName*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): string {.base, discardable.} =
        return this.name

method init*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, level: int32) =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        this.logUtil.putF(newStringMaker().append("Available List of Animations: ").append(this.hashtable.toString()).toString(), this, commonStrings.INIT)
        this.setInitialized(true)

method initImageCache*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, imageCache: ImageCache, level: int32) {.base.} =
        discard

method add*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string, animationInterfaceFactoryInterface: BasicAnimationInterfaceFactoryInterface) {.base.} =
        if this.hashtable.containsKey(JObject(JObject(resource))):
            raise newJException("Exception", newStringMaker().append("Resource Already Created: ").append(resource).toString())
        this.hashtable.put(resource, animationInterfaceFactoryInterface)

method getBasicAnimationInterfaceFactoryInstance*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string): BasicAnimationInterfaceFactoryInterface {.discardable.} =
        let basicAnimationInterfaceFactoryInterfaceCanBeNull: JObject = this.hashtable.get(resource)
        if (jIsNil(basicAnimationInterfaceFactoryInterfaceCanBeNull)):
            return NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY
        return BasicAnimationInterfaceFactoryInterface(JObject(basicAnimationInterfaceFactoryInterfaceCanBeNull))

method getRectangle*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string): Rectangle {.discardable.} =
        let rectangleCanBeNull: JObject = this.rectangleHashtable.get(resource)
        if (jIsNil(rectangleCanBeNull)):
            return RectangleFactory.SINGLETON
        return Rectangle(JObject(rectangleCanBeNull))

method addRectangle*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string, rectangle: Rectangle) {.base.} =
        this.rectangleHashtable.put(resource, rectangle)

method getRectangleArrayOfArrays*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string): JArray[JArray[Rectangle]] {.discardable.} =
        var valueCanBeNull: JObject = this.rectangleArrayOfArraysHashtable.get(resource)
        if (not jIsNil(valueCanBeNull)):
            let rectangleArrayOfArrays: JArray[JArray[Rectangle]] = JArray[JArray[Rectangle]](valueCanBeNull)
            return rectangleArrayOfArrays
        else:
            return RectangleFactory.ARRAY_OF_ARRAYS

method addRectangleArrayOfArrays*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource: string, rectangleArrayOfArrays: JArray[JArray[Rectangle]]) {.base.} =
        this.rectangleArrayOfArraysHashtable.put(resource, rectangleArrayOfArrays)

method isFeature*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): bool {.discardable.} =
        return false

method isLoadingLevel*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, level: int32): bool {.discardable.} =
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_ALL.getLevel():
            return true
        else:
            return false

method toString*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): string {.discardable.} =
        return newStringMaker().append(jClassName(this)).append(CommonSeps.getInstance().SEMICOLON).append(CommonSeps.getInstance().SPACE).append(this.name).toString()

method getHashtable*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): ABHashtable {.discardable.} =
        return this.hashtable

method getRectangleHashtable*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): ABHashtable {.base, discardable.} =
        return this.rectangleHashtable

method getRectangleArrayOfArraysHashtable*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): ABHashtable {.base, discardable.} =
        return this.rectangleArrayOfArraysHashtable

method setInitialized*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory, initialized: bool) {.base.} =
        this.initialized = initialized

method isInitialized*(this: BaseResourceAnimationInterfaceFactoryInterfaceFactory): bool {.base, discardable.} =
        return this.initialized

