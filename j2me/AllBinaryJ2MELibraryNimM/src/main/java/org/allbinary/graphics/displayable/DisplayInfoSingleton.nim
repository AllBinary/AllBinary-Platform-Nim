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
# package org.allbinary.graphics.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/graphics/displayable/BaseScalable as BaseScalableModule
export BaseScalableModule
import org/allbinary/graphics/displayable/ScalableListener as ScalableListenerModule
export ScalableListenerModule

type
    DisplayInfoSingleton* = ref object of JObject
        logUtil*: LogUtil
        commonLabels*: CommonLabels
        commonSeps*: CommonSeps
        commonStrings*: CommonStrings
        ORIENTATION*: string
        ADJUSTING_FOR_SCALING_IN_PORTRAIT*: string
        ADJUSTING_FOR_SCALING_IN_LANDSCAPE*: string
        last*: JArray[int32]
        lastHalf*: JArray[int32]
        full*: JArray[int32]
        top*: int32
        left*: int32
        xOffset*: int32
        yOffset*: int32
        scaleLargestTo*: float32
        WIDTH*: int32
        HEIGHT*: int32
        CUSTOM_WIDTH*: int32
        CUSTOM_HEIGHT*: int32
        scalableListener*: BaseScalable
        displayRatio*: float32
        ratio*: float32
        SET_LAST_SIZE_METHOD_NAME*: string
        FULL_WIDTH*: string
        FULL_HEIGHT*: string
        LAST_WIDTH*: string
        LAST_HEIGHT*: string
        PORTRAIT*: string
        LANDSCAPE*: string
        displayChangeEvent*: DisplayChangeEvent
        FIRE_METHOD_NAME*: string
        REASON*: string
        UPDATE_FROM_ORIENTATION_CHANGE*: string
        list*: BasicArrayList
        DISPLAY_INFO*: string
        FULL*: string
        LAST*: string
        LAST_HALF*: string

