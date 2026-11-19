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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/identification/Group as GroupModule
export GroupModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/view/event/ViewPositionEvent as ViewPositionEventModule
export ViewPositionEventModule
import org/allbinary/layer/Layer as LayerModule
export LayerModule
import org/allbinary/layer/LayerInterface as LayerInterfaceModule
export LayerInterfaceModule

type
    AllBinaryLayer* = ref object of Layer
        viewPositionEvent*: ViewPositionEvent
        halfWidth*: int32
        halfHeight*: int32
        name*: string
        viewPosition*: ViewPositionBase

converter jAsLayerInterface*(value: AllBinaryLayer): LayerInterface = cast[LayerInterface](value)
converter jAsNamedInterface*(value: AllBinaryLayer): NamedInterface = cast[NamedInterface](value)
converter jAsPaintableInterface*(value: AllBinaryLayer): PaintableInterface = cast[PaintableInterface](value)
converter jAsGroupInterfaceCompositeInterface*(value: AllBinaryLayer): GroupInterfaceCompositeInterface = cast[GroupInterfaceCompositeInterface](value)
converter jAsPositionInterface*(value: AllBinaryLayer): PositionInterface = cast[PositionInterface](value)
proc newAllBinaryLayer*(name: string, rectangle: Rectangle, viewPosition: ViewPositionBase): AllBinaryLayer
proc initAllBinaryLayer*(this: AllBinaryLayer, name: string, rectangle: Rectangle, viewPosition: ViewPositionBase)
method setPosition*(this: AllBinaryLayer, x: int32, y: int32, z: int32)
method moveDXYZ*(this: AllBinaryLayer, dx: int32, dy: int32, dz: int32)
method getXP*(this: AllBinaryLayer): int32 {.discardable.}
method getYP*(this: AllBinaryLayer): int32 {.discardable.}
method getZP*(this: AllBinaryLayer): int32 {.discardable.}
method getWidth*(this: AllBinaryLayer): int32 {.discardable.}
method getHeight*(this: AllBinaryLayer): int32 {.discardable.}
method setVisible*(this: AllBinaryLayer, visible: bool)
method isVisible*(this: AllBinaryLayer): bool {.discardable.}
method paint*(this: AllBinaryLayer, graphics: Graphics)
method onChangeEvent*(this: AllBinaryLayer, layerManagerEvent: ViewPositionEvent) {.base.}
method paintThreed*(this: AllBinaryLayer, graphics: Graphics)
method getX2*(this: AllBinaryLayer): int32 {.discardable.}
method getY2*(this: AllBinaryLayer): int32 {.discardable.}
method getZ2*(this: AllBinaryLayer): int32 {.discardable.}
method getName*(this: AllBinaryLayer): string {.discardable.}
method setHalfWidth*(this: AllBinaryLayer, halfWidth: int32) {.base.}
method getHalfWidth*(this: AllBinaryLayer): int32 {.discardable.}
method setHalfHeight*(this: AllBinaryLayer, halfHeight: int32) {.base.}
method getHalfHeight*(this: AllBinaryLayer): int32 {.discardable.}
method getHalfDepth*(this: AllBinaryLayer): int32 {.base, discardable.}
method getViewPosition*(this: AllBinaryLayer): ViewPositionBase {.base, discardable.}
method setViewPosition*(this: AllBinaryLayer, viewPosition: ViewPositionBase) {.base.}
method getGroupInterface*(this: AllBinaryLayer): JArray[Group] {.discardable.}
method implmentsTickableInterface*(this: AllBinaryLayer): bool {.discardable.}
method implmentsGameInputInterface*(this: AllBinaryLayer): bool {.discardable.}
method implmentsArtificialIntelligenceCompositeInterface*(this: AllBinaryLayer): bool {.discardable.}
method implmentsCollidableInterface*(this: AllBinaryLayer): bool {.discardable.}
method implementsThreedInterface*(this: AllBinaryLayer): bool {.base, discardable.}
method getType*(this: AllBinaryLayer): int32 {.discardable.}
method getMultiPlayerType*(this: AllBinaryLayer): int32 {.base, discardable.}
method toStringAppend*(this: AllBinaryLayer, stringBuffer: StringMaker)
method toString*(this: AllBinaryLayer): string {.discardable.}
import org/allbinary/game/identification/BasicGroupFactory as BasicGroupFactoryModule
export BasicGroupFactoryModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/graphics/opengles/OpenGLFeatureUtil as OpenGLFeatureUtilModule
export OpenGLFeatureUtilModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/math/PositionStrings as PositionStringsModule
export PositionStringsModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var AllBinaryLayer_NULL_ALLBINARY_LAYERValue: AllBinaryLayer
var AllBinaryLayer_NULL_ALLBINARY_LAYERSet = false
proc NULL_ALLBINARY_LAYER*(t: typedesc[AllBinaryLayer]): AllBinaryLayer =
    if not AllBinaryLayer_NULL_ALLBINARY_LAYERSet:
        AllBinaryLayer_NULL_ALLBINARY_LAYERSet = true
        AllBinaryLayer_NULL_ALLBINARY_LAYERValue = newAllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION)
    AllBinaryLayer_NULL_ALLBINARY_LAYERValue
