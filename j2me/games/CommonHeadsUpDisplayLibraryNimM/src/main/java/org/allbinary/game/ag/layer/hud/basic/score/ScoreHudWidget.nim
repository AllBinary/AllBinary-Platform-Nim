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
# package org.allbinary.game.ag.layer.hud.basic.score

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/ag/layer/hud/basic/NumberStringHud as NumberStringHudModule
export NumberStringHudModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    ScoreHudWidget* = ref object of NumberStringHud

proc newScoreHudWidget*(maxscore: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): ScoreHudWidget
proc initScoreHudWidget*(this: ScoreHudWidget, maxscore: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor)
proc getInstance*(t: typedesc[ScoreHudWidget], maxscore: int32, location: int32, direction: int32): ScoreHudWidget {.discardable.}
method updateMeasurement*(this: ScoreHudWidget, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


proc getInstance*(t: typedesc[ScoreHudWidget], maxscore: int32, location: int32, direction: int32): ScoreHudWidget {.discardable.} =
        return newScoreHudWidget(maxscore, location, direction, 2, BasicColorFactory.getInstance().GREY)

proc initScoreHudWidget*(this: ScoreHudWidget, maxscore: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor) =
        initNumberStringHud(this, "Pts ", maxscore, location, direction, bufferZone, basicColor)
        this.updateMaxHeight = 14

proc newScoreHudWidget*(maxscore: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): ScoreHudWidget =
    result = ScoreHudWidget()
    initScoreHudWidget(result, maxscore, location, direction, bufferZone, basicColor)

method updateMeasurement*(this: ScoreHudWidget, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.updateMaxWidth = font.getSize() *% 5
        jSuperStatement(procCall NumberStringHud(this).updateMeasurement(graphics))

when declared(newScoreHudWidgetHook5):
    newScoreHudWidgetHook5 = proc (maxscore: int32, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): NumberStringHud = newScoreHudWidget(maxscore, location, direction, bufferZone, basicColor)

