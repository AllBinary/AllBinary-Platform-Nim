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
# package org.allbinary.game.ag.layer.hud.basic

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Boolean as BooleanModule
export BooleanModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/game/ag/layer/hud/basic/notification/GameNotification as GameNotificationModule
export GameNotificationModule
import org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud as GameNotificationHudModule
export GameNotificationHudModule
import org/allbinary/graphics/CustomGPoint as CustomGPointModule
export CustomGPointModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule

type
    PlayerGameNotificationHud* = ref object of GameNotificationHud
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper
        EMPTY_STRING*: string
        displayInfoOfPlayerGameNotificationHud*: DisplayInfoSingleton
        timeDelayHelper*: TimeDelayHelper
        circularIndexUtil*: CircularIndexUtil
        gameNotification*: GameNotification
        permanentGameNotification*: GameNotification
        setAndRemoveProcessor*: Processor
        nextUnremoveableProcessor*: Processor
        processor*: Processor
        PERMANENT_GAME_NOTIFICATION*: string
        lastString*: string
        string*: string
        point*: CustomGPoint
        width*: int32

converter jAsUpdateMyFontInterface*(value: PlayerGameNotificationHud): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newPlayerGameNotificationHud*(location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): PlayerGameNotificationHud
proc initPlayerGameNotificationHud*(this: PlayerGameNotificationHud, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor)
method updateMeasurement*(this: PlayerGameNotificationHud, graphics: Graphics)
method getPoint*(this: PlayerGameNotificationHud, x: int32, y: int32): GPoint {.discardable.}
method add*(this: PlayerGameNotificationHud, string: string, seconds: int32, basicColor: BasicColor, permanent: bool)
method processTick*(this: PlayerGameNotificationHud)
method setAndRemove*(this: PlayerGameNotificationHud) {.base.}
method setAndRemoveProcess*(this: PlayerGameNotificationHud) {.base.}
method setNextUnremoveable*(this: PlayerGameNotificationHud) {.base.}
method setNextUnremoveableProcess*(this: PlayerGameNotificationHud) {.base.}
method clear*(this: PlayerGameNotificationHud)
method paint*(this: PlayerGameNotificationHud, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/business/advertisement/GameAdStateFactory as GameAdStateFactoryModule
export GameAdStateFactoryModule
import org/allbinary/game/GameAdState as GameAdStateModule
export GameAdStateModule
import org/allbinary/game/layer/hud/event/GameNotificationEventHandler as GameNotificationEventHandlerModule
export GameNotificationEventHandlerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule
import org/allbinary/game/ag/layer/hud/basic/SetAndRemoveProcessor as SetAndRemoveProcessorModule
export SetAndRemoveProcessorModule
import org/allbinary/game/ag/layer/hud/basic/NextUnremoveableProcessor as NextUnremoveableProcessorModule
export NextUnremoveableProcessorModule


# Java field initializers run after the base initializer
proc initFieldsPlayerGameNotificationHud(this: PlayerGameNotificationHud) =
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    this.displayInfoOfPlayerGameNotificationHud = DisplayInfoSingleton.getInstance()
    this.timeDelayHelper = newTimeDelayHelper(0)
    
    this.gameNotification = newGameNotification()
    this.permanentGameNotification = newGameNotification()
    this.setAndRemoveProcessor = newSetAndRemoveProcessor(this)
    this.nextUnremoveableProcessor = newNextUnremoveableProcessor(this)
    this.processor = Processor.getInstance()
    this.PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: "
    this.lastString = StringUtil.getInstance().EMPTY_STRING
    this.string = this.EMPTY_STRING
    this.point = CustomGPoint.NULL_CUSTOM_POINT
    this.width = 0
    discard

proc initPlayerGameNotificationHud*(this: PlayerGameNotificationHud, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor) =
        initGameNotificationHud(this, location, direction, bufferZone, basicColor)
        this.initFieldsPlayerGameNotificationHud()
        this.circularIndexUtil = CircularIndexUtil.createInstance(0)
        let gameNotificationEventHandler: GameNotificationEventHandler = GameNotificationEventHandler.getInstance()
        gameNotificationEventHandler.removeAllListeners()
        gameNotificationEventHandler.addListenerInterface(this)

proc newPlayerGameNotificationHud*(location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): PlayerGameNotificationHud =
    result = PlayerGameNotificationHud()
    initPlayerGameNotificationHud(result, location, direction, bufferZone, basicColor)

method updateMeasurement*(this: PlayerGameNotificationHud, graphics: Graphics) =
        try:
            jSuperStatement(procCall GameNotificationHud(this).updateMeasurement(graphics))
            let font: Font = graphics.getFont()
            this.width = font.stringWidth(this.string)
            this.processor.process()
            this.processor = Processor.getInstance()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let logUtil: LogUtil = LogUtil.getInstance()
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)