var AllBinaryLayer_TYPEValue: string
var AllBinaryLayer_TYPESet = false
proc TYPE*(t: typedesc[AllBinaryLayer]): string =
    if not AllBinaryLayer_TYPESet:
        AllBinaryLayer_TYPESet = true
        AllBinaryLayer_TYPEValue = "Type: "
    AllBinaryLayer_TYPEValue

# Java field initializers run after the base initializer
proc initFieldsAllBinaryLayer(this: AllBinaryLayer) =
    this.viewPositionEvent = newViewPositionEvent(this)
    this.halfWidth = 0
    this.halfHeight = 0
    
    this.viewPosition = ViewPositionBase.NULL_VIEW_POSITION
    discard

proc initAllBinaryLayer*(this: AllBinaryLayer, name: string, rectangle: Rectangle, viewPosition: ViewPositionBase) =
        initLayer(this, rectangle.getWidth(), rectangle.getHeight())
        this.initFieldsAllBinaryLayer()
        var localName: string = ""
        localName = newStringMaker().append(name).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode(this))).toString()
        this.name = localName
        let point: GPoint = rectangle.getPoint()
        this.setPosition(point.getX(), point.getY(), point.getZ())
        this.setHalfWidth((ashr(this.getWidth(), 1)))
        this.setHalfHeight((ashr(this.getHeight(), 1)))
        this.viewPosition = viewPosition
        this.viewPosition.setAllbinaryLayer(this)

proc newAllBinaryLayer*(name: string, rectangle: Rectangle, viewPosition: ViewPositionBase): AllBinaryLayer =
    result = AllBinaryLayer()
    initAllBinaryLayer(result, name, rectangle, viewPosition)

method setPosition*(this: AllBinaryLayer, x: int32, y: int32, z: int32) =
        jSuperStatement(procCall Layer(this).setPosition(x, y, z))

method moveDXYZ*(this: AllBinaryLayer, dx: int32, dy: int32, dz: int32) =
        jSuperStatement(procCall Layer(this).moveDXYZ(dx, dy, dz))

method getXP*(this: AllBinaryLayer): int32 {.discardable.} =
        return procCall Layer(this).getXP()

method getYP*(this: AllBinaryLayer): int32 {.discardable.} =
        return procCall Layer(this).getYP()

method getZP*(this: AllBinaryLayer): int32 {.discardable.} =
        return procCall Layer(this).getZP()

method getWidth*(this: AllBinaryLayer): int32 {.discardable.} =
        return procCall Layer(this).getWidth()

