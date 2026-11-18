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
# package org.allbinary.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Display as DisplayModule
export DisplayModule
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule
import javax/microedition/midlet/MIDlet as MIDletModule
export MIDletModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    AllBinaryMidlet* = ref object of MIDlet
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        SET_DISPLAY*: string
        SETTING_U*: string
        U_DISPLAY_U*: string
        SETTING_NO_TITLE*: string
        hashtable*: ABHashtable
        midletDestroyed*: bool

converter jAsCommandListener*(value: AllBinaryMidlet): CommandListener = cast[CommandListener](value)
proc newAllBinaryMidlet*(): AllBinaryMidlet
proc initAllBinaryMidlet*(this: AllBinaryMidlet)
proc getNullInstance*(t: typedesc[AllBinaryMidlet]): AllBinaryMidlet {.discardable.}
method setDisplay*(this: AllBinaryMidlet, newDisplay: Displayable) {.base.}
method getDisplay*(this: AllBinaryMidlet): Display {.base, discardable.}
method getCurrentDisplayable*(this: AllBinaryMidlet): Displayable {.base, discardable.}
method setDestroyed*(this: AllBinaryMidlet, destroyed: bool) {.base.}
method isDestroyed*(this: AllBinaryMidlet): bool {.base, discardable.}
method startApp*(this: AllBinaryMidlet)
method pauseApp*(this: AllBinaryMidlet)
method destroyAppInRunnable*(this: AllBinaryMidlet, unconditional: bool, isProgress: bool) {.base.}
method destroyApp*(this: AllBinaryMidlet, unconditional: bool)
method setStartStateHashtable*(this: AllBinaryMidlet, hashtable: ABHashtable) {.base.}
method getStartStateHashtable*(this: AllBinaryMidlet): ABHashtable {.base, discardable.}
method getCurrentStateHashtable*(this: AllBinaryMidlet): ABHashtable {.base, discardable.}
method commandAction*(this: AllBinaryMidlet, command: Command, displayable: Displayable)
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule
import javax/microedition/midlet/MIDletStateChangeException as MIDletStateChangeExceptionModule
export MIDletStateChangeExceptionModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/system/Memory as MemoryModule
export MemoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var AllBinaryMidlet_NULL_ALLBINARY_MIDLETValue: JObject
var AllBinaryMidlet_NULL_ALLBINARY_MIDLETSet = false
proc NULL_ALLBINARY_MIDLET*(t: typedesc[AllBinaryMidlet]): JObject =
    if not AllBinaryMidlet_NULL_ALLBINARY_MIDLETSet:
        AllBinaryMidlet_NULL_ALLBINARY_MIDLETSet = true
        AllBinaryMidlet_NULL_ALLBINARY_MIDLETValue = NullUtil.getInstance().NULL_OBJECT
    AllBinaryMidlet_NULL_ALLBINARY_MIDLETValue
proc `NULL_ALLBINARY_MIDLET=`*(t: typedesc[AllBinaryMidlet], value: JObject) =
    AllBinaryMidlet_NULL_ALLBINARY_MIDLETSet = true
    AllBinaryMidlet_NULL_ALLBINARY_MIDLETValue = value

# Java field initializers run after the base initializer
proc initFieldsAllBinaryMidlet(this: AllBinaryMidlet) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.SET_DISPLAY = "setDisplay"
    this.SETTING_U = "Setting: "
    this.U_DISPLAY_U = " Display: "
    this.SETTING_NO_TITLE = "Setting: No Title, Display: "
    this.hashtable = StdUtil.getInstance().createHashtable()
    this.midletDestroyed = false
    discard

proc getNullInstance*(t: typedesc[AllBinaryMidlet]): AllBinaryMidlet {.discardable.} =
        if AllBinaryMidlet.NULL_ALLBINARY_MIDLET == NullUtil.getInstance().NULL_OBJECT:
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET = newAllBinaryMidlet()
        return AllBinaryMidlet(JObject(AllBinaryMidlet.NULL_ALLBINARY_MIDLET))

proc initAllBinaryMidlet*(this: AllBinaryMidlet) =
        initMIDlet(this)
        this.initFieldsAllBinaryMidlet()
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, "AllBinaryMidlet::AllBinaryMidlet")

proc newAllBinaryMidlet*(): AllBinaryMidlet =
    result = AllBinaryMidlet()
    initAllBinaryMidlet(result)

method setDisplay*(this: AllBinaryMidlet, newDisplay: Displayable) {.base.} =
        var title: string = StringUtil.getInstance().EMPTY_STRING
        if newDisplay != NullCanvas.NULL_CANVASStatic:
            title = newDisplay.getTitle()
            this.logUtil.putF(newStringMaker().append(this.SETTING_U).append(title).append(this.U_DISPLAY_U).append(StringUtil.getInstance().toString(newDisplay)).toString(), this, this.SET_DISPLAY)
        let display: Display = this.getDisplay()
        display.setCurrent(newDisplay)

method getDisplay*(this: AllBinaryMidlet): Display {.base, discardable.} =
        return Display.getDisplay(this)

method getCurrentDisplayable*(this: AllBinaryMidlet): Displayable {.base, discardable.} =
        return Display.getDisplay(this).getCurrent()

method setDestroyed*(this: AllBinaryMidlet, destroyed: bool) {.base.} =
        this.midletDestroyed = destroyed

method isDestroyed*(this: AllBinaryMidlet): bool {.base, discardable.} =
        return this.midletDestroyed

method startApp*(this: AllBinaryMidlet) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method pauseApp*(this: AllBinaryMidlet) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method destroyAppInRunnable*(this: AllBinaryMidlet, unconditional: bool, isProgress: bool) {.base.} =
        discard

method destroyApp*(this: AllBinaryMidlet, unconditional: bool) =
        let METHOD_NAME: string = "AllBinaryMidlet::destroyApp"
        try:
            this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME)
            PreLogUtil.put(Memory.getInfo(), this, METHOD_NAME)
            this.setDestroyed(true)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e)

method setStartStateHashtable*(this: AllBinaryMidlet, hashtable: ABHashtable) {.base.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(hashtable)).toString(), this, "setStartStateHashtable")
        this.hashtable = hashtable

method getStartStateHashtable*(this: AllBinaryMidlet): ABHashtable {.base, discardable.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(this.hashtable)).toString(), this, "getStartStateHashtable")
        return this.hashtable

method getCurrentStateHashtable*(this: AllBinaryMidlet): ABHashtable {.base, discardable.} =
        this.logUtil.putF(this.commonStrings.START, this, "getStateHashtable")
        return StdUtil.getInstance().NULL_TABLE

method commandAction*(this: AllBinaryMidlet, command: Command, displayable: Displayable) =
        discard

when declared(newAllBinaryMidletHook0):
    newAllBinaryMidletHook0 = proc (): MIDlet = newAllBinaryMidlet()