method getPoint*(this: PlayerGameNotificationHud, x: int32, y: int32): GPoint {.discardable.} =
        this.point = CustomGPoint.getInstance3(0, 0)
        this.point.setX(x)
        this.point.setY(y)
        return this.point

method add*(this: PlayerGameNotificationHud, string: string, seconds: int32, basicColor: BasicColor, permanent: bool) =
        if permanent.booleanValue():
            if this.lastString != string:
                this.lastString = string
                this.logUtil.putF(newStringMaker().append(this.PERMANENT_GAME_NOTIFICATION).append(string).toString(), this, this.commonStrings.ADD)
            this.permanentGameNotification.add(string, seconds, basicColor)
            this.circularIndexUtil.setSize(this.permanentGameNotification.getSize())
        else:
            this.gameNotification.add(string, seconds, basicColor)

method processTick*(this: PlayerGameNotificationHud) =
        if this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime):
            let gameAdState: GameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
            if gameAdState.isShowingAtLocation(this.getLocation()):
                this.offsetY = -54
            else:
                this.offsetY = 0
            if this.gameNotification.getSize() > 0:
                this.setAndRemove()
            elif this.permanentGameNotification.getSize() > 0:
                this.setNextUnremoveable()
            else:
                this.string = this.EMPTY_STRING

method setAndRemove*(this: PlayerGameNotificationHud) {.base.} =
        this.string = jstr(this.gameNotification.stringList.removeAt(0))
        this.processor = this.setAndRemoveProcessor

method setAndRemoveProcess*(this: PlayerGameNotificationHud) {.base.} =
        this.setX(ashr((this.displayInfoOfPlayerGameNotificationHud.getLastWidth() -% this.width), 1))
        this.point.setX(this.getX())
        this.point.setY(this.getY())
        let time: int32 = jUnboxInteger(this.gameNotification.timeList.removeAt(0))
        var iTime: int32 = time.intValue() *% 1000
        if iTime == 0:
            iTime = 500
        this.timeDelayHelper.delay = iTime
        this.setBasicColorP(BasicColor(JObject(this.gameNotification.colorList.removeAt(0))))

method setNextUnremoveable*(this: PlayerGameNotificationHud) {.base.} =
        let index: int32 = this.circularIndexUtil.getIndex()
        this.string = jstr(this.permanentGameNotification.stringList.objectArray[index])
        this.processor = this.nextUnremoveableProcessor

method setNextUnremoveableProcess*(this: PlayerGameNotificationHud) {.base.} =
        let index: int32 = this.circularIndexUtil.getIndex()
        this.setX(ashr((this.displayInfoOfPlayerGameNotificationHud.getLastWidth() -% this.width), 1))
        this.point.setX(this.getX())
        this.point.setY(this.getY())
        var time: int32 = jUnboxInteger(this.permanentGameNotification.timeList.objectArray[index])
        this.timeDelayHelper.delay = time.intValue() *% 1000
        this.setBasicColorP(BasicColor(JObject(this.permanentGameNotification.colorList.objectArray[index])))
        this.circularIndexUtil.next()

method clear*(this: PlayerGameNotificationHud) =
        this.gameNotification.clear()
        this.permanentGameNotification.clear()

method paint*(this: PlayerGameNotificationHud, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        jSuperStatement(procCall GameNotificationHud(this).paintString(graphics, this.string))

when declared(newPlayerGameNotificationHudHook4):
    newPlayerGameNotificationHudHook4 = proc (location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): GameNotificationHud = newPlayerGameNotificationHud(location, direction, bufferZone, basicColor)

