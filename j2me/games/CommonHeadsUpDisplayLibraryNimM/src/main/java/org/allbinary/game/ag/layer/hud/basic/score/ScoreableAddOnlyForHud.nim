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
import org/allbinary/game/score/Scoreable as ScoreableModule
export ScoreableModule
import org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget as ScoreHudWidgetModule
export ScoreHudWidgetModule

type
    ScoreableAddOnlyForHud* = ref object of Scoreable
        scoreHudWidget*: ScoreHudWidget

proc newScoreableAddOnlyForHud*(scoreVectorGraphic: ScoreHudWidget): ScoreableAddOnlyForHud
proc initScoreableAddOnlyForHud*(this: ScoreableAddOnlyForHud, scoreVectorGraphic: ScoreHudWidget)
method removePoints*(this: ScoreableAddOnlyForHud, points: int32)
method addPoints*(this: ScoreableAddOnlyForHud, points: int32)
method getScoreHudWidget*(this: ScoreableAddOnlyForHud): ScoreHudWidget {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsScoreableAddOnlyForHud(this: ScoreableAddOnlyForHud) =
    
    discard

proc initScoreableAddOnlyForHud*(this: ScoreableAddOnlyForHud, scoreVectorGraphic: ScoreHudWidget) =
        initScoreable(this, 0)
        this.initFieldsScoreableAddOnlyForHud()
        this.scoreHudWidget = scoreVectorGraphic
        this.getScoreHudWidget().set(0)

proc newScoreableAddOnlyForHud*(scoreVectorGraphic: ScoreHudWidget): ScoreableAddOnlyForHud =
    result = ScoreableAddOnlyForHud()
    initScoreableAddOnlyForHud(result, scoreVectorGraphic)

method removePoints*(this: ScoreableAddOnlyForHud, points: int32) =
        discard

method addPoints*(this: ScoreableAddOnlyForHud, points: int32) =
        jSuperStatement(procCall Scoreable(this).addPoints(points))
        this.getScoreHudWidget().add(points)

method getScoreHudWidget*(this: ScoreableAddOnlyForHud): ScoreHudWidget {.base, discardable.} =
        return this.scoreHudWidget

when declared(newScoreableAddOnlyForHudHook1):
    newScoreableAddOnlyForHudHook1 = proc (scoreVectorGraphic: ScoreHudWidget): Scoreable = newScoreableAddOnlyForHud(scoreVectorGraphic)

