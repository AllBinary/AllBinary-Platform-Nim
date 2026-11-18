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
import org/allbinary/graphics/form/ItemPaintableFactory as ItemPaintableFactoryModule
export ItemPaintableFactoryModule
import org/allbinary/graphics/form/ItemPaintable as ItemPaintableModule
export ItemPaintableModule
import org/allbinary/graphics/form/PaintableForm as PaintableFormModule
export PaintableFormModule

type
    LockableFormPaintableFactory* = ref object of ItemPaintableFactory
        lockedIndex*: int32

proc newLockableFormPaintableFactory*(lockedIndex: int32): LockableFormPaintableFactory
proc initLockableFormPaintableFactory*(this: LockableFormPaintableFactory, lockedIndex: int32)
method getInstanceItemPaintable*(this: LockableFormPaintableFactory, paintableForm: PaintableForm): ItemPaintable {.discardable.}
import org/allbinary/graphics/form/LockablePaintable as LockablePaintableModule
export LockablePaintableModule


# Java field initializers run after the base initializer
proc initFieldsLockableFormPaintableFactory(this: LockableFormPaintableFactory) =
    
    discard

proc initLockableFormPaintableFactory*(this: LockableFormPaintableFactory, lockedIndex: int32) =
        initItemPaintableFactory(this)
        this.initFieldsLockableFormPaintableFactory()
        this.lockedIndex = lockedIndex

proc newLockableFormPaintableFactory*(lockedIndex: int32): LockableFormPaintableFactory =
    result = LockableFormPaintableFactory()
    initLockableFormPaintableFactory(result, lockedIndex)

method getInstanceItemPaintable*(this: LockableFormPaintableFactory, paintableForm: PaintableForm): ItemPaintable {.discardable.} =
        return newLockablePaintable(this.lockedIndex)

when declared(newLockableFormPaintableFactoryHook1):
    newLockableFormPaintableFactoryHook1 = proc (lockedIndex: int32): ItemPaintableFactory = newLockableFormPaintableFactory(lockedIndex)

