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
# package org.allbinary.game.part.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/combat/weapon/WeaponProperties as WeaponPropertiesModule
export WeaponPropertiesModule
import org/allbinary/game/part/PartInterface as PartInterfaceModule
export PartInterfaceModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/graphics/RelativeRelationship as RelativeRelationshipModule
export RelativeRelationshipModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/part/weapon/SalvoInterface as SalvoInterfaceModule
export SalvoInterfaceModule

type
    BasicWeaponPart* = ref object of PartInterface
        animationInterface*: Animation
        ownerLayerInterface*: AllBinaryLayer
        weaponProperties*: WeaponProperties
        scoreableInterface*: ScoreableInterface
        relativeRelationship*: RelativeRelationship

converter jAsSalvoInterface*(value: BasicWeaponPart): SalvoInterface = cast[SalvoInterface](value)
proc newBasicWeaponPart*(animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicWeaponPart
proc initBasicWeaponPart*(this: BasicWeaponPart, animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship)
proc createBasicWeaponPart*(t: typedesc[BasicWeaponPart], animationInterface: Animation): BasicWeaponPart {.discardable.}
method init*(this: BasicWeaponPart, sourceLayerInterface: AllBinaryLayer, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship) {.base.}
method process*(this: BasicWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16)
method processScore*(this: BasicWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface)
method getOwnerLayerInterface*(this: BasicWeaponPart): AllBinaryLayer {.base, discardable.}
method setOwnerLayerInterface*(this: BasicWeaponPart, ownerLayerInterface: AllBinaryLayer) {.base.}
method getAnimationInterface*(this: BasicWeaponPart): Animation {.discardable.}
method setAnimationInterface*(this: BasicWeaponPart, animationInterface: Animation) {.base.}
method paint*(this: BasicWeaponPart, graphics: Graphics)
method paintThreed*(this: BasicWeaponPart, graphics: Graphics)
method getWeaponProperties*(this: BasicWeaponPart): WeaponProperties {.base, discardable.}
method setWeaponProperties*(this: BasicWeaponPart, weaponProperties: WeaponProperties) {.base.}
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/game/score/NoScoreable as NoScoreableModule
export NoScoreableModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule

var BasicWeaponPart_NULL_BASIC_WEAPON_PARTValue: BasicWeaponPart
var BasicWeaponPart_NULL_BASIC_WEAPON_PARTSet = false
proc NULL_BASIC_WEAPON_PART*(t: typedesc[BasicWeaponPart]): BasicWeaponPart =
    if not BasicWeaponPart_NULL_BASIC_WEAPON_PARTSet:
        BasicWeaponPart_NULL_BASIC_WEAPON_PARTSet = true
        BasicWeaponPart_NULL_BASIC_WEAPON_PARTValue = BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().getInstance(0))
    BasicWeaponPart_NULL_BASIC_WEAPON_PARTValue

# Java field initializers run after the base initializer
proc initFieldsBasicWeaponPart(this: BasicWeaponPart) =
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    this.ownerLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    this.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES
    this.scoreableInterface = NoScoreable.getInstance()
    this.relativeRelationship = RelativeRelationship.NULL_RELATIVE_RELATIONSHIP
    discard

proc createBasicWeaponPart*(t: typedesc[BasicWeaponPart], animationInterface: Animation): BasicWeaponPart {.discardable.} =
        return newBasicWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)

proc initBasicWeaponPart*(this: BasicWeaponPart, animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship) =
        this.initFieldsBasicWeaponPart()
        this.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        this.setAnimationInterface(animationInterface)

proc newBasicWeaponPart*(animationInterface: Animation, sourceLayerInterface: AllBinaryLayer, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship): BasicWeaponPart =
    result = BasicWeaponPart()
    initBasicWeaponPart(result, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)

method init*(this: BasicWeaponPart, sourceLayerInterface: AllBinaryLayer, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface, relativeRelationship: RelativeRelationship) {.base.} =
        this.setOwnerLayerInterface(sourceLayerInterface)
        this.setWeaponProperties(weaponProperties)
        this.scoreableInterface = scoreableInterface
        this.relativeRelationship = relativeRelationship

method process*(this: BasicWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16) =
        this.processScore(allbinaryLayerManager, angle, otherAngle, this.getWeaponProperties(), this.scoreableInterface)

method processScore*(this: BasicWeaponPart, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface) =
        raise newJException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED)

method getOwnerLayerInterface*(this: BasicWeaponPart): AllBinaryLayer {.base, discardable.} =
        return this.ownerLayerInterface

method setOwnerLayerInterface*(this: BasicWeaponPart, ownerLayerInterface: AllBinaryLayer) {.base.} =
        this.ownerLayerInterface = ownerLayerInterface

method getAnimationInterface*(this: BasicWeaponPart): Animation {.discardable.} =
        return this.animationInterface

method setAnimationInterface*(this: BasicWeaponPart, animationInterface: Animation) {.base.} =
        this.animationInterface = animationInterface

method paint*(this: BasicWeaponPart, graphics: Graphics) =
        let viewPosition: ViewPositionBase = this.getOwnerLayerInterface().getViewPosition()
        let viewX: int32 = viewPosition.getX()
        let viewY: int32 = viewPosition.getY()
        this.animationInterface.paintXY(graphics, viewX, viewY)

method paintThreed*(this: BasicWeaponPart, graphics: Graphics) =
        discard

method getWeaponProperties*(this: BasicWeaponPart): WeaponProperties {.base, discardable.} =
        return this.weaponProperties

method setWeaponProperties*(this: BasicWeaponPart, weaponProperties: WeaponProperties) {.base.} =
        this.weaponProperties = weaponProperties

