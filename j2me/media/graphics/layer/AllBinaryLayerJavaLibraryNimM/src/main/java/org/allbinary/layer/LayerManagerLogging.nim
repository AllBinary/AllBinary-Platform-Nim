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
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/layer/LayerManagerLoggingBase as LayerManagerLoggingBaseModule
export LayerManagerLoggingBaseModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/LayerManager as LayerManagerModule
export LayerManagerModule

type
    LayerManagerLogging* = ref object of LayerManagerLoggingBase
        logUtil*: LogUtil
        stringBuilder*: StringMaker
        APPEND*: string
        APPEND_OfLayerManagerLogging*: string
        U_AT_U*: string
        ATTEMPT_REMOVE_U*: string
        REMOVE_U*: string
        REMOVEOfLayerManagerLogging*: string
        DID_NOT_REMOVE*: string
        CLEAR*: string

proc newLayerManagerLogging*(): LayerManagerLogging
proc getInstance*(t: typedesc[LayerManagerLogging]): LayerManagerLogging {.discardable.}
method append*(this: LayerManagerLogging, layerInterface: AllBinaryLayer)
method appendAt*(this: LayerManagerLogging, layerInterface: AllBinaryLayer, index: int32)
method remove*(this: LayerManagerLogging, layerInterface: AllBinaryLayer)
method removeResult*(this: LayerManagerLogging, layerManager: LayerManager, layerInterface: AllBinaryLayer, `result`: bool)
method log*(this: LayerManagerLogging, layerManager: LayerManager) {.base.}
method clear*(this: LayerManagerLogging)
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var LayerManagerLogging_instanceValue: LayerManagerLogging
var LayerManagerLogging_instanceSet = false
proc instance*(t: typedesc[LayerManagerLogging]): LayerManagerLogging =
    if not LayerManagerLogging_instanceSet:
        LayerManagerLogging_instanceSet = true
        LayerManagerLogging_instanceValue = newLayerManagerLogging()
    LayerManagerLogging_instanceValue
var LayerManagerLogging_removeFailedValue: bool
var LayerManagerLogging_removeFailedSet = false
proc removeFailed*(t: typedesc[LayerManagerLogging]): bool =
    if not LayerManagerLogging_removeFailedSet:
        LayerManagerLogging_removeFailedSet = true
        LayerManagerLogging_removeFailedValue = false
    LayerManagerLogging_removeFailedValue
proc `removeFailed=`*(t: typedesc[LayerManagerLogging], value: bool) =
    LayerManagerLogging_removeFailedSet = true
    LayerManagerLogging_removeFailedValue = value

# Java field initializers run after the base initializer
proc initFieldsLayerManagerLogging(this: LayerManagerLogging) =
    this.logUtil = LogUtil.getInstance()
    this.stringBuilder = newStringMaker()
    this.APPEND = "append"
    this.APPEND_OfLayerManagerLogging = " append: "
    this.U_AT_U = " at: "
    this.ATTEMPT_REMOVE_U = " Remove Attempt: "
    this.REMOVE_U = " Remove: "
    this.REMOVEOfLayerManagerLogging = "remove"
    this.DID_NOT_REMOVE = " Did not remove: "
    this.CLEAR = " Clear List"
    discard

proc initLayerManagerLogging*(this: LayerManagerLogging) =
    initLayerManagerLoggingBase(this)
    this.initFieldsLayerManagerLogging()

proc newLayerManagerLogging*(): LayerManagerLogging =
    result = LayerManagerLogging()
    initLayerManagerLogging(result)

proc getInstance*(t: typedesc[LayerManagerLogging]): LayerManagerLogging {.discardable.} =
        return LayerManagerLogging.instance

method append*(this: LayerManagerLogging, layerInterface: AllBinaryLayer) =
        this.stringBuilder.delete(0, this.stringBuilder.length())
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.APPEND_OfLayerManagerLogging).append(layerInterface.getName()).toString(), this, this.APPEND)

method appendAt*(this: LayerManagerLogging, layerInterface: AllBinaryLayer, index: int32) =
        this.stringBuilder.delete(0, this.stringBuilder.length())
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.APPEND_OfLayerManagerLogging).append(layerInterface.getName()).append(this.U_AT_U).appendint(index).toString(), this, this.APPEND)

method remove*(this: LayerManagerLogging, layerInterface: AllBinaryLayer) =
        if (jIsNil(layerInterface)):
            this.stringBuilder.delete(0, this.stringBuilder.length())
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.ATTEMPT_REMOVE_U).append(StringUtil.getInstance().toString(layerInterface)).toString(), this, this.REMOVEOfLayerManagerLogging)
        else:
            this.stringBuilder.delete(0, this.stringBuilder.length())
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.ATTEMPT_REMOVE_U).append(layerInterface.getName()).toString(), this, this.REMOVEOfLayerManagerLogging)

method removeResult*(this: LayerManagerLogging, layerManager: LayerManager, layerInterface: AllBinaryLayer, `result`: bool) =
        if (jIsNil(layerInterface)):
            this.stringBuilder.delete(0, this.stringBuilder.length())
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.REMOVE_U).append(StringUtil.getInstance().toString(layerInterface)).toString(), this, this.REMOVEOfLayerManagerLogging)
        elif `result`:
            if LayerManagerLogging.removeFailed:
                this.stringBuilder.delete(0, this.stringBuilder.length())
                this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.REMOVE_U).append(layerInterface.getName()).toString(), this, this.REMOVEOfLayerManagerLogging)
        else:
            this.stringBuilder.delete(0, this.stringBuilder.length())
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.DID_NOT_REMOVE).append(layerInterface.getName()).toString(), this, this.REMOVEOfLayerManagerLogging)
            LayerManagerLogging.removeFailed = true

method log*(this: LayerManagerLogging, layerManager: LayerManager) {.base.} =
        this.stringBuilder.delete(0, this.stringBuilder.length())
        let size: int32 = layerManager.getSize()
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        this.stringBuilder.append(Integer.toHexString(TsUtil.getInstance().hashCode(layerManager))).append(commonSeps.COLON_SEP)
        this.stringBuilder.appendint(size).append(commonSeps.COLON_SEP)
        var allBinaryLayer: AllBinaryLayer = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                allBinaryLayer = (AllBinaryLayer(JObject(layerManager.getLayerAt(index))))
                this.stringBuilder.append(allBinaryLayer.getName()).append(commonSeps.COMMA)
        this.logUtil.putF(this.stringBuilder.toString(), this, this.REMOVEOfLayerManagerLogging)

method clear*(this: LayerManagerLogging) =
        this.stringBuilder.delete(0, this.stringBuilder.length())
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode(this)).append(this.CLEAR).toString(), this, this.CLEAR)

when declared(newLayerManagerLoggingHook0):
    newLayerManagerLoggingHook0 = proc (): LayerManagerLoggingBase = newLayerManagerLogging()

