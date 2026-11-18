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
# package org.allbinary.game.ag.layer.pickup.points

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    PointsLayer* = ref object of AllBinaryLayer
        points*: int32

proc newPointsLayer*(points: int32): PointsLayer
proc initPointsLayer*(this: PointsLayer, points: int32)
method paint*(this: PointsLayer, graphics: Graphics)
method visit*(this: PointsLayer, scoreableInterface: ScoreableInterface) {.base.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule


# Java field initializers run after the base initializer
proc initFieldsPointsLayer(this: PointsLayer) =
    
    discard

proc initPointsLayer*(this: PointsLayer, points: int32) =
        initAllBinaryLayer(this, StringUtil.getInstance().EMPTY_STRING, newRectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
        this.initFieldsPointsLayer()
        this.points = points

proc newPointsLayer*(points: int32): PointsLayer =
    result = PointsLayer()
    initPointsLayer(result, points)

method paint*(this: PointsLayer, graphics: Graphics) =
        discard

method visit*(this: PointsLayer, scoreableInterface: ScoreableInterface) {.base.} =
        scoreableInterface.addPoints(this.points)

when declared(newPointsLayerHook1):
    newPointsLayerHook1 = proc (points: int32): AllBinaryLayer = newPointsLayer(points)

