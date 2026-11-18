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
# package org.allbinary.game.layer.special

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/combat/damage/DamageableInterface as DamageableInterfaceModule
export DamageableInterfaceModule
import org/allbinary/game/combat/destroy/DestroyableInterface as DestroyableInterfaceModule
export DestroyableInterfaceModule
import org/allbinary/game/combat/destroy/event/DestroyedEvent as DestroyedEventModule
export DestroyedEventModule
import org/allbinary/game/identification/Group as GroupModule
export GroupModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/game/layer/pickup/PickupBehavior as PickupBehaviorModule
export PickupBehaviorModule
import org/allbinary/game/layer/pickup/PickupCompositeInterface as PickupCompositeInterfaceModule
export PickupCompositeInterfaceModule
import org/allbinary/game/part/PartInterface as PartInterfaceModule
export PartInterfaceModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/game/layer/special/SpecialGameInputInterface as SpecialGameInputInterfaceModule
export SpecialGameInputInterfaceModule

type
    CollidableDestroyableDamageableLayer* = ref object of CollidableCompositeLayer
        groupInterface*: JArray[Group]
        readyForExplosion*: bool
        initWidth*: int32
        initHeight*: int32
        initX*: int32
        initY*: int32
        initZ*: int32
        partInterfaceArrayP*: JArray[PartInterface]
        pickupBehavior*: PickupBehavior
        allBinaryGameLayerManagerP*: AllBinaryGameLayerManager
        isDraggable*: bool
        isDragged*: bool
        isDropped*: bool

converter jAsDestroyableInterface*(value: CollidableDestroyableDamageableLayer): DestroyableInterface = cast[DestroyableInterface](value)
converter jAsDamageableInterface*(value: CollidableDestroyableDamageableLayer): DamageableInterface = cast[DamageableInterface](value)
converter jAsPickupCompositeInterface*(value: CollidableDestroyableDamageableLayer): PickupCompositeInterface = cast[PickupCompositeInterface](value)
converter jAsSpecialGameInputInterface*(value: CollidableDestroyableDamageableLayer): SpecialGameInputInterface = cast[SpecialGameInputInterface](value)
proc newCollidableDestroyableDamageableLayer*(groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): CollidableDestroyableDamageableLayer
proc initCollidableDestroyableDamageableLayer*(this: CollidableDestroyableDamageableLayer, groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase)
proc getNullInstance*(t: typedesc[CollidableDestroyableDamageableLayer]): CollidableDestroyableDamageableLayer {.discardable.}
method initPosition*(this: CollidableDestroyableDamageableLayer) {.base.}
method initPositionXYZ*(this: CollidableDestroyableDamageableLayer, x: int32, y: int32, z: int32) {.base.}
method paint*(this: CollidableDestroyableDamageableLayer, graphics: Graphics)
method damage*(this: CollidableDestroyableDamageableLayer, damage: int32, damageType: int32)
method getDamage*(this: CollidableDestroyableDamageableLayer, damageType: int32): int32 {.discardable.}
method isDestroyed*(this: CollidableDestroyableDamageableLayer): bool {.discardable.}
method getGroupInterface*(this: CollidableDestroyableDamageableLayer): JArray[Group] {.discardable.}
method setGroupInterface*(this: CollidableDestroyableDamageableLayer, teamInterface: JArray[Group]) {.base.}
method setAllBinaryGameLayerManager*(this: CollidableDestroyableDamageableLayer, allBinaryGameLayerManager: AllBinaryGameLayerManager) {.base.}
method isReadyForExplosion*(this: CollidableDestroyableDamageableLayer): bool {.base, discardable.}
method setReadyForExplosion*(this: CollidableDestroyableDamageableLayer, isReadyForExplosion: bool) {.base.}
method getInitWidth*(this: CollidableDestroyableDamageableLayer): int32 {.base, discardable.}
method getInitHeight*(this: CollidableDestroyableDamageableLayer): int32 {.base, discardable.}
method getInitX*(this: CollidableDestroyableDamageableLayer): int32 {.base, discardable.}
method getInitY*(this: CollidableDestroyableDamageableLayer): int32 {.base, discardable.}
method up*(this: CollidableDestroyableDamageableLayer)
method down*(this: CollidableDestroyableDamageableLayer)
method right*(this: CollidableDestroyableDamageableLayer)
method left*(this: CollidableDestroyableDamageableLayer)
method strafeLeft*(this: CollidableDestroyableDamageableLayer)
method strafeRight*(this: CollidableDestroyableDamageableLayer)
method fire*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special1*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special2*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special3*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special4*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method special5*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent)
method upAnalog*(this: CollidableDestroyableDamageableLayer, yAnalogValue: int32) {.base.}
method downAnalog*(this: CollidableDestroyableDamageableLayer, yAnalogValue: int32) {.base.}
method rightAnalog*(this: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.}
method leftAnalog*(this: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.}
method rightTrigger*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, xAnalogValue: int32) {.base.}
method leftTrigger*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, xAnalogValue: int32) {.base.}
method onDestroyed*(this: CollidableDestroyableDamageableLayer, destroyedEvent: DestroyedEvent) {.base.}
method getPickupBehavior*(this: CollidableDestroyableDamageableLayer): PickupBehavior {.discardable.}
method setPickupBehavior*(this: CollidableDestroyableDamageableLayer, pickupBehavior: PickupBehavior)
method addPart*(this: CollidableDestroyableDamageableLayer, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface) {.base.}
method setPartInterfaceArray*(this: CollidableDestroyableDamageableLayer, partInterfaceArray: JArray[PartInterface]) {.base.}
method getPartInterfaceArray*(this: CollidableDestroyableDamageableLayer): JArray[PartInterface] {.base, discardable.}
method toStringAppend*(this: CollidableDestroyableDamageableLayer, stringBuffer: StringMaker)
method toString*(this: CollidableDestroyableDamageableLayer): string {.discardable.}
import org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory as CollidableNeverCollideBehaviorFactoryModule
export CollidableNeverCollideBehaviorFactoryModule
import org/allbinary/game/identification/BasicGroupFactory as BasicGroupFactoryModule
export BasicGroupFactoryModule
import org/allbinary/game/part/PartInterfaceUtil as PartInterfaceUtilModule
export PartInterfaceUtilModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/math/PositionStrings as PositionStringsModule
export PositionStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue: JObject
var CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet = false
proc NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER*(t: typedesc[CollidableDestroyableDamageableLayer]): JObject =
    if not CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet:
        CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet = true
        CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue = NullUtil.getInstance().NULL_OBJECT
    CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue
