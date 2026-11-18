#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/displayable/RepaintBehavior as RepaintBehaviorModule
export RepaintBehaviorModule

type
    AlwaysRepaintBehavior* = ref object of RepaintBehavior
        NAMEOfAlwaysRepaintBehavior*: string

proc newAlwaysRepaintBehavior*(): AlwaysRepaintBehavior
proc getInstance*(t: typedesc[AlwaysRepaintBehavior]): AlwaysRepaintBehavior {.discardable.}
method repaint*(this: AlwaysRepaintBehavior, canvas: Canvas)
method onChangeRepaint*(this: AlwaysRepaintBehavior, canvas: Canvas)
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/game/displayable/RepaintRunnable as RepaintRunnableModule
export RepaintRunnableModule

var AlwaysRepaintBehavior_instanceCValue: AlwaysRepaintBehavior
var AlwaysRepaintBehavior_instanceCSet = false
proc instanceC*(t: typedesc[AlwaysRepaintBehavior]): AlwaysRepaintBehavior =
    if not AlwaysRepaintBehavior_instanceCSet:
        AlwaysRepaintBehavior_instanceCSet = true
        AlwaysRepaintBehavior_instanceCValue = newAlwaysRepaintBehavior()
    AlwaysRepaintBehavior_instanceCValue

# Java field initializers run after the base initializer
proc initFieldsAlwaysRepaintBehavior(this: AlwaysRepaintBehavior) =
    this.NAMEOfAlwaysRepaintBehavior = "AlwaysRepaintBehavior"
    discard

proc initAlwaysRepaintBehavior*(this: AlwaysRepaintBehavior) =
    initRepaintBehavior(this)
    this.initFieldsAlwaysRepaintBehavior()

proc newAlwaysRepaintBehavior*(): AlwaysRepaintBehavior =
    result = AlwaysRepaintBehavior()
    initAlwaysRepaintBehavior(result)

proc getInstance*(t: typedesc[AlwaysRepaintBehavior]): AlwaysRepaintBehavior {.discardable.} =
        return AlwaysRepaintBehavior.instanceC

method repaint*(this: AlwaysRepaintBehavior, canvas: Canvas) =
        let features: Features = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if features.isFeature(openGLFeatureFactory.OPENGL):
            DisplayInfoSingleton.getInstance().process()
        else:
            let thread: JThread = newJThread(newRepaintRunnable(canvas), this.NAMEOfAlwaysRepaintBehavior)
            thread.start()

method onChangeRepaint*(this: AlwaysRepaintBehavior, canvas: Canvas) =
        discard

when declared(newAlwaysRepaintBehaviorHook0):
    newAlwaysRepaintBehaviorHook0 = proc (): RepaintBehavior = newAlwaysRepaintBehavior()