proc newDisplayInfoSingleton*(): DisplayInfoSingleton
proc initDisplayInfoSingleton*(this: DisplayInfoSingleton)
proc getInstance*(t: typedesc[DisplayInfoSingleton]): DisplayInfoSingleton {.discardable.}
method getLastHalf*(this: DisplayInfoSingleton): JArray[int32] {.base, discardable.}
method getLast*(this: DisplayInfoSingleton): JArray[int32] {.base, discardable.}
method getFull*(this: DisplayInfoSingleton): JArray[int32] {.base, discardable.}
method getScaleLargestTo*(this: DisplayInfoSingleton): float32 {.base, discardable.}
method setScaleLargestTo*(this: DisplayInfoSingleton, scaleLargestTo: int32) {.base.}
method setLastSize*(this: DisplayInfoSingleton, aLastWidth: int32, aLastHeight: int32, reason: string) {.base.}
method setLastSizeForce*(this: DisplayInfoSingleton, aLastWidth: int32, aLastHeight: int32, reason: string) {.base.}
method isPortraitWH*(this: DisplayInfoSingleton, lastWidth: int32, lastHeight: int32): bool {.base, discardable.}
method isPortrait*(this: DisplayInfoSingleton): bool {.base, discardable.}
method add*(this: DisplayInfoSingleton, reason: string) {.base.}
method process*(this: DisplayInfoSingleton) {.base.}
method processForced*(this: DisplayInfoSingleton) {.base.}
method update*(this: DisplayInfoSingleton, displayable: Displayable, reason: string) {.base.}
method toString*(this: DisplayInfoSingleton): string {.discardable.}
method toStringAppend*(this: DisplayInfoSingleton, stringBuffer: StringMaker): string {.base, discardable.}
method getTop*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getLeft*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getLastWidth*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getLastHeight*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getLastHalfWidth*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getLastHalfHeight*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getCustomLastWidth*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getCustomLastHeight*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getRawLastWidth*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getRawLastHeight*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method setCustom*(this: DisplayInfoSingleton, width: int32, height: int32) {.base.}
method setScalableListener*(this: DisplayInfoSingleton, scalableListener: BaseScalable) {.base.}
method getScalableListener*(this: DisplayInfoSingleton): ScalableListener {.base, discardable.}
method getRatio*(this: DisplayInfoSingleton): float32 {.base, discardable.}
method getDisplayRatio*(this: DisplayInfoSingleton): float32 {.base, discardable.}
method setOffset*(this: DisplayInfoSingleton, left: int32, top: int32) {.base.}
method getxOffset*(this: DisplayInfoSingleton): int32 {.base, discardable.}
method getyOffset*(this: DisplayInfoSingleton): int32 {.base, discardable.}
import org/allbinary/AndroidUtil as AndroidUtilModule
export AndroidUtilModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/graphics/displayable/event/DisplayChangeEventHandler as DisplayChangeEventHandlerModule
export DisplayChangeEventHandlerModule
import org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler as LastDisplayChangeEventHandlerModule
export LastDisplayChangeEventHandlerModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/graphics/threed/SWTJOGLProcessor as SWTJOGLProcessorModule
export SWTJOGLProcessorModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule
import org/allbinary/logic/system/os/OperatingSystemFactory as OperatingSystemFactoryModule
export OperatingSystemFactoryModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var DisplayInfoSingleton_SINGLETONValue: DisplayInfoSingleton
var DisplayInfoSingleton_SINGLETONSet = false
proc SINGLETON*(t: typedesc[DisplayInfoSingleton]): DisplayInfoSingleton =
    if not DisplayInfoSingleton_SINGLETONSet:
        DisplayInfoSingleton_SINGLETONSet = true
        DisplayInfoSingleton_SINGLETONValue = newDisplayInfoSingleton()
    DisplayInfoSingleton_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsDisplayInfoSingleton(this: DisplayInfoSingleton) =
    this.logUtil = LogUtil.getInstance()
    this.commonLabels = CommonLabels.getInstance()
    this.commonSeps = CommonSeps.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.ORIENTATION = "ORIENTATION"
    this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: "
    this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: "
    this.last = newJArray[int32](4, default(int32))
    this.lastHalf = newJArray[int32](4, default(int32))
    this.full = newJArray[int32](4, default(int32))
    this.top = 0
    this.left = 0
    this.xOffset = 0
    this.yOffset = 0
    this.scaleLargestTo = 0.0'f32
    this.WIDTH = 0
    this.HEIGHT = 1
    this.CUSTOM_WIDTH = 2
    this.CUSTOM_HEIGHT = 3
    this.scalableListener = newBaseScalable()
    this.displayRatio = 0.0'f32
    this.ratio = 1.0'f32
    this.SET_LAST_SIZE_METHOD_NAME = "setLastSize"
    this.FULL_WIDTH = " FullWidth: "
    this.FULL_HEIGHT = " FullHeight: "
    this.LAST_WIDTH = "LastWidth: "
    this.LAST_HEIGHT = " LastHeight: "
    this.PORTRAIT = "Portrait"
    this.LANDSCAPE = "Landscape"
    this.displayChangeEvent = newDisplayChangeEvent(this)
    this.FIRE_METHOD_NAME = "fire"
    this.REASON = "reason: "
    this.UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change "
    this.list = newBasicArrayListD()
    this.DISPLAY_INFO = "Display Info: "
    this.FULL = "full"
    this.LAST = "last"
    this.LAST_HALF = "lastHalf"
    discard

proc getInstance*(t: typedesc[DisplayInfoSingleton]): DisplayInfoSingleton {.discardable.} =
        return DisplayInfoSingleton.SINGLETON

proc initDisplayInfoSingleton*(this: DisplayInfoSingleton) =
        this.initFieldsDisplayInfoSingleton()
        let size: int32 = this.last.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.last[index] = 0
                this.lastHalf[index] = 0
                this.full[index] = 0
        if AndroidUtil.isAndroid():
            this.scaleLargestTo = 640'f32
        else:
            this.scaleLargestTo = 1080'f32

proc newDisplayInfoSingleton*(): DisplayInfoSingleton =
    result = DisplayInfoSingleton()
    initDisplayInfoSingleton(result)

method getLastHalf*(this: DisplayInfoSingleton): JArray[int32] {.base, discardable.} =
        return this.lastHalf

