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
# package org.allbinary.image

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/image/ImageCacheBase as ImageCacheBaseModule
export ImageCacheBaseModule

type
    ImageCache* = ref object of ImageCacheBase
        commonStrings*: CommonStrings
        tsUtil*: TsUtil

proc newImageCache*(): ImageCache
proc initImageCache*(this: ImageCache)
method addListener*(this: ImageCache, renderer: JObject) {.base.}
method getIndex*(this: ImageCache, key: JObject): int32 {.base, discardable.}
method get*(this: ImageCache, caller: string, width: int32, height: int32): Image {.discardable.}
method getWithKey*(this: ImageCache, key: JObject): Image {.discardable.}
method loadImageForAnimation*(this: ImageCache) {.base.}
method progressEnded*(this: ImageCache) {.base.}
method runTask*(this: ImageCache) {.base.}
method isLazy*(this: ImageCache): bool {.base, discardable.}
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/data/resource/ResourceUtil as ResourceUtilModule
export ResourceUtilModule
import org/allbinary/game/gd/resource/GDResources as GDResourcesModule
export GDResourcesModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/system/Memory as MemoryModule
export MemoryModule

var ImageCache_NULL_IMAGE_CACHEValue: ImageCache
var ImageCache_NULL_IMAGE_CACHESet = false
proc NULL_IMAGE_CACHE*(t: typedesc[ImageCache]): ImageCache =
    if not ImageCache_NULL_IMAGE_CACHESet:
        ImageCache_NULL_IMAGE_CACHESet = true
        ImageCache_NULL_IMAGE_CACHEValue = newImageCache()
    ImageCache_NULL_IMAGE_CACHEValue

# Java field initializers run after the base initializer
proc initFieldsImageCache(this: ImageCache) =
    this.commonStrings = CommonStrings.getInstance()
    this.tsUtil = TsUtil.getInstance()
    discard

proc initImageCache*(this: ImageCache) =
        initImageCacheBase(this)
        this.initFieldsImageCache()
        discard

proc newImageCache*(): ImageCache =
    result = ImageCache()
    initImageCache(result)

method addListener*(this: ImageCache, renderer: JObject) {.base.} =
        discard

method getIndex*(this: ImageCache, key: JObject): int32 {.base, discardable.} =
        let gdResources: GDResources = GDResources.getInstance()
        let resourceStringArray: JArray[string] = gdResources.resourceStringArray
        let size: int32 = resourceStringArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                if resourceStringArray[index] == key:
                    return index
        this.logUtil.putF(newStringMaker().append("unable to find key: ").append(StringUtil.getInstance().toString(key)).toString(), this, this.commonStrings.RUN)
        raise newJException("RuntimeException", "")

method get*(this: ImageCache, caller: string, width: int32, height: int32): Image {.discardable.} =
        var foundIndex: int32 = this.getIndexWH(width, height)
        var image: Image = this.getFromAvailable(foundIndex, width, height)
        if image == NullImage.NULL_IMAGEStatic:
            this.volume = this.volume + width *% height
            if this.volume > 32000:
                this.tsUtil.gc()
                this.volume = 0
            image = this.createImage(caller, width, height)
            let widths: JArray[int32] = this.widths
            if this.nextIndex > widths.length -% 1:
                if foundIndex == -1:
                    foundIndex = this.nextIndex
                    widths[this.nextIndex] = width
                    this.heights[this.nextIndex] = height
                    this.nextIndex = this.nextIndex +% 1
                this.listOfList[foundIndex].add(image)
        return image

method getWithKey*(this: ImageCache, key: JObject): Image {.discardable.} =
        var image: Image = this.getImage(key)
        if image == NullImage.NULL_IMAGEStatic:
            let resourceUtil: ResourceUtil = ResourceUtil.getInstance()
            let resourceInputStream: InputStream = resourceUtil.getResourceAsStream(jstr(key))
            if (jIsNil(resourceInputStream)):
                raise newJException("RuntimeException", newStringMaker().append("Image resource is not available for key: ").append(StringUtil.getInstance().toString(key)).toString())
            try:
                image = this.createImageFromInputStream(key, resourceInputStream)
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put("Exception: Trying Again After GC", this, this.commonStrings.GET, e)
                this.logUtil.putF(newStringMaker().append("InputStream: ").append(StringUtil.getInstance().toString(resourceInputStream)).toString(), this, this.commonStrings.GET)
                this.tsUtil.gc()
                this.tsUtil.gc()
                this.logUtil.putF(Memory.getInfo(), this, this.commonStrings.GET)
                JThread.sleep(100)
                image = this.createImageFromInputStream(key, resourceInputStream)
            if J2MEUtil.isHTML():
                discard
            else:
                resourceInputStream.close()
            this.hashtable.put(key, image)
        return image

method loadImageForAnimation*(this: ImageCache) {.base.} =
        discard

method progressEnded*(this: ImageCache) {.base.} =
        discard

method runTask*(this: ImageCache) {.base.} =
        discard

method isLazy*(this: ImageCache): bool {.base, discardable.} =
        return false

when declared(newImageCacheHook0):
    newImageCacheHook0 = proc (): ImageCacheBase = newImageCache()

