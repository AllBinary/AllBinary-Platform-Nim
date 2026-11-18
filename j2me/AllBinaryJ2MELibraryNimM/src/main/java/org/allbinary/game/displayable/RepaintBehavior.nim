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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    RepaintBehavior* = ref object of JObject
        logUtil*: LogUtil
        NAME*: string

proc newRepaintBehavior*(): RepaintBehavior
proc getInstance*(t: typedesc[RepaintBehavior]): RepaintBehavior {.discardable.}
method repaint*(this: RepaintBehavior, canvas: Canvas) {.base.}
method onChangeRepaint*(this: RepaintBehavior, canvas: Canvas) {.base.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/game/displayable/RepaintRunnable as RepaintRunnableModule
export RepaintRunnableModule

var RepaintBehavior_instanceValue: RepaintBehavior
var RepaintBehavior_instanceSet = false
proc instance*(t: typedesc[RepaintBehavior]): RepaintBehavior =
    if not RepaintBehavior_instanceSet:
        RepaintBehavior_instanceSet = true
        RepaintBehavior_instanceValue = newRepaintBehavior()
    RepaintBehavior_instanceValue

# Java field initializers run after the base initializer
proc initFieldsRepaintBehavior(this: RepaintBehavior) =
    this.logUtil = LogUtil.getInstance()
    this.NAME = "RepaintBehavior"
    discard

proc initRepaintBehavior*(this: RepaintBehavior) =
    this.initFieldsRepaintBehavior()

proc newRepaintBehavior*(): RepaintBehavior =
    result = RepaintBehavior()
    initRepaintBehavior(result)

proc getInstance*(t: typedesc[RepaintBehavior]): RepaintBehavior {.discardable.} =
        return RepaintBehavior.instance

method repaint*(this: RepaintBehavior, canvas: Canvas) {.base.} =
        discard

method onChangeRepaint*(this: RepaintBehavior, canvas: Canvas) {.base.} =
        let features: Features = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if features.isFeature(openGLFeatureFactory.OPENGL):
            DisplayInfoSingleton.getInstance().process()
        else:
            let thread: JThread = newJThread(newRepaintRunnable(canvas), this.NAME)
            thread.start()

