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
import org/allbinary/ai/ArtificialIntelligenceInterface as ArtificialIntelligenceInterfaceModule
export ArtificialIntelligenceInterfaceModule
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule
import org/allbinary/game/collision/CollidableBaseBehaviorFactory as CollidableBaseBehaviorFactoryModule
export CollidableBaseBehaviorFactoryModule
import org/allbinary/game/collision/CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterfaceModule
export CollidableInterfaceCompositeInterfaceModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/game/layer/AllBinaryGameLayer as AllBinaryGameLayerModule
export AllBinaryGameLayerModule

type
    CollidableCompositeLayer* = ref object of AllBinaryGameLayer
        collidableInferface*: CollidableBaseBehavior

converter jAsCollidableInterfaceCompositeInterface*(value: CollidableCompositeLayer): CollidableInterfaceCompositeInterface = cast[CollidableInterfaceCompositeInterface](value)
proc newCollidableCompositeLayer*(name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase, collidableBaseBehaviorFactory: CollidableBaseBehaviorFactory): CollidableCompositeLayer
proc initCollidableCompositeLayer*(this: CollidableCompositeLayer, name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase, collidableBaseBehaviorFactory: CollidableBaseBehaviorFactory)
proc getNullInstance*(t: typedesc[CollidableCompositeLayer]): CollidableCompositeLayer {.discardable.}
method getArtificialIntelligenceInterface*(this: CollidableCompositeLayer): ArtificialIntelligenceInterface {.base, discardable.}
method getCollidableInferface*(this: CollidableCompositeLayer): CollidableBaseBehavior {.discardable.}
method setCollidableInferface*(this: CollidableCompositeLayer, collidableInferface: CollidableBaseBehavior) {.base.}
method implmentsCollidableInterface*(this: CollidableCompositeLayer): bool {.discardable.}
method toStringAppend*(this: CollidableCompositeLayer, stringBuffer: StringMaker)
method toString*(this: CollidableCompositeLayer): string {.discardable.}
import org/allbinary/ai/ArtificialIntelligence as ArtificialIntelligenceModule
export ArtificialIntelligenceModule
import org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory as CollidableNeverCollideBehaviorFactoryModule
export CollidableNeverCollideBehaviorFactoryModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERValue: JObject
var CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERSet = false
proc NULL_COLLIDABLE_COMPOSITE_LAYER*(t: typedesc[CollidableCompositeLayer]): JObject =
    if not CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERSet:
        CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERSet = true
        CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERValue = NullUtil.getInstance().NULL_OBJECT
    CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERValue
proc `NULL_COLLIDABLE_COMPOSITE_LAYER=`*(t: typedesc[CollidableCompositeLayer], value: JObject) =
    CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERSet = true
    CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYERValue = value

# Java field initializers run after the base initializer
proc initFieldsCollidableCompositeLayer(this: CollidableCompositeLayer) =
    this.collidableInferface = CollidableNeverCollideBehaviorFactory.getInstance().createBehavior()
    discard

proc getNullInstance*(t: typedesc[CollidableCompositeLayer]): CollidableCompositeLayer {.discardable.} =
        if CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER == NullUtil.getInstance().NULL_OBJECT:
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER = newCollidableCompositeLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance())
        return CollidableCompositeLayer(JObject(CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER))

proc initCollidableCompositeLayer*(this: CollidableCompositeLayer, name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase, collidableBaseBehaviorFactory: CollidableBaseBehaviorFactory) =
        initAllBinaryGameLayer(this, name, layerInfo, viewPosition)
        this.initFieldsCollidableCompositeLayer()
        if (not jSame(collidableBaseBehaviorFactory, CollidableNeverCollideBehaviorFactory.getInstance())):
            this.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior())

proc newCollidableCompositeLayer*(name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase, collidableBaseBehaviorFactory: CollidableBaseBehaviorFactory): CollidableCompositeLayer =
    result = CollidableCompositeLayer()
    initCollidableCompositeLayer(result, name, layerInfo, viewPosition, collidableBaseBehaviorFactory)

method getArtificialIntelligenceInterface*(this: CollidableCompositeLayer): ArtificialIntelligenceInterface {.base, discardable.} =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)
        return ArtificialIntelligence.getInstance()

method getCollidableInferface*(this: CollidableCompositeLayer): CollidableBaseBehavior {.discardable.} =
        return this.collidableInferface

method setCollidableInferface*(this: CollidableCompositeLayer, collidableInferface: CollidableBaseBehavior) {.base.} =
        this.collidableInferface = collidableInferface

method implmentsCollidableInterface*(this: CollidableCompositeLayer): bool {.discardable.} =
        return true

method toStringAppend*(this: CollidableCompositeLayer, stringBuffer: StringMaker) =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        jSuperStatement(procCall AllBinaryGameLayer(this).toStringAppend(stringBuffer))
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(this.getCollidableInferface().toString())

method toString*(this: CollidableCompositeLayer): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        this.toStringAppend(stringBuffer)
        return stringBuffer.toString()

when declared(newCollidableCompositeLayerHook4):
    newCollidableCompositeLayerHook4 = proc (name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase, collidableBaseBehaviorFactory: CollidableBaseBehaviorFactory): AllBinaryGameLayer = newCollidableCompositeLayer(name, layerInfo, viewPosition, collidableBaseBehaviorFactory)

