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
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/graphics/form/ItemPaintable as ItemPaintableModule
export ItemPaintableModule

type
    LockablePaintable* = ref object of ItemPaintable
        animation*: Animation
        lockedIndex*: int32

proc newLockablePaintable*(lockedIndex: int32): LockablePaintable
proc initLockablePaintable*(this: LockablePaintable, lockedIndex: int32)
method paint*(this: LockablePaintable, graphics: Graphics, currentIndex: int32, x: int32, y: int32)
method getLockedIndex*(this: LockablePaintable): int32 {.base, discardable.}
method getAnimation*(this: LockablePaintable): Animation {.base, discardable.}
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/logic/system/security/licensing/LockedResources as LockedResourcesModule
export LockedResourcesModule
import org/allbinary/logic/system/security/licensing/LockedUtil as LockedUtilModule
export LockedUtilModule


# Java field initializers run after the base initializer
proc initFieldsLockablePaintable(this: LockablePaintable) =
    this.animation = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance(0)
    
    discard

proc initLockablePaintable*(this: LockablePaintable, lockedIndex: int32) =
        initItemPaintable(this)
        this.initFieldsLockablePaintable()
        this.lockedIndex = lockedIndex

proc newLockablePaintable*(lockedIndex: int32): LockablePaintable =
    result = LockablePaintable()
    initLockablePaintable(result, lockedIndex)

method paint*(this: LockablePaintable, graphics: Graphics, currentIndex: int32, x: int32, y: int32) =
        if LockedUtil.getInstance().isLocked() and currentIndex >= this.getLockedIndex():
            this.getAnimation().paintXY(graphics, x, y)

method getLockedIndex*(this: LockablePaintable): int32 {.base, discardable.} =
        return this.lockedIndex

method getAnimation*(this: LockablePaintable): Animation {.base, discardable.} =
        return this.animation

when declared(newLockablePaintableHook1):
    newLockablePaintableHook1 = proc (lockedIndex: int32): ItemPaintable = newLockablePaintable(lockedIndex)

