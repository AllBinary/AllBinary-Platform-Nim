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
# package org.allbinary.game.ag.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/bounds/BoundsVisitorInterface as BoundsVisitorInterfaceModule
export BoundsVisitorInterfaceModule
import org/allbinary/game/physics/velocity/VelocityInterface as VelocityInterfaceModule
export VelocityInterfaceModule
import org/allbinary/layer/LayerInterface as LayerInterfaceModule
export LayerInterfaceModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    ReverseVelocityBoundsVisitor* = ref object of BoundsVisitorInterface
        logUtil*: LogUtil
        velocityInterface*: VelocityInterface
        layerInterface*: LayerInterface

proc newReverseVelocityBoundsVisitor*(layerInterface: LayerInterface): ReverseVelocityBoundsVisitor
proc initReverseVelocityBoundsVisitor*(this: ReverseVelocityBoundsVisitor, layerInterface: LayerInterface)
method getX*(this: ReverseVelocityBoundsVisitor): int32 {.discardable.}
method getY*(this: ReverseVelocityBoundsVisitor): int32 {.discardable.}
method minX*(this: ReverseVelocityBoundsVisitor)
method maxX*(this: ReverseVelocityBoundsVisitor)
method minY*(this: ReverseVelocityBoundsVisitor)
method maxY*(this: ReverseVelocityBoundsVisitor)
import org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterfaceModule
export VelocityInterfaceCompositeInterfaceModule


# Java field initializers run after the base initializer
proc initFieldsReverseVelocityBoundsVisitor(this: ReverseVelocityBoundsVisitor) =
    this.logUtil = LogUtil.getInstance()
    
    
    discard

proc initReverseVelocityBoundsVisitor*(this: ReverseVelocityBoundsVisitor, layerInterface: LayerInterface) =
        this.initFieldsReverseVelocityBoundsVisitor()
        this.layerInterface = layerInterface
        var velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface = VelocityInterfaceCompositeInterface(JObject(layerInterface))
        this.velocityInterface = VelocityInterface(JObject(velocityInterfaceCompositeInterface.getVelocityProperties()))

proc newReverseVelocityBoundsVisitor*(layerInterface: LayerInterface): ReverseVelocityBoundsVisitor =
    result = ReverseVelocityBoundsVisitor()
    initReverseVelocityBoundsVisitor(result, layerInterface)

method getX*(this: ReverseVelocityBoundsVisitor): int32 {.discardable.} =
        return this.layerInterface.getXP()

method getY*(this: ReverseVelocityBoundsVisitor): int32 {.discardable.} =
        return this.layerInterface.getYP()

method minX*(this: ReverseVelocityBoundsVisitor) =
        if this.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() < 0'i64:
            this.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)

method maxX*(this: ReverseVelocityBoundsVisitor) =
        if this.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() > 0'i64:
            this.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)

method minY*(this: ReverseVelocityBoundsVisitor) =
        if this.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() < 0'i64:
            this.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)

method maxY*(this: ReverseVelocityBoundsVisitor) =
        if this.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() > 0'i64:
            this.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)