method getHeight*(this: AllBinaryLayer): int32 {.discardable.} =
        return procCall Layer(this).getHeight()

method setVisible*(this: AllBinaryLayer, visible: bool) =
        jSuperStatement(procCall Layer(this).setVisible(visible))

method isVisible*(this: AllBinaryLayer): bool {.discardable.} =
        return procCall Layer(this).isVisible()

method paint*(this: AllBinaryLayer, graphics: Graphics) =
        jSuperStatement(procCall Layer(this).paint(graphics))

method onChangeEvent*(this: AllBinaryLayer, layerManagerEvent: ViewPositionEvent) {.base.} =
        discard

method paintThreed*(this: AllBinaryLayer, graphics: Graphics) =
        discard

method getX2*(this: AllBinaryLayer): int32 {.discardable.} =
        return this.getXP() +% this.getWidth()

method getY2*(this: AllBinaryLayer): int32 {.discardable.} =
        return this.getYP() +% this.getHeight()

method getZ2*(this: AllBinaryLayer): int32 {.discardable.} =
        return jToInt32((int64(this.getZP()) +% this.getDepth()))

method getName*(this: AllBinaryLayer): string {.discardable.} =
        return this.name

method setHalfWidth*(this: AllBinaryLayer, halfWidth: int32) {.base.} =
        this.halfWidth = halfWidth

method getHalfWidth*(this: AllBinaryLayer): int32 {.discardable.} =
        return this.halfWidth

method setHalfHeight*(this: AllBinaryLayer, halfHeight: int32) {.base.} =
        this.halfHeight = halfHeight

method getHalfHeight*(this: AllBinaryLayer): int32 {.discardable.} =
        return this.halfHeight

method getHalfDepth*(this: AllBinaryLayer): int32 {.base, discardable.} =
        return jToInt32(this.getDepth()) div 2

method getViewPosition*(this: AllBinaryLayer): ViewPositionBase {.base, discardable.} =
        return this.viewPosition

method setViewPosition*(this: AllBinaryLayer, viewPosition: ViewPositionBase) {.base.} =
        this.viewPosition = viewPosition

method getGroupInterface*(this: AllBinaryLayer): JArray[Group] {.discardable.} =
        return BasicGroupFactory.getInstance().NONE_ARRAY

method implmentsTickableInterface*(this: AllBinaryLayer): bool {.discardable.} =
        return false

method implmentsGameInputInterface*(this: AllBinaryLayer): bool {.discardable.} =
        return false

method implmentsArtificialIntelligenceCompositeInterface*(this: AllBinaryLayer): bool {.discardable.} =
        return false

method implmentsCollidableInterface*(this: AllBinaryLayer): bool {.discardable.} =
        return false

method implementsThreedInterface*(this: AllBinaryLayer): bool {.base, discardable.} =
        return OpenGLFeatureUtil.getInstance().isAnyThreed()

method getType*(this: AllBinaryLayer): int32 {.discardable.} =
        return -1

method getMultiPlayerType*(this: AllBinaryLayer): int32 {.base, discardable.} =
        return -1

method toStringAppend*(this: AllBinaryLayer, stringBuffer: StringMaker) =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let positionStrings: PositionStrings = PositionStrings.getInstance()
        let commonLabels: CommonLabels = CommonLabels.getInstance()
        stringBuffer.append(this.getName())
        stringBuffer.append(commonSeps.COLON)
        stringBuffer.append(AllBinaryLayer.TYPE)
        stringBuffer.appendint(this.getType())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(this.getXP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(this.getYP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(this.getZP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(this.getWidth())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(this.getHeight())

method toString*(this: AllBinaryLayer): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        this.toStringAppend(stringBuffer)
        return stringBuffer.toString()

when declared(newAllBinaryLayerHook3):
    newAllBinaryLayerHook3 = proc (name: string, rectangle: Rectangle, viewPosition: ViewPositionBase): Layer = newAllBinaryLayer(name, rectangle, viewPosition)