proc `NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER=`*(t: typedesc[CollidableDestroyableDamageableLayer], value: JObject) =
    CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet = true
    CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue = value
var CollidableDestroyableDamageableLayer_READYFOREXPLOSIONValue: string
var CollidableDestroyableDamageableLayer_READYFOREXPLOSIONSet = false
proc READYFOREXPLOSION*(t: typedesc[CollidableDestroyableDamageableLayer]): string =
    if not CollidableDestroyableDamageableLayer_READYFOREXPLOSIONSet:
        CollidableDestroyableDamageableLayer_READYFOREXPLOSIONSet = true
        CollidableDestroyableDamageableLayer_READYFOREXPLOSIONValue = "ReadyForExplosion: "
    CollidableDestroyableDamageableLayer_READYFOREXPLOSIONValue

# Java field initializers run after the base initializer
proc initFieldsCollidableDestroyableDamageableLayer(this: CollidableDestroyableDamageableLayer) =
    
    this.readyForExplosion = false
    
    
    this.initX = 0
    this.initY = 0
    this.initZ = 0
    this.partInterfaceArrayP = PartInterfaceUtil.getZeroArray()
    
    this.allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance()
    this.isDraggable = false
    this.isDragged = false
    this.isDropped = false
    discard

proc getNullInstance*(t: typedesc[CollidableDestroyableDamageableLayer]): CollidableDestroyableDamageableLayer {.discardable.} =
        if CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER == NullUtil.getInstance().NULL_OBJECT:
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = newCollidableDestroyableDamageableLayer(BasicGroupFactory.getInstance().NONE_ARRAY, StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION)
        return CollidableDestroyableDamageableLayer(JObject(CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER))

proc initCollidableDestroyableDamageableLayer*(this: CollidableDestroyableDamageableLayer, groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase) =
        initCollidableCompositeLayer(this, name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance())
        this.initFieldsCollidableDestroyableDamageableLayer()
        this.initWidth = layerInfo.getWidth()
        this.initHeight = layerInfo.getHeight()
        this.groupInterface = groupInterface
        this.pickupBehavior = PickupBehavior.getNullInstance()

proc newCollidableDestroyableDamageableLayer*(groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): CollidableDestroyableDamageableLayer =
    result = CollidableDestroyableDamageableLayer()
    initCollidableDestroyableDamageableLayer(result, groupInterface, name, layerInfo, viewPosition)

method initPosition*(this: CollidableDestroyableDamageableLayer) {.base.} =
        this.setPosition(this.initX, this.initY, this.initZ)

method initPositionXYZ*(this: CollidableDestroyableDamageableLayer, x: int32, y: int32, z: int32) {.base.} =
        this.initX = x
        this.initY = y
        this.initZ = z

method paint*(this: CollidableDestroyableDamageableLayer, graphics: Graphics) =
        procCall CollidableCompositeLayer(this).paint(graphics)