method getLast*(this: DisplayInfoSingleton): JArray[int32] {.base, discardable.} =
        return this.last

method getFull*(this: DisplayInfoSingleton): JArray[int32] {.base, discardable.} =
        return this.full

method getScaleLargestTo*(this: DisplayInfoSingleton): float32 {.base, discardable.} =
        return this.scaleLargestTo

method setScaleLargestTo*(this: DisplayInfoSingleton, scaleLargestTo: int32) {.base.} =
        this.scaleLargestTo = float32(scaleLargestTo)

method setLastSize*(this: DisplayInfoSingleton, aLastWidth: int32, aLastHeight: int32, reason: string) {.base.} =
        if this.full[this.WIDTH] != aLastWidth or this.full[this.HEIGHT] != aLastHeight:
            this.setLastSizeForce(aLastWidth, aLastHeight, reason)

method setLastSizeForce*(this: DisplayInfoSingleton, aLastWidth: int32, aLastHeight: int32, reason: string) {.base.} =
        var aLastWidth = aLastWidth
        var aLastHeight = aLastHeight
        let stringMaker: StringMaker = newStringMaker()
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).toString(), this, this.SET_LAST_SIZE_METHOD_NAME)
        let aFullWidth: int32 = aLastWidth
        let aFullHeight: int32 = aLastHeight
        stringMaker.delete(0, stringMaker.length())
        this.logUtil.putF(stringMaker.append(this.FULL_WIDTH).appendint(aFullWidth).append(this.FULL_HEIGHT).appendint(aFullHeight).append(this.toString()).toString(), this, this.SET_LAST_SIZE_METHOD_NAME)
        let operatingSystemInterface: GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if operatingSystemInterface.isOverScan():
            aLastWidth = aLastWidth *% operatingSystemInterface.getOverScanXPercent() div 100
            aLastHeight = aLastHeight *% operatingSystemInterface.getOverScanYPercent() div 100
        if operatingSystemInterface.isScalable():
            if this.isPortraitWH(aLastWidth, aLastHeight):
                if float32(aLastHeight) > this.scaleLargestTo:
                    this.displayRatio = this.scaleLargestTo / float32(aLastHeight)
                    this.ratio = float32(aLastHeight) / this.scaleLargestTo
                    stringMaker.delete(0, stringMaker.length())
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = jToInt32(float64((float32(aLastWidth) * this.displayRatio)))
                    aLastHeight = jToInt32(float64((float32(aLastHeight) * this.displayRatio)))
                    this.scalableListener.scale(this.ratio)
                else:
                    this.ratio = 1.0'f32
                    this.scalableListener.scale(this.ratio)
            else:
                if float32(aLastWidth) > this.scaleLargestTo:
                    this.displayRatio = this.scaleLargestTo / float32(aLastWidth)
                    this.ratio = float32(aLastWidth) / this.scaleLargestTo
                    stringMaker.delete(0, stringMaker.length())
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = jToInt32(float64((float32(aLastWidth) * this.displayRatio)))
                    aLastHeight = jToInt32(float64((float32(aLastHeight) * this.displayRatio)))
                    this.scalableListener.scale(this.ratio)
                else:
                    this.ratio = 1.0'f32
                    this.scalableListener.scale(this.ratio)
        stringMaker.delete(0, stringMaker.length())
        this.logUtil.putF(stringMaker.append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.SET_LAST_SIZE_METHOD_NAME)
        this.xOffset = aFullWidth -% aLastWidth
        this.yOffset = aFullHeight -% aLastHeight
        this.left = this.scalableListener.getLeft(this.xOffset)
        this.top = this.scalableListener.getTop(this.yOffset)
        this.full[this.WIDTH] = aFullWidth
        this.full[this.HEIGHT] = aFullHeight
        this.last[this.WIDTH] = aLastWidth
        this.lastHalf[this.WIDTH] = (ashr(this.last[this.WIDTH], 1))
        this.last[this.HEIGHT] = aLastHeight
        this.lastHalf[this.HEIGHT] = (ashr(this.last[this.HEIGHT], 1))
        SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, this.ratio)
        this.add(this.SET_LAST_SIZE_METHOD_NAME)

