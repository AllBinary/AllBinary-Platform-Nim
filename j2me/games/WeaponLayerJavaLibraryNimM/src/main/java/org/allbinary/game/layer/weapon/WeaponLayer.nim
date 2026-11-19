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
# package org.allbinary.game.layer.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule
import org/allbinary/game/combat/weapon/WeaponProperties as WeaponPropertiesModule
export WeaponPropertiesModule
import org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer as MultiPlayerGameLayerModule
export MultiPlayerGameLayerModule
import org/allbinary/game/multiplayer/layer/RemoteInfo as RemoteInfoModule
export RemoteInfoModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/game/tick/TickableInterface as TickableInterfaceModule
export TickableInterfaceModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/physics/movement/Movement as MovementModule
export MovementModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule
import org/allbinary/game/layer/weapon/CollidableWeaponBehavior as CollidableWeaponBehaviorModule
export CollidableWeaponBehaviorModule

type
    WeaponLayer* = ref object of MultiPlayerGameLayer
        animationInterface*: Animation
        initAnimationInterface*: Animation
        destroyedAnimationInterface*: Animation
        sourceLayerInterface*: AllBinaryLayer
        totalDamage*: int32
        initDamage*: int32
        destroyed*: bool
        scoreableInterface*: ScoreableInterface
        movement*: Movement
        weaponProperties*: WeaponProperties
        multiPlayerType*: int32
        collidableWeaponBehavior*: CollidableWeaponBehavior

converter jAsTickableInterface*(value: WeaponLayer): TickableInterface = cast[TickableInterface](value)
converter jAsNamedInterface*(value: WeaponLayer): NamedInterface = cast[NamedInterface](value)
proc newWeaponLayer*(name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): WeaponLayer
proc initWeaponLayer*(this: WeaponLayer, name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase)
method setCollidableInferface*(this: WeaponLayer, collidableInferface: CollidableBaseBehavior)
method initXYZ*(this: WeaponLayer, x: int32, y: int32, z: int32) {.base.}
method init*(this: WeaponLayer, sourceLayerInterface: AllBinaryLayer, angle: int32, otherAngle: int32, weaponProperties: WeaponProperties, scoreable: ScoreableInterface) {.base.}
method setGroupInterfaces*(this: WeaponLayer) {.base.}
method processTick*(this: WeaponLayer, allBinaryLayerManager: AllBinaryLayerManager)
method isDestroyed*(this: WeaponLayer): bool {.discardable.}
method damage*(this: WeaponLayer, damage: int32, damageType: int32)
method givePoints*(this: WeaponLayer, total: int32) {.base.}
method isExhausted*(this: WeaponLayer): bool {.base, discardable.}
method getDamage*(this: WeaponLayer, damageType: int32): int32 {.discardable.}
method setDestroyed*(this: WeaponLayer, destroyed: bool) {.base.}
method getInitDamage*(this: WeaponLayer): int32 {.base, discardable.}
method setAnimationInterface*(this: WeaponLayer, animationInterface: Animation) {.base.}
method getAnimationInterface*(this: WeaponLayer): Animation {.base, discardable.}
method getInitAnimationInterfaceP*(this: WeaponLayer): Animation {.base, discardable.}
method setInitAnimationInterfaceP*(this: WeaponLayer, initAnimationInterface: Animation) {.base.}
method getDestroyedAnimationInterface*(this: WeaponLayer): Animation {.base, discardable.}
method getOwnerLayerInterface*(this: WeaponLayer): AllBinaryLayer {.base, discardable.}
method setOwnerLayerInterface*(this: WeaponLayer, sourceLayerInterface: AllBinaryLayer) {.base.}
method paint*(this: WeaponLayer, graphics: Graphics)
method paintThreed*(this: WeaponLayer, graphics: Graphics)
method getMovement*(this: WeaponLayer): Movement {.base, discardable.}
method setMovement*(this: WeaponLayer, movement: Movement) {.base.}
method getType*(this: WeaponLayer): int32 {.discardable.}
proc getStaticType*(t: typedesc[WeaponLayer]): int32 {.discardable.}
method getMultiPlayerType*(this: WeaponLayer): int32 {.discardable.}
method setWeaponPropertiesP*(this: WeaponLayer, weaponProperties: WeaponProperties) {.base.}
method getWeaponPropertiesP*(this: WeaponLayer): WeaponProperties {.base, discardable.}
method implmentsTickableInterface*(this: WeaponLayer): bool {.discardable.}
method set*(this: WeaponLayer, gl: GL)
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/game/combat/destroy/DestroyedLayerProcessor as DestroyedLayerProcessorModule
export DestroyedLayerProcessorModule
import org/allbinary/game/configuration/GameConfigurationUtil as GameConfigurationUtilModule
export GameConfigurationUtilModule
import org/allbinary/game/identification/BasicGroupFactory as BasicGroupFactoryModule
export BasicGroupFactoryModule
import org/allbinary/game/score/NoScoreable as NoScoreableModule
export NoScoreableModule


