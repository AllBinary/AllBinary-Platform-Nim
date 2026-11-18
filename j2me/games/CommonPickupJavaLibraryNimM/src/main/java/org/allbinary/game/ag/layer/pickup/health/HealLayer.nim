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
# package org.allbinary.game.ag.layer.pickup.health

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/health/HealthInterface as HealthInterfaceModule
export HealthInterfaceModule
import org/allbinary/game/health/HealthVisitorInterface as HealthVisitorInterfaceModule
export HealthVisitorInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    HealLayer* = ref object of AllBinaryLayer

converter jAsHealthVisitorInterface*(value: HealLayer): HealthVisitorInterface = cast[HealthVisitorInterface](value)
proc newHealLayer*(): HealLayer
proc initHealLayer*(this: HealLayer)
method paint*(this: HealLayer, graphics: Graphics)
method visit*(this: HealLayer, healthInterface: HealthInterface)
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule


proc initHealLayer*(this: HealLayer) =
        initAllBinaryLayer(this, StringUtil.getInstance().EMPTY_STRING, newRectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())

proc newHealLayer*(): HealLayer =
    result = HealLayer()
    initHealLayer(result)

method paint*(this: HealLayer, graphics: Graphics) =
        discard

method visit*(this: HealLayer, healthInterface: HealthInterface) =
        if healthInterface.isAlive():
            healthInterface.healMax()
        else:
            this.logUtil.putF("Heal attempt on dead: Does not currently occur", this, "visit")

when declared(newHealLayerHook0):
    newHealLayerHook0 = proc (): AllBinaryLayer = newHealLayer()

