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
import org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton as CurrentlyPressedTouchButtonSingletonModule
export CurrentlyPressedTouchButtonSingletonModule
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule

type
    CurrentlyPressedTouchButtonSingletonDebug* = ref object of CurrentlyPressedTouchButtonSingleton
        string*: string
        listString*: string
        appendText*: string
        PRESSED_AND_FIRED*: string
        PRESSED_AND_NOT_FIRED*: string
        ASSOCIATED_RELEASED_AND_FIRED*: string
        RELEASED_AND_FIRED*: string
        RELEASED_AND_FIRED_2*: string
        RELEASED_AND_NOT_FIRED*: string

proc newCurrentlyPressedTouchButtonSingletonDebug*(): CurrentlyPressedTouchButtonSingletonDebug
proc getInstance*(t: typedesc[CurrentlyPressedTouchButtonSingletonDebug]): CurrentlyPressedTouchButtonSingleton {.discardable.}
method appendTouchButtonInput*(this: CurrentlyPressedTouchButtonSingletonDebug, append: string, touchButtonInput: TouchButtonInput) {.base.}
method append*(this: CurrentlyPressedTouchButtonSingletonDebug, append: string) {.base.}
method clearLog*(this: CurrentlyPressedTouchButtonSingletonDebug, x: int32, y: int32) {.base.}
method releaseAndNotFired*(this: CurrentlyPressedTouchButtonSingletonDebug) {.base.}
method releaseAndFired*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.}
method releaseAndFired2*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.}
method releaseAndFiredAssociated*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.}
method pressedAndFired*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.}
method pressedAndNotFired*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.}
method removeAt*(this: CurrentlyPressedTouchButtonSingletonDebug, index: int32): TouchButtonInput {.discardable.}
method remove*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput): bool {.discardable.}
method add*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput)
method toString*(this: CurrentlyPressedTouchButtonSingletonDebug): string {.discardable.}
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var CurrentlyPressedTouchButtonSingletonDebug_instanceCValue: CurrentlyPressedTouchButtonSingletonDebug
var CurrentlyPressedTouchButtonSingletonDebug_instanceCSet = false
proc instanceC*(t: typedesc[CurrentlyPressedTouchButtonSingletonDebug]): CurrentlyPressedTouchButtonSingletonDebug =
    if not CurrentlyPressedTouchButtonSingletonDebug_instanceCSet:
        CurrentlyPressedTouchButtonSingletonDebug_instanceCSet = true
        CurrentlyPressedTouchButtonSingletonDebug_instanceCValue = newCurrentlyPressedTouchButtonSingletonDebug()
    CurrentlyPressedTouchButtonSingletonDebug_instanceCValue

# Java field initializers run after the base initializer
proc initFieldsCurrentlyPressedTouchButtonSingletonDebug(this: CurrentlyPressedTouchButtonSingletonDebug) =
    this.string = StringUtil.getInstance().EMPTY_STRING
    this.listString = StringUtil.getInstance().EMPTY_STRING
    this.appendText = StringUtil.getInstance().EMPTY_STRING
    this.PRESSED_AND_FIRED = "pressed & fired"
    this.PRESSED_AND_NOT_FIRED = "pressed in button but not fired"
    this.ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired"
    this.RELEASED_AND_FIRED = "rel & fired 1"
    this.RELEASED_AND_FIRED_2 = "rel & fired 2"
    this.RELEASED_AND_NOT_FIRED = "rel & not fired"
    discard

proc initCurrentlyPressedTouchButtonSingletonDebug*(this: CurrentlyPressedTouchButtonSingletonDebug) =
    initCurrentlyPressedTouchButtonSingleton(this)
    this.initFieldsCurrentlyPressedTouchButtonSingletonDebug()

proc newCurrentlyPressedTouchButtonSingletonDebug*(): CurrentlyPressedTouchButtonSingletonDebug =
    result = CurrentlyPressedTouchButtonSingletonDebug()
    initCurrentlyPressedTouchButtonSingletonDebug(result)

proc getInstance*(t: typedesc[CurrentlyPressedTouchButtonSingletonDebug]): CurrentlyPressedTouchButtonSingleton {.discardable.} =
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC

method appendTouchButtonInput*(this: CurrentlyPressedTouchButtonSingletonDebug, append: string, touchButtonInput: TouchButtonInput) {.base.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(touchButtonInput.toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(append)
        this.appendText = stringBuffer.toString()
        this.string = newStringMaker().append(this.listString).append(this.appendText).toString()

method append*(this: CurrentlyPressedTouchButtonSingletonDebug, append: string) {.base.} =
        this.appendText = newStringMaker().append(this.appendText).append(append).toString()
        this.string = newStringMaker().append(this.listString).append(this.appendText).toString()

method clearLog*(this: CurrentlyPressedTouchButtonSingletonDebug, x: int32, y: int32) {.base.} =
        this.appendText = newStringMaker().append(GPoint.toStringStatic(x, y, 0)).append(CommonSeps.getInstance().SPACE).toString()
        this.string = newStringMaker().append(this.listString).append(this.appendText).toString()

method releaseAndNotFired*(this: CurrentlyPressedTouchButtonSingletonDebug) {.base.} =
        this.append(this.RELEASED_AND_NOT_FIRED)

method releaseAndFired*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.} =
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED, touchButtonInput)

method releaseAndFired2*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.} =
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED_2, touchButtonInput)

method releaseAndFiredAssociated*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.} =
        this.appendTouchButtonInput(this.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput)

method pressedAndFired*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.} =
        this.appendTouchButtonInput(this.PRESSED_AND_FIRED, touchButtonInput)

method pressedAndNotFired*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) {.base.} =
        this.appendTouchButtonInput(this.PRESSED_AND_NOT_FIRED, touchButtonInput)

method removeAt*(this: CurrentlyPressedTouchButtonSingletonDebug, index: int32): TouchButtonInput {.discardable.} =
        var touchButtonInput: TouchButtonInput = procCall CurrentlyPressedTouchButtonSingleton(this).removeAt(index)
        this.listString = this.list.toString()
        this.string = newStringMaker().append(this.listString).append(this.appendText).toString()
        return touchButtonInput

method remove*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput): bool {.discardable.} =
        var isRemoved: bool = procCall CurrentlyPressedTouchButtonSingleton(this).remove(touchButtonInput)
        this.listString = this.list.toString()
        this.string = newStringMaker().append(this.listString).append(this.appendText).toString()
        return isRemoved

method add*(this: CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput: TouchButtonInput) =
        procCall CurrentlyPressedTouchButtonSingleton(this).add(touchButtonInput)
        this.listString = this.list.toString()
        this.string = newStringMaker().append(this.listString).append(this.appendText).toString()

method toString*(this: CurrentlyPressedTouchButtonSingletonDebug): string {.discardable.} =
        return this.string

when declared(newCurrentlyPressedTouchButtonSingletonDebugHook0):
    newCurrentlyPressedTouchButtonSingletonDebugHook0 = proc (): CurrentlyPressedTouchButtonSingleton = newCurrentlyPressedTouchButtonSingletonDebug()

