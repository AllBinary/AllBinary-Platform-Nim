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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    TouchButtonFactory* = ref object of JObject
        LIST*: BasicArrayList
        list*: BasicArrayList
        savedList*: BasicArrayList
        saved*: bool

proc newTouchButtonFactory*(): TouchButtonFactory
proc initTouchButtonFactory*(this: TouchButtonFactory)
proc getInstance*(t: typedesc[TouchButtonFactory]): TouchButtonFactory {.discardable.}
method defaultList*(this: TouchButtonFactory) {.base.}
method toggle*(this: TouchButtonFactory, save: bool, list: BasicArrayList) {.base.}
method setList*(this: TouchButtonFactory, list: BasicArrayList) {.base.}
method getList*(this: TouchButtonFactory): BasicArrayList {.base, discardable.}
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule

var TouchButtonFactory_SINGLETONValue: TouchButtonFactory
var TouchButtonFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[TouchButtonFactory]): TouchButtonFactory =
    if not TouchButtonFactory_SINGLETONSet:
        TouchButtonFactory_SINGLETONSet = true
        TouchButtonFactory_SINGLETONValue = newTouchButtonFactory()
    TouchButtonFactory_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsTouchButtonFactory(this: TouchButtonFactory) =
    this.LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
    this.list = this.LIST
    this.savedList = this.LIST
    this.saved = false
    discard

proc getInstance*(t: typedesc[TouchButtonFactory]): TouchButtonFactory {.discardable.} =
        return TouchButtonFactory.SINGLETON

proc initTouchButtonFactory*(this: TouchButtonFactory) =
        this.initFieldsTouchButtonFactory()
        discard

proc newTouchButtonFactory*(): TouchButtonFactory =
    result = TouchButtonFactory()
    initTouchButtonFactory(result)

method defaultList*(this: TouchButtonFactory) {.base.} =
        this.list = this.LIST
        this.toggle(false, this.LIST)

method toggle*(this: TouchButtonFactory, save: bool, list: BasicArrayList) {.base.} =
        if (not jSame(list, BasicArrayListUtil.getInstance().getImmutableInstance())):
            this.savedList = list
            if (not this.saved):
                this.list = this.savedList
        else:
            if save:
                if (not this.saved):
                    this.saved = true
                    this.savedList = this.list
                    this.list = this.LIST
                else:
                    discard
            else:
                this.list = this.savedList
                this.saved = false

method setList*(this: TouchButtonFactory, list: BasicArrayList) {.base.} =
        if (jIsNil(list)):
            raise newJException("Exception", "Null List")
        this.list = list

method getList*(this: TouchButtonFactory): BasicArrayList {.base, discardable.} =
        return this.list