method isPortraitWH*(this: DisplayInfoSingleton, lastWidth: int32, lastHeight: int32): bool {.base, discardable.} =
        if lastHeight > lastWidth:
            return true
        else:
            return false

method isPortrait*(this: DisplayInfoSingleton): bool {.base, discardable.} =
        return this.isPortraitWH(this.last[this.WIDTH], this.last[this.HEIGHT])

method add*(this: DisplayInfoSingleton, reason: string) {.base.} =
        let stringMaker: StringMaker = newStringMaker()
        this.logUtil.putF(stringMaker.append(this.REASON).append(reason).toString(), this, this.FIRE_METHOD_NAME)
        stringMaker.delete(0, stringMaker.length())
        this.logUtil.putF(this.toStringAppend(stringMaker), this, this.FIRE_METHOD_NAME)
        this.list.add(reason)

method process*(this: DisplayInfoSingleton) {.base.} =
        try:
            if this.list.size() > 0:
                this.processForced()
            this.list.clear()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e)

method processForced*(this: DisplayInfoSingleton) {.base.} =
        try:
            let swtJOGLProcessor: SWTJOGLProcessor = SWTJOGLProcessor.getInstance()
            swtJOGLProcessor.clear()
            DisplayChangeEventHandler.getInstance().fireEvent(this.displayChangeEvent)
            LastDisplayChangeEventHandler.getInstance().fireEvent(this.displayChangeEvent)
            swtJOGLProcessor.onSurfaceChanged()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e)

method update*(this: DisplayInfoSingleton, displayable: Displayable, reason: string) {.base.} =
        var aLastWidth: int32 = displayable.getWidth()
        var aLastHeight: int32 = displayable.getHeight()
        let aFullWidth: int32 = aLastWidth
        let aFullHeight: int32 = aLastHeight
        let stringMaker: StringMaker = newStringMaker()
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).append(this.commonSeps.SPACE).append(this.toString()).toString(), this, this.commonStrings.UPDATE)
        if aLastWidth > 0 and aLastHeight > 0:
            let features: Features = Features.getInstance()
            let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            if (not features.isDefault(openGLFeatureFactory.OPENGL)) or this.last[this.WIDTH] != aLastWidth or this.last[this.HEIGHT] != aLastHeight:
                stringMaker.delete(0, stringMaker.length())
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).toString(), this, this.commonStrings.UPDATE)
                let operatingSystemInterface: GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
                if operatingSystemInterface.isOverScan():
                    aLastWidth = aLastWidth *% operatingSystemInterface.getOverScanXPercent() div 100
                    aLastHeight = aLastHeight *% operatingSystemInterface.getOverScanYPercent() div 100
                if operatingSystemInterface.isScalable():
                    if this.isPortraitWH(aLastWidth, aLastHeight):
                        if float32(aLastHeight) > this.scaleLargestTo:
                            this.displayRatio = this.scaleLargestTo / float32(aLastHeight)
                            this.ratio = float32(aLastHeight) / this.scaleLargestTo
                            stringMaker.delete(0, stringMaker.length())
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE)
                            aLastWidth = jToInt32(float64((float32(aLastWidth) * this.displayRatio)))
                            aLastHeight = jToInt32(float64((float32(aLastHeight) * this.displayRatio)))
                            this.scalableListener.scale(this.ratio)
                        else:
                            this.ratio = 1.0'f32
                            this.scalableListener.scale(this.ratio)
                    else:
                        if float32(aLastWidth) > this.scaleLargestTo:
                            this.displayRatio = this.scaleLargestTo / float32(aLastWidth)
                            this.ratio = float32(aLastWidth) / this.scaleLargestTo
                            stringMaker.delete(0, stringMaker.length())
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE)
                            aLastWidth = jToInt32(float64((float32(aLastWidth) * this.displayRatio)))
                            aLastHeight = jToInt32(float64((float32(aLastHeight) * this.displayRatio)))
                            this.scalableListener.scale(this.ratio)
                        else:
                            this.ratio = 1.0'f32
                            this.scalableListener.scale(this.ratio)
                stringMaker.delete(0, stringMaker.length())
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.commonStrings.UPDATE)
                this.xOffset = aFullWidth -% aLastWidth
                this.yOffset = aFullHeight -% aLastHeight
                this.left = this.scalableListener.getLeft(this.xOffset)
                this.top = this.scalableListener.getTop(this.yOffset)
                this.full[this.WIDTH] = aFullWidth
                this.full[this.HEIGHT] = aFullHeight
                this.last[this.WIDTH] = aLastWidth
                this.lastHalf[this.WIDTH] = (ashr(this.last[this.WIDTH], 1))
                this.last[this.HEIGHT] = aLastHeight
                this.lastHalf[this.HEIGHT] = (ashr(this.last[this.HEIGHT], 1))
                SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, this.ratio)
                this.add(this.commonStrings.UPDATE)

