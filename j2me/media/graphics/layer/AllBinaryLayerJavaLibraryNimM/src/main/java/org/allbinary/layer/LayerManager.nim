# Generated Code Do Not Modify
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/thread/SynchObject as SynchObjectModule
export SynchObjectModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/logic/ABSystemWrapper as ABSystemWrapperModule
export ABSystemWrapperModule
import org/allbinary/layer/LayerManagerLoggingBase as LayerManagerLoggingBaseModule
export LayerManagerLoggingBaseModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/Layer as LayerModule
export LayerModule

type
    LayerManager* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        systemWrapper*: ABSystemWrapper
        tsUtil*: TsUtil
        layerManagerLogging*: LayerManagerLoggingBase
        list*: BasicArrayList
        anyType*: SynchObject

proc newLayerManager*(layerManagerLogging: LayerManagerLoggingBase): LayerManager
proc initLayerManager*(this: LayerManager, layerManagerLogging: LayerManagerLoggingBase)
method contains*(this: LayerManager, layerInterface: AllBinaryLayer): bool {.base, discardable.}
method update*(this: LayerManager, layerInterface: AllBinaryLayer) {.base.}
method insert*(this: LayerManager, layerInterface: AllBinaryLayer) {.base.}
method append*(this: LayerManager, layerInterface: AllBinaryLayer) {.base.}
method appendAt*(this: LayerManager, layerInterface: AllBinaryLayer, index: int32) {.base.}
method remove*(this: LayerManager, layerInterface: AllBinaryLayer) {.base.}
method getLayerAt*(this: LayerManager, index: int32): Layer {.base, discardable.}
method getSize*(this: LayerManager): int32 {.base, discardable.}
method cleanup*(this: LayerManager) {.base.}
method paint*(this: LayerManager, g: Graphics, x: int32, y: int32) {.base.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsLayerManager(this: LayerManager) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.systemWrapper = ABSystemWrapper.getInstance()
    this.tsUtil = TsUtil.getInstance()
    
    this.list = newBasicArrayListD()
    this.anyType = newSynchObject()
    discard

proc initLayerManager*(this: LayerManager, layerManagerLogging: LayerManagerLoggingBase) =
        this.initFieldsLayerManager()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.layerManagerLogging = layerManagerLogging

proc newLayerManager*(layerManagerLogging: LayerManagerLoggingBase): LayerManager =
    result = LayerManager()
    initLayerManager(result, layerManagerLogging)

method contains*(this: LayerManager, layerInterface: AllBinaryLayer): bool {.base, discardable.} =
        return this.list.contains(layerInterface)

method update*(this: LayerManager, layerInterface: AllBinaryLayer) {.base.} =
        var had: bool = this.list.remove(layerInterface)
        if had:
            var nextLayerInterface: AllBinaryLayer = nil
            let size: int32 = this.list.size()
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    nextLayerInterface = AllBinaryLayer(JObject(this.list.get(index)))
                    if layerInterface.getZP() > nextLayerInterface.getZP():
                        this.list.addAt(index, layerInterface)
                        return
            this.list.add(layerInterface)

method insert*(this: LayerManager, layerInterface: AllBinaryLayer) {.base.} =
        var nextLayerInterface: AllBinaryLayer = nil
        let size: int32 = this.list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                nextLayerInterface = AllBinaryLayer(JObject(this.list.get(index)))
                if layerInterface.getZP() > nextLayerInterface.getZP():
                    this.appendAt(layerInterface, index)
                    return
        this.append(layerInterface)

method append*(this: LayerManager, layerInterface: AllBinaryLayer) {.base.} =
        this.layerManagerLogging.append(layerInterface)
        this.list.add(layerInterface)

method appendAt*(this: LayerManager, layerInterface: AllBinaryLayer, index: int32) {.base.} =
        this.layerManagerLogging.appendAt(layerInterface, index)
        this.list.addAt(index, layerInterface)

method remove*(this: LayerManager, layerInterface: AllBinaryLayer) {.base.} =
        block:
            this.layerManagerLogging.remove(layerInterface)
            let `result`: bool = this.list.remove(layerInterface)
            this.layerManagerLogging.removeResult(this, layerInterface, `result`)

method getLayerAt*(this: LayerManager, index: int32): Layer {.base, discardable.} =
        return Layer(JObject(this.list.objectArray[index]))

method getSize*(this: LayerManager): int32 {.base, discardable.} =
        return this.list.size()

method cleanup*(this: LayerManager) {.base.} =
        block:
            this.list.clear()
            this.layerManagerLogging.clear()
            this.tsUtil.gc()
            this.tsUtil.gc()

method paint*(this: LayerManager, g: Graphics, x: int32, y: int32) {.base.} =
        block:
            var comp: Layer = nil
            block:
                var index: int32 = this.list.size()
                while jPreDecrement(index) >= 0:
                    comp = Layer(JObject(this.list.objectArray[index]))
                    if (not jIsNil(comp)) and comp.isVisible():
                        comp.paint(g)

