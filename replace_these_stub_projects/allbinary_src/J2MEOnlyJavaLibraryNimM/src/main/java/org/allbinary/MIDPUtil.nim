#[
 
  AllBinary Open License Version 1
  Copyright (c) 2026 AllBinary
 
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
 
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 
  Created By: Travis Berthelot
  
]#
# Generated Code Do Not Modify
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import javax/microedition/lcdui/Form as FormModule
export FormModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import javax/microedition/lcdui/Item as ItemModule
export ItemModule
import javax/microedition/media/Player as PlayerModule
export PlayerModule

#like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
type
    MIDPUtil* = ref object of JObject

proc newMIDPUtil*(): MIDPUtil
proc getInstance*(t: typedesc[MIDPUtil]): MIDPUtil {.discardable.}
method createImageWH*(this: MIDPUtil, width: int32, height: int32): Image {.base, discardable.}
method createImageFromByteArray*(this: MIDPUtil, imageData: JArray[int8], imageOffset: int32, imageLength: int32): Image {.base, discardable.}
method createImageFromInputStream*(this: MIDPUtil, inputStream: InputStream): Image {.base, discardable.}
method createPlayerFromInputStream*(this: MIDPUtil, inputStream: InputStream, `type`: string): Player {.base, discardable.}
method appendItem*(this: MIDPUtil, form: Form, item: Item): int32 {.base, discardable.}
import javax/microedition/media/Manager as ManagerModule
export ManagerModule
import javax/microedition/media/MediaException as MediaExceptionModule
export MediaExceptionModule

var MIDPUtil_instanceValue: MIDPUtil
var MIDPUtil_instanceSet = false
proc instance*(t: typedesc[MIDPUtil]): MIDPUtil =
    if not MIDPUtil_instanceSet:
        MIDPUtil_instanceSet = true
        MIDPUtil_instanceValue = newMIDPUtil()
    MIDPUtil_instanceValue

proc initMIDPUtil*(this: MIDPUtil) =
    discard

proc newMIDPUtil*(): MIDPUtil =
    result = MIDPUtil()
    initMIDPUtil(result)

proc getInstance*(t: typedesc[MIDPUtil]): MIDPUtil {.discardable.} =
        return MIDPUtil.instance

method createImageWH*(this: MIDPUtil, width: int32, height: int32): Image {.base, discardable.} =
        return Image.createImageWH(width, height)

method createImageFromByteArray*(this: MIDPUtil, imageData: JArray[int8], imageOffset: int32, imageLength: int32): Image {.base, discardable.} =
        return Image.createImageFromByteArray(imageData, imageOffset, imageLength)

method createImageFromInputStream*(this: MIDPUtil, inputStream: InputStream): Image {.base, discardable.} =
        return Image.createImageFromInputStream(inputStream)

method createPlayerFromInputStream*(this: MIDPUtil, inputStream: InputStream, `type`: string): Player {.base, discardable.} =
        return Manager.createPlayerFromInputStream(inputStream, `type`)

method appendItem*(this: MIDPUtil, form: Form, item: Item): int32 {.base, discardable.} =
        return form.appendItem(item)