method toString*(this: DisplayInfoSingleton): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        return this.toStringAppend(stringBuffer)

method toStringAppend*(this: DisplayInfoSingleton, stringBuffer: StringMaker): string {.base, discardable.} =
        stringBuffer.append(this.DISPLAY_INFO)
        stringBuffer.append(this.FULL)
        stringBuffer.append(this.commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(this.full[this.WIDTH])
        stringBuffer.append(this.commonSeps.SPACE)
        stringBuffer.append(this.FULL)
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(this.full[this.HEIGHT])
        stringBuffer.append(this.commonSeps.SPACE)
        stringBuffer.append(this.LAST)
        stringBuffer.append(this.commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(this.last[this.WIDTH])
        stringBuffer.append(this.commonSeps.SPACE)
        stringBuffer.append(this.LAST)
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(this.last[this.HEIGHT])
        stringBuffer.append(this.commonSeps.SPACE)
        stringBuffer.append(this.LAST_HALF)
        stringBuffer.append(this.commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(this.lastHalf[this.WIDTH])
        stringBuffer.append(this.commonSeps.SPACE)
        stringBuffer.append(this.LAST_HALF)
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(this.lastHalf[this.HEIGHT])
        stringBuffer.append(this.commonSeps.SPACE)
        stringBuffer.append((if this.isPortrait(): this.PORTRAIT else: this.LANDSCAPE))
        return stringBuffer.toString()

method getTop*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.top

method getLeft*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.left

method getLastWidth*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.last[this.WIDTH]

method getLastHeight*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.last[this.HEIGHT]

method getLastHalfWidth*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.lastHalf[this.WIDTH]

method getLastHalfHeight*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.lastHalf[this.HEIGHT]

method getCustomLastWidth*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.last[this.CUSTOM_WIDTH]

method getCustomLastHeight*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.last[this.CUSTOM_HEIGHT]

method getRawLastWidth*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.last[this.WIDTH]

method getRawLastHeight*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.last[this.HEIGHT]

method setCustom*(this: DisplayInfoSingleton, width: int32, height: int32) {.base.} =
        this.last[this.CUSTOM_WIDTH] = width
        this.lastHalf[this.CUSTOM_WIDTH] = (ashr(this.last[this.CUSTOM_WIDTH], 1))
        this.last[this.CUSTOM_HEIGHT] = height
        this.lastHalf[this.CUSTOM_HEIGHT] = (ashr(this.last[this.CUSTOM_HEIGHT], 1))

method setScalableListener*(this: DisplayInfoSingleton, scalableListener: BaseScalable) {.base.} =
        this.scalableListener = scalableListener

method getScalableListener*(this: DisplayInfoSingleton): ScalableListener {.base, discardable.} =
        return this.scalableListener

method getRatio*(this: DisplayInfoSingleton): float32 {.base, discardable.} =
        return this.ratio

method getDisplayRatio*(this: DisplayInfoSingleton): float32 {.base, discardable.} =
        return this.displayRatio

method setOffset*(this: DisplayInfoSingleton, left: int32, top: int32) {.base.} =
        this.left = left

method getxOffset*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.xOffset

method getyOffset*(this: DisplayInfoSingleton): int32 {.base, discardable.} =
        return this.yOffset

