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
# package org.allbinary.game.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/CollidableCompositeLayer as CollidableCompositeLayerModule
export CollidableCompositeLayerModule
import org/allbinary/game/part/CountedLayerInterfaceFactoryPart as CountedLayerInterfaceFactoryPartModule
export CountedLayerInterfaceFactoryPartModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/game/layer/pickup/PickupBehaviorInterface as PickupBehaviorInterfaceModule
export PickupBehaviorInterfaceModule
import org/allbinary/game/layer/pickup/PickupProcessorInterface as PickupProcessorInterfaceModule
export PickupProcessorInterfaceModule
import org/allbinary/game/layer/pickup/PickedUpLayerType as PickedUpLayerTypeModule
export PickedUpLayerTypeModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface as CountedPickedUpLayerInterfaceFactoryInterfaceModule
export CountedPickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterface as PickedUpLayerInterfaceModule
export PickedUpLayerInterfaceModule

type
    PickupBehavior* = ref object of PickupBehaviorInterface
        logUtil*: LogUtil
        countedIndex*: int32
        ownerLayerInterface*: CollidableCompositeLayer

proc newPickupBehavior*(ownerLayerInterface: CollidableCompositeLayer, countedIndex: int32): PickupBehavior
proc initPickupBehavior*(this: PickupBehavior, ownerLayerInterface: CollidableCompositeLayer, countedIndex: int32)
proc getNullInstance*(t: typedesc[PickupBehavior]): PickupBehavior {.discardable.}
method doPickup*(this: PickupBehavior, pickupProcessorInterface: PickupProcessorInterface)
method doPickupLayer*(this: PickupBehavior, pickupLayerInterface: PickedUpLayerInterface)
method add*(this: PickupBehavior, countedPickedUpLayerInterfaceFactoryInterface: CountedPickedUpLayerInterfaceFactoryInterface) {.base.}
method addAt*(this: PickupBehavior, countedPickedUpLayerInterfaceFactoryInterface: CountedPickedUpLayerInterfaceFactoryInterface, partIndex: int32) {.base.}
method getFirstAvailableCountedLayerInterfaceFactory*(this: PickupBehavior, pickedUpLayerTypeArray: JArray[PickedUpLayerType]): CountedLayerInterfaceFactoryPart {.base, discardable.}
method getCountedLayerInterfaceFactoryForSlot*(this: PickupBehavior, slotIndex: int32): CountedLayerInterfaceFactoryPart {.base, discardable.}
method getCountedIndex*(this: PickupBehavior): int32 {.base, discardable.}
import org/allbinary/game/health/HealthInterfaceCompositeInterface as HealthInterfaceCompositeInterfaceModule
export HealthInterfaceCompositeInterfaceModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule
import org/allbinary/game/part/PartInterface as PartInterfaceModule
export PartInterfaceModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory as PickedUpLayerTypeFactoryModule
export PickedUpLayerTypeFactoryModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule

var PickupBehavior_NULL_PICKUP_BEHAVIORValue: JObject
var PickupBehavior_NULL_PICKUP_BEHAVIORSet = false
proc NULL_PICKUP_BEHAVIOR*(t: typedesc[PickupBehavior]): JObject =
    if not PickupBehavior_NULL_PICKUP_BEHAVIORSet:
        PickupBehavior_NULL_PICKUP_BEHAVIORSet = true
        PickupBehavior_NULL_PICKUP_BEHAVIORValue = NullUtil.getInstance().NULL_OBJECT
    PickupBehavior_NULL_PICKUP_BEHAVIORValue
proc `NULL_PICKUP_BEHAVIOR=`*(t: typedesc[PickupBehavior], value: JObject) =
    PickupBehavior_NULL_PICKUP_BEHAVIORSet = true
    PickupBehavior_NULL_PICKUP_BEHAVIORValue = value

# Java field initializers run after the base initializer
proc initFieldsPickupBehavior(this: PickupBehavior) =
    this.logUtil = LogUtil.getInstance()
    
    
    discard

proc getNullInstance*(t: typedesc[PickupBehavior]): PickupBehavior {.discardable.} =
        if PickupBehavior.NULL_PICKUP_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT:
            PickupBehavior.NULL_PICKUP_BEHAVIOR = newPickupBehavior(CollidableCompositeLayer.getNullInstance(), 0)
        return PickupBehavior(JObject(PickupBehavior.NULL_PICKUP_BEHAVIOR))

proc initPickupBehavior*(this: PickupBehavior, ownerLayerInterface: CollidableCompositeLayer, countedIndex: int32) =
        this.initFieldsPickupBehavior()
        this.ownerLayerInterface = ownerLayerInterface
        this.countedIndex = countedIndex

proc newPickupBehavior*(ownerLayerInterface: CollidableCompositeLayer, countedIndex: int32): PickupBehavior =
    result = PickupBehavior()
    initPickupBehavior(result, ownerLayerInterface, countedIndex)