method damage*(this: CollidableDestroyableDamageableLayer, damage: int32, damageType: int32) =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method getDamage*(this: CollidableDestroyableDamageableLayer, damageType: int32): int32 {.discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method isDestroyed*(this: CollidableDestroyableDamageableLayer): bool {.discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method getGroupInterface*(this: CollidableDestroyableDamageableLayer): JArray[Group] {.discardable.} =
        return this.groupInterface

method setGroupInterface*(this: CollidableDestroyableDamageableLayer, teamInterface: JArray[Group]) {.base.} =
        this.groupInterface = teamInterface

method setAllBinaryGameLayerManager*(this: CollidableDestroyableDamageableLayer, allBinaryGameLayerManager: AllBinaryGameLayerManager) {.base.} =
        this.allBinaryGameLayerManagerP = allBinaryGameLayerManager
        if (jIsNil(this.allBinaryGameLayerManagerP)):
            raise newJException("RuntimeException", "")

method isReadyForExplosion*(this: CollidableDestroyableDamageableLayer): bool {.base, discardable.} =
        return this.readyForExplosion

method setReadyForExplosion*(this: CollidableDestroyableDamageableLayer, isReadyForExplosion: bool) {.base.} =
        this.readyForExplosion = isReadyForExplosion

method getInitWidth*(this: CollidableDestroyableDamageableLayer): int32 {.base, discardable.} =
        return this.initWidth

method getInitHeight*(this: CollidableDestroyableDamageableLayer): int32 {.base, discardable.} =
        return this.initHeight

method getInitX*(this: CollidableDestroyableDamageableLayer): int32 {.base, discardable.} =
        return this.initX

method getInitY*(this: CollidableDestroyableDamageableLayer): int32 {.base, discardable.} =
        return this.initY

method up*(this: CollidableDestroyableDamageableLayer) =
        discard

method down*(this: CollidableDestroyableDamageableLayer) =
        discard

method right*(this: CollidableDestroyableDamageableLayer) =
        discard

method left*(this: CollidableDestroyableDamageableLayer) =
        discard

method strafeLeft*(this: CollidableDestroyableDamageableLayer) =
        discard

method strafeRight*(this: CollidableDestroyableDamageableLayer) =
        discard

method fire*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special1*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special2*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special3*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special4*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method special5*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) =
        discard

method upAnalog*(this: CollidableDestroyableDamageableLayer, yAnalogValue: int32) {.base.} =
        discard

method downAnalog*(this: CollidableDestroyableDamageableLayer, yAnalogValue: int32) {.base.} =
        discard

method rightAnalog*(this: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.} =
        discard

method leftAnalog*(this: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.} =
        discard

method rightTrigger*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, xAnalogValue: int32) {.base.} =
        discard

method leftTrigger*(this: CollidableDestroyableDamageableLayer, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, xAnalogValue: int32) {.base.} =
        discard

method onDestroyed*(this: CollidableDestroyableDamageableLayer, destroyedEvent: DestroyedEvent) {.base.} =
        discard

method getPickupBehavior*(this: CollidableDestroyableDamageableLayer): PickupBehavior {.discardable.} =
        return this.pickupBehavior

method setPickupBehavior*(this: CollidableDestroyableDamageableLayer, pickupBehavior: PickupBehavior) =
        this.pickupBehavior = pickupBehavior

method addPart*(this: CollidableDestroyableDamageableLayer, pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface) {.base.} =
        discard

method setPartInterfaceArray*(this: CollidableDestroyableDamageableLayer, partInterfaceArray: JArray[PartInterface]) {.base.} =
        this.partInterfaceArrayP = partInterfaceArray

method getPartInterfaceArray*(this: CollidableDestroyableDamageableLayer): JArray[PartInterface] {.base, discardable.} =
        return this.partInterfaceArrayP

method toStringAppend*(this: CollidableDestroyableDamageableLayer, stringBuffer: StringMaker) =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let positionStrings: PositionStrings = PositionStrings.getInstance()
        procCall CollidableCompositeLayer(this).toStringAppend(stringBuffer)
        stringBuffer.append(commonSeps.NEW_LINE)
        let groupInterfaceArray: JArray[Group] = this.getGroupInterface()
        let size: int32 = groupInterfaceArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                stringBuffer.append(groupInterfaceArray[index].toString())
                stringBuffer.append(commonSeps.COMMA)
        let pickupBehavior: PickupBehavior = this.getPickupBehavior()
        if (not jIsNil(pickupBehavior)):
            stringBuffer.append(commonSeps.NEW_LINE)
            stringBuffer.append(pickupBehavior.toString())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(CollidableDestroyableDamageableLayer.READYFOREXPLOSION)
        stringBuffer.appendboolean(this.readyForExplosion)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(this.commonStrings.INIT)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(this.initX)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(this.initX)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(this.initZ)

method toString*(this: CollidableDestroyableDamageableLayer): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        this.toStringAppend(stringBuffer)
        return stringBuffer.toString()

when declared(newCollidableDestroyableDamageableLayerHook4):
    newCollidableDestroyableDamageableLayerHook4 = proc (groupInterface: JArray[Group], name: string, layerInfo: Rectangle, viewPosition: ViewPositionBase): CollidableCompositeLayer = newCollidableDestroyableDamageableLayer(groupInterface, name, layerInfo, viewPosition)

