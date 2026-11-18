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
# package org.allbinary.game.ag.layer.pickup.life

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/ag/life/Life as LifeModule
export LifeModule
import org/allbinary/game/ag/life/LifeVisitorInterface as LifeVisitorInterfaceModule
export LifeVisitorInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    LifeLayer* = ref object of AllBinaryLayer

converter jAsLifeVisitorInterface*(value: LifeLayer): LifeVisitorInterface = cast[LifeVisitorInterface](value)
proc newLifeLayer*(): LifeLayer
proc initLifeLayer*(this: LifeLayer)
method paint*(this: LifeLayer, graphics: Graphics)
method visit*(this: LifeLayer, lifeInterface: Life)
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule


proc initLifeLayer*(this: LifeLayer) =
        initAllBinaryLayer(this, StringUtil.getInstance().EMPTY_STRING, newRectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())

proc newLifeLayer*(): LifeLayer =
    result = LifeLayer()
    initLifeLayer(result)

method paint*(this: LifeLayer, graphics: Graphics) =
        discard

method visit*(this: LifeLayer, lifeInterface: Life) =
        lifeInterface.add(jToInt16(1))

when declared(newLifeLayerHook0):
    newLifeLayerHook0 = proc (): AllBinaryLayer = newLifeLayer()