# Java field initializers run after the base initializer
proc initFieldsWeaponLayer(this: WeaponLayer) =
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    
    
    this.sourceLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    this.totalDamage = 0
    this.initDamage = 0
    this.destroyed = true
    this.scoreableInterface = NoScoreable.getInstance()
    
    this.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES
    
    this.collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance()
    discard

proc initWeaponLayer*(this: WeaponLayer, name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase) =
        initMultiPlayerGameLayer(this, remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        this.initFieldsWeaponLayer()
        this.initAnimationInterface = animationInterface
        this.setAnimationInterface(animationInterface)
        this.destroyedAnimationInterface = destroyedAnimationInterface
        this.movement = movement
        this.multiPlayerType = multiPlayerType

proc newWeaponLayer*(name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): WeaponLayer =
    result = WeaponLayer()
    initWeaponLayer(result, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)

method setCollidableInferface*(this: WeaponLayer, collidableInferface: CollidableBaseBehavior) =
        jSuperStatement(procCall MultiPlayerGameLayer(this).setCollidableInferface(collidableInferface))
        this.collidableWeaponBehavior = CollidableWeaponBehavior(JObject(this.getCollidableInferface()))

method initXYZ*(this: WeaponLayer, x: int32, y: int32, z: int32) {.base.} =
        this.x = x
        this.y = y
        this.z = z

method init*(this: WeaponLayer, sourceLayerInterface: AllBinaryLayer, angle: int32, otherAngle: int32, weaponProperties: WeaponProperties, scoreable: ScoreableInterface) {.base.} =
        this.setWeaponPropertiesP(weaponProperties)
        this.setReadyForExplosion(false)
        this.setAnimationInterface(this.getInitAnimationInterfaceP())
        this.setOwnerLayerInterface(sourceLayerInterface)
        this.collidableWeaponBehavior.init(sourceLayerInterface)
        this.setGroupInterfaces()
        if (not jIsNil(scoreable)):
            this.scoreableInterface = scoreable
        this.totalDamage = 0
        this.initDamage = weaponProperties.getDamage()
        this.setDestroyed(false)
        this.movement.init(weaponProperties.getSpeed(), angle, otherAngle)

method setGroupInterfaces*(this: WeaponLayer) {.base.} =
        let basicGroupFactory: BasicGroupFactory = BasicGroupFactory.getInstance()
        if this.sourceLayerInterface.getGroupInterface()[0] == basicGroupFactory.ENEMY:
            this.setGroupInterface(basicGroupFactory.ENEMY_ARRAY)
        else:
            this.setGroupInterface(this.sourceLayerInterface.getGroupInterface())

method processTick*(this: WeaponLayer, allBinaryLayerManager: AllBinaryLayerManager) =
        if this.isExhausted() and (not this.isDestroyed()):
            if this.isReadyForExplosion():
                var indexedAnimationInterface: IndexedAnimation = IndexedAnimation(JObject(this.getAnimationInterface()))
                var currentFrame: int32 = indexedAnimationInterface.getFrame()
                if currentFrame < indexedAnimationInterface.getAnimationSize() -% 1:
                    indexedAnimationInterface.nextFrame()
                else:
                    this.setDestroyed(true)
            else:
                let collidableWeaponBehavior: CollidableWeaponBehavior = CollidableWeaponBehavior(JObject(this.getCollidableInferface()))
                if collidableWeaponBehavior.isCollided():
                    this.setAnimationInterface(this.destroyedAnimationInterface)
                    this.getMovement().stop()
                    this.setReadyForExplosion(true)
                else:
                    this.setDestroyed(true)
        this.movement.process(this)
        this.totalDamage = this.totalDamage +% int32(this.weaponProperties.getDissipation())

method isDestroyed*(this: WeaponLayer): bool {.discardable.} =
        return this.destroyed

method damage*(this: WeaponLayer, damage: int32, damageType: int32) =
        this.totalDamage = this.totalDamage +% damage *% damage

method givePoints*(this: WeaponLayer, total: int32) {.base.} =
        this.scoreableInterface.addPoints(GameConfigurationUtil.getInstance().getCompetitionValue() *% total)

method isExhausted*(this: WeaponLayer): bool {.base, discardable.} =
        if this.totalDamage > this.getInitDamage() or this.totalDamage < 0:
            return true
        else:
            return false

method getDamage*(this: WeaponLayer, damageType: int32): int32 {.discardable.} =
        if (not this.isExhausted()):
            var total: int32 = this.getInitDamage() -% this.totalDamage
            this.givePoints(total)
            return total
        return 0

method setDestroyed*(this: WeaponLayer, destroyed: bool) {.base.} =
        this.destroyed = destroyed
        if this.isDestroyed():
            this.scoreableInterface = NoScoreable.getInstance()
            DestroyedLayerProcessor.getInstance().add(this)

method getInitDamage*(this: WeaponLayer): int32 {.base, discardable.} =
        return this.initDamage

method setAnimationInterface*(this: WeaponLayer, animationInterface: Animation) {.base.} =
        this.animationInterface = animationInterface

method getAnimationInterface*(this: WeaponLayer): Animation {.base, discardable.} =
        return this.animationInterface

method getInitAnimationInterfaceP*(this: WeaponLayer): Animation {.base, discardable.} =
        return this.initAnimationInterface

method setInitAnimationInterfaceP*(this: WeaponLayer, initAnimationInterface: Animation) {.base.} =
        this.initAnimationInterface = initAnimationInterface

method getDestroyedAnimationInterface*(this: WeaponLayer): Animation {.base, discardable.} =
        return this.destroyedAnimationInterface

method getOwnerLayerInterface*(this: WeaponLayer): AllBinaryLayer {.base, discardable.} =
        return this.sourceLayerInterface

method setOwnerLayerInterface*(this: WeaponLayer, sourceLayerInterface: AllBinaryLayer) {.base.} =
        this.sourceLayerInterface = sourceLayerInterface

method paint*(this: WeaponLayer, graphics: Graphics) =
        let viewPosition: ViewPositionBase = this.getViewPosition()
        this.animationInterface.paintXY(graphics, viewPosition.getX() -% this.getHalfWidth(), viewPosition.getY() -% this.getHalfHeight())

method paintThreed*(this: WeaponLayer, graphics: Graphics) =
        let viewPosition: ViewPositionBase = this.getViewPosition()
        this.animationInterface.paintThreedXYZ(graphics, viewPosition.getX() -% this.getHalfWidth(), viewPosition.getY() -% this.getHalfHeight(), viewPosition.getZ() -% this.getHalfDepth())

method getMovement*(this: WeaponLayer): Movement {.base, discardable.} =
        return this.movement

method setMovement*(this: WeaponLayer, movement: Movement) {.base.} =
        this.movement = movement

method getType*(this: WeaponLayer): int32 {.discardable.} =
        return WeaponLayer.getStaticType()

proc getStaticType*(t: typedesc[WeaponLayer]): int32 {.discardable.} =
        return 0

method getMultiPlayerType*(this: WeaponLayer): int32 {.discardable.} =
        return this.multiPlayerType

method setWeaponPropertiesP*(this: WeaponLayer, weaponProperties: WeaponProperties) {.base.} =
        this.weaponProperties = weaponProperties

method getWeaponPropertiesP*(this: WeaponLayer): WeaponProperties {.base, discardable.} =
        return this.weaponProperties

method implmentsTickableInterface*(this: WeaponLayer): bool {.discardable.} =
        return true

method set*(this: WeaponLayer, gl: GL) =
        this.initAnimationInterface.set(gl)

when declared(newWeaponLayerHook8):
    newWeaponLayerHook8 = proc (name: string, remoteInfo: RemoteInfo, multiPlayerType: int32, movement: Movement, animationInterface: Animation, destroyedAnimationInterface: Animation, rectangle: Rectangle, viewPosition: ViewPositionBase): MultiPlayerGameLayer = newWeaponLayer(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)

