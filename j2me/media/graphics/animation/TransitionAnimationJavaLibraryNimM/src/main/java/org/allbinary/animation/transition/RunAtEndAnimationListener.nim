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
# package org.allbinary.animation.transition

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/animation/transition/AnimationListenerInterface as AnimationListenerInterfaceModule
export AnimationListenerInterfaceModule

type
    RunAtEndAnimationListener* = ref object of AnimationListenerInterface
        runnable*: Runnable

proc newRunAtEndAnimationListener*(runnable: Runnable): RunAtEndAnimationListener
proc initRunAtEndAnimationListener*(this: RunAtEndAnimationListener, runnable: Runnable)
method onPlatformAnimationStart*(this: RunAtEndAnimationListener)
method onPlatformAnimationEnd*(this: RunAtEndAnimationListener)
method onPlatformAnimationRepeat*(this: RunAtEndAnimationListener)


# Java field initializers run after the base initializer
proc initFieldsRunAtEndAnimationListener(this: RunAtEndAnimationListener) =
    
    discard

proc initRunAtEndAnimationListener*(this: RunAtEndAnimationListener, runnable: Runnable) =
        this.initFieldsRunAtEndAnimationListener()
        this.runnable = runnable

proc newRunAtEndAnimationListener*(runnable: Runnable): RunAtEndAnimationListener =
    result = RunAtEndAnimationListener()
    initRunAtEndAnimationListener(result, runnable)

method onPlatformAnimationStart*(this: RunAtEndAnimationListener) =
        discard

method onPlatformAnimationEnd*(this: RunAtEndAnimationListener) =
        discard

method onPlatformAnimationRepeat*(this: RunAtEndAnimationListener) =
        discard