method doPickup*(this: PickupBehavior, pickupProcessorInterface: PickupProcessorInterface) =
        try:
            let healthInterfaceCompositeInterface: HealthInterfaceCompositeInterface = HealthInterfaceCompositeInterface(JObject(this.ownerLayerInterface))
            if healthInterfaceCompositeInterface.getHealthInterface().isAlive():
                pickupProcessorInterface.process(this.ownerLayerInterface)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "doPickup", e)

method doPickupLayer*(this: PickupBehavior, pickupLayerInterface: PickedUpLayerInterface) =
        try:
            let pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface = pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface()
            let pickedUpLayerType: PickedUpLayerType = pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType()
            let pickedUpLayerTypeFactory: PickedUpLayerTypeFactory = PickedUpLayerTypeFactory.getInstance()
            if pickedUpLayerType == pickedUpLayerTypeFactory.BEAM or pickedUpLayerType == pickedUpLayerTypeFactory.MINE or pickedUpLayerType == pickedUpLayerTypeFactory.PROJECTILE or pickedUpLayerType == pickedUpLayerTypeFactory.ENHANCEMENT:
                this.add(CountedPickedUpLayerInterfaceFactoryInterface(JObject(pickedUpLayerInterfaceFactoryInterface)))
            elif pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType() == pickedUpLayerTypeFactory.PART:
                let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(this.ownerLayerInterface))
                collidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface)
            elif pickedUpLayerType == pickedUpLayerTypeFactory.NONE:
                discard
            else:
                let pickupProcessorInterface: PickupProcessorInterface = PickupProcessorInterface(JObject(pickedUpLayerInterfaceFactoryInterface))
                this.doPickup(pickupProcessorInterface)
            pickupLayerInterface.setPickedUp()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "doPickup", e)

method add*(this: PickupBehavior, countedPickedUpLayerInterfaceFactoryInterface: CountedPickedUpLayerInterfaceFactoryInterface) {.base.} =
        let partIndex: int32 = countedPickedUpLayerInterfaceFactoryInterface.getId() +% this.countedIndex
        this.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex)

method addAt*(this: PickupBehavior, countedPickedUpLayerInterfaceFactoryInterface: CountedPickedUpLayerInterfaceFactoryInterface, partIndex: int32) {.base.} =
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(this.ownerLayerInterface))
        let countedLayerInterfaceFactory: CountedLayerInterfaceFactoryPart = CountedLayerInterfaceFactoryPart(JObject(collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex]))
        countedLayerInterfaceFactory.setTotal(countedLayerInterfaceFactory.getTotal() +% countedPickedUpLayerInterfaceFactoryInterface.getTotal())

method getFirstAvailableCountedLayerInterfaceFactory*(this: PickupBehavior, pickedUpLayerTypeArray: JArray[PickedUpLayerType]): CountedLayerInterfaceFactoryPart {.base, discardable.} =
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(this.ownerLayerInterface))
        let partInterfaceArray: JArray[PartInterface] = collidableDestroyableDamageableLayer.getPartInterfaceArray()
        let size: int32 = partInterfaceArray.length
        var nextCountedLayerInterfaceFactory: CountedLayerInterfaceFactoryPart = nil
        var countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory = nil
        block:
            var index: int32 = this.countedIndex
            while index < size:
                defer: index = index +% 1
                nextCountedLayerInterfaceFactory = CountedLayerInterfaceFactoryPart(JObject(collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]))
                countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory()
                block:
                    var index2: int32 = pickedUpLayerTypeArray.length
                    while jPreDecrement(index2) >= 0:
                        if countedPickedUpLayerInterfaceFactory.getPickedUpLayerType() == pickedUpLayerTypeArray[index2]:
                            if nextCountedLayerInterfaceFactory.getTotal() > 0:
                                return nextCountedLayerInterfaceFactory
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY

method getCountedLayerInterfaceFactoryForSlot*(this: PickupBehavior, slotIndex: int32): CountedLayerInterfaceFactoryPart {.base, discardable.} =
        var currentSlot: int32 = 0
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(this.ownerLayerInterface))
        let partInterfaceArray: JArray[PartInterface] = collidableDestroyableDamageableLayer.getPartInterfaceArray()
        let size: int32 = partInterfaceArray.length
        var nextCountedLayerInterfaceFactory: CountedLayerInterfaceFactoryPart = nil
        block:
            var index: int32 = this.countedIndex
            while index < size:
                defer: index = index +% 1
                nextCountedLayerInterfaceFactory = CountedLayerInterfaceFactoryPart(JObject(collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]))
                if nextCountedLayerInterfaceFactory.getTotal() > 0:
                    if currentSlot == slotIndex:
                        return nextCountedLayerInterfaceFactory
                    else:
                        currentSlot = currentSlot +% 1
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY

method getCountedIndex*(this: PickupBehavior): int32 {.base, discardable.} =
        return this.countedIndex

