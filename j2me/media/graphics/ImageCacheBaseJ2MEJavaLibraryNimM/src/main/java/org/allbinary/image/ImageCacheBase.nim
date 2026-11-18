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
import java/io/InputStream as InputStreamModule
export InputStreamModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/image/ImageFactory as ImageFactoryModule
export ImageFactoryModule

type
    ImageCacheBase* = ref object of JObject
        logUtil*: LogUtil
        imageFactory*: ImageFactory
        hashtable*: ABHashtable
        SIZE*: int32
        widths*: JArray[int32]
        heights*: JArray[int32]
        listOfList*: JArray[BasicArrayList]
        availableListOfList*: JArray[BasicArrayList]
        volume*: int32
        nextIndex*: int32

proc newImageCacheBase*(): ImageCacheBase
proc initImageCacheBase*(this: ImageCacheBase)
method getImage*(this: ImageCacheBase, resourceId: JObject): Image {.base, discardable.}
method releaseAll*(this: ImageCacheBase) {.base.}
method getIndexWH*(this: ImageCacheBase, width: int32, height: int32): int32 {.base, discardable.}
method getFromAvailable*(this: ImageCacheBase, foundIndex: int32, width: int32, height: int32): Image {.base, discardable.}
method get*(this: ImageCacheBase, caller: string, width: int32, height: int32): Image {.base, discardable.}
method getWithKey*(this: ImageCacheBase, key: JObject): Image {.base, discardable.}
method createImage*(this: ImageCacheBase, caller: string, width: int32, height: int32): Image {.base, discardable.}
method createImageFromInputStream*(this: ImageCacheBase, key: JObject, inputStream: InputStream): Image {.base, discardable.}
method toString*(this: ImageCacheBase): string {.discardable.}
method getHashtableP*(this: ImageCacheBase): ABHashtable {.base, discardable.}
method init*(this: ImageCacheBase, image: Image) {.base.}
method initProgress*(this: ImageCacheBase) {.base.}
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsImageCacheBase(this: ImageCacheBase) =
    this.logUtil = LogUtil.getInstance()
    this.imageFactory = ImageFactory.getInstance()
    this.hashtable = StdUtil.getInstance().createHashtable()
    this.SIZE = 128
    this.widths = newJArray[int32](this.SIZE, default(int32))
    this.heights = newJArray[int32](this.SIZE, default(int32))
    this.listOfList = newJArray[BasicArrayList](this.SIZE, default(BasicArrayList))
    this.availableListOfList = newJArray[BasicArrayList](this.SIZE, default(BasicArrayList))
    this.volume = 0
    this.nextIndex = 0
    discard

proc initImageCacheBase*(this: ImageCacheBase) =
        this.initFieldsImageCacheBase()
        block:
            var index: int32 = this.listOfList.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.listOfList[index] = newBasicArrayListD()
        block:
            var index: int32 = this.availableListOfList.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.availableListOfList[index] = newBasicArrayListD()

proc newImageCacheBase*(): ImageCacheBase =
    result = ImageCacheBase()
    initImageCacheBase(result)

method getImage*(this: ImageCacheBase, resourceId: JObject): Image {.base, discardable.} =
        let imageCanBeNull: JObject = this.hashtable.get(resourceId)
        if (jIsNil(imageCanBeNull)):
            return NullImage.NULL_IMAGEStatic
        return Image(JObject(imageCanBeNull))

method releaseAll*(this: ImageCacheBase) {.base.} =
        block:
            var index: int32 = this.listOfList.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.availableListOfList[index].clear()
                this.availableListOfList[index].addAllList(this.listOfList[index])
        this.logUtil.putF(newStringMaker().append("ImageCache: ").append(this.toString()).toString(), this, "releaseAll")

method getIndexWH*(this: ImageCacheBase, width: int32, height: int32): int32 {.base, discardable.} =
        var foundIndex: int32 = -1
        var size: int32 = this.widths.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                if this.widths[index] == width and this.heights[index] == height:
                    foundIndex = index
                    return foundIndex
        return foundIndex

method getFromAvailable*(this: ImageCacheBase, foundIndex: int32, width: int32, height: int32): Image {.base, discardable.} =
        if foundIndex != -1:
            if this.availableListOfList[foundIndex].size() > 0:
                var list: BasicArrayList = this.availableListOfList[foundIndex]
                return Image(JObject(list.removeAt(list.size() -% 1)))
        return NullImage.NULL_IMAGEStatic

method get*(this: ImageCacheBase, caller: string, width: int32, height: int32): Image {.base, discardable.} =
        raise newJException("RuntimeException", "")

method getWithKey*(this: ImageCacheBase, key: JObject): Image {.base, discardable.} =
        raise newJException("RuntimeException", "")

method createImage*(this: ImageCacheBase, caller: string, width: int32, height: int32): Image {.base, discardable.} =
        return this.imageFactory.createImage(caller, width, height)

method createImageFromInputStream*(this: ImageCacheBase, key: JObject, inputStream: InputStream): Image {.base, discardable.} =
        return this.imageFactory.createImageFromInputStream(key, inputStream)

method toString*(this: ImageCacheBase): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        block:
            var index: int32 = this.nextIndex -% 1
            while index >= 0:
                defer: index = index -% 1
                let width: int32 = this.widths[index]
                let height: int32 = this.heights[index]
                let total: int32 = this.listOfList[index].size()
                let totalAvailable: int32 = this.availableListOfList[index].size()
                stringBuffer.append(" w: ")
                stringBuffer.appendint(width)
                stringBuffer.append(" h: ")
                stringBuffer.appendint(height)
                stringBuffer.append(CommonSeps.getInstance().SPACE)
                stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
                stringBuffer.appendint(total)
                stringBuffer.append(" available: ")
                stringBuffer.appendint(totalAvailable)
        return stringBuffer.toString()

method getHashtableP*(this: ImageCacheBase): ABHashtable {.base, discardable.} =
        return this.hashtable

method init*(this: ImageCacheBase, image: Image) {.base.} =
        discard

method initProgress*(this: ImageCacheBase) {.base.} =
        discard

