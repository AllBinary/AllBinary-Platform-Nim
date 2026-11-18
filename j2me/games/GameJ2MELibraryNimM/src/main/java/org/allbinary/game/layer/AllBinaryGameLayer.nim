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
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/BasicColorSetUtil as BasicColorSetUtilModule
export BasicColorSetUtilModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/image/opengles/OpenGLSurfaceChangedInterface as OpenGLSurfaceChangedInterfaceModule
export OpenGLSurfaceChangedInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/view/event/ViewPositionEvent as ViewPositionEventModule
export ViewPositionEventModule
import org/allbinary/view/event/ViewPositionEventListenerInterface as ViewPositionEventListenerInterfaceModule
export ViewPositionEventListenerInterfaceModule

type
    AllBinaryGameLayer* = ref object of AllBinaryLayer
        commonStrings*: CommonStrings
        basicSetColorUtil*: BasicColorSetUtil
        RED*: BasicColor
        paintable*: Paintable
        gameKeyEventList*: BasicArrayList

converter jAsViewPositionEventListenerInterface*(value: AllBinaryGameLayer): ViewPositionEventListenerInterface = cast[ViewPositionEventListenerInterface](value)
converter jAsOpenGLSurfaceChangedInterface*(value: AllBinaryGameLayer): OpenGLSurfaceChangedInterface = cast[OpenGLSurfaceChangedInterface](value)
proc newAllBinaryGameLayer*(name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): AllBinaryGameLayer
proc initAllBinaryGameLayer*(this: AllBinaryGameLayer, name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase)
proc createPaintable*(t: typedesc[AllBinaryGameLayer]): Paintable {.discardable.}
method set*(this: AllBinaryGameLayer, gl: GL)
method move*(this: AllBinaryGameLayer) {.base.}
method getGameKeyEventList*(this: AllBinaryGameLayer): BasicArrayList {.base, discardable.}
method processInput*(this: AllBinaryGameLayer, allBinaryLayerManager: AllBinaryLayerManager) {.base.}
method processTick*(this: AllBinaryGameLayer, allBinaryLayerManager: AllBinaryLayerManager) {.base.}
method onEvent*(this: AllBinaryGameLayer, eventObject: AllBinaryEventObject)
method onViewPositionChangeEvent*(this: AllBinaryGameLayer) {.base.}
method onChangeEvent*(this: AllBinaryGameLayer, layerManagerEvent: ViewPositionEvent)
method paintFirst*(this: AllBinaryGameLayer, graphics: Graphics) {.base.}
method paintDebug*(this: AllBinaryGameLayer, graphics: Graphics) {.base.}
method setWidth*(this: AllBinaryGameLayer, width: int32) {.base.}
method setHeight*(this: AllBinaryGameLayer, height: int32) {.base.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/layer/SWTUtil as SWTUtilModule
export SWTUtilModule
import org/allbinary/game/layer/SWTBlackPaintable as SWTBlackPaintableModule
export SWTBlackPaintableModule
import org/allbinary/game/layer/GameLayerUtil as GameLayerUtilModule
export GameLayerUtilModule


# Java field initializers run after the base initializer
proc initFieldsAllBinaryGameLayer(this: AllBinaryGameLayer) =
    this.commonStrings = CommonStrings.getInstance()
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    this.RED = BasicColorFactory.getInstance().RED
    this.paintable = AllBinaryGameLayer.createPaintable()
    this.gameKeyEventList = newBasicArrayListD()
    discard

proc createPaintable*(t: typedesc[AllBinaryGameLayer]): Paintable {.discardable.} =
        if SWTUtil.isSWT:
            return newSWTBlackPaintable()
        return NullPaintable.getInstance()

proc initAllBinaryGameLayer*(this: AllBinaryGameLayer, name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase) =
        initAllBinaryLayer(this, name, layerInfo, viewPosition)
        this.initFieldsAllBinaryGameLayer()

proc newAllBinaryGameLayer*(name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): AllBinaryGameLayer =
    result = AllBinaryGameLayer()
    initAllBinaryGameLayer(result, name, layerInfo, viewPosition)

method set*(this: AllBinaryGameLayer, gl: GL) =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method move*(this: AllBinaryGameLayer) {.base.} =
        discard

method getGameKeyEventList*(this: AllBinaryGameLayer): BasicArrayList {.base, discardable.} =
        return this.gameKeyEventList

method processInput*(this: AllBinaryGameLayer, allBinaryLayerManager: AllBinaryLayerManager) {.base.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method processTick*(this: AllBinaryGameLayer, allBinaryLayerManager: AllBinaryLayerManager) {.base.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method onEvent*(this: AllBinaryGameLayer, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onViewPositionChangeEvent*(this: AllBinaryGameLayer) {.base.} =
        this.onChangeEvent(this.viewPositionEvent)

method onChangeEvent*(this: AllBinaryGameLayer, layerManagerEvent: ViewPositionEvent) =
        if GameLayerUtil.isOnScreen(this):
            this.setVisible(true)
        else:
            this.setVisible(false)

method paintFirst*(this: AllBinaryGameLayer, graphics: Graphics) {.base.} =
        this.paintable.paint(graphics)

method paintDebug*(this: AllBinaryGameLayer, graphics: Graphics) {.base.} =
        let viewPosition: ViewPositionBase = this.getViewPosition()
        let viewX: int32 = viewPosition.getX()
        let viewY: int32 = viewPosition.getY()
        this.basicSetColorUtil.setBasicColorP(graphics, this.RED)
        graphics.drawRect(viewX, viewY, this.getWidth(), this.getHeight())

method setWidth*(this: AllBinaryGameLayer, width: int32) {.base.} =
        procCall AllBinaryLayer(this).setLayerWidth(width)
        this.setHalfWidth(ashr(width, 1))

method setHeight*(this: AllBinaryGameLayer, height: int32) {.base.} =
        procCall AllBinaryLayer(this).setLayerHeight(height)
        this.setHalfHeight(ashr(height, 1))

when declared(newAllBinaryGameLayerHook3):
    newAllBinaryGameLayerHook3 = proc (name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): AllBinaryLayer = newAllBinaryGameLayer(name, layerInfo, viewPosition)

