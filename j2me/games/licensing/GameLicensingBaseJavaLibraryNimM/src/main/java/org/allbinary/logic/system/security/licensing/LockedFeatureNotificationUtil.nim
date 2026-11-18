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
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/hud/event/GameNotificationEvent as GameNotificationEventModule
export GameNotificationEventModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    LockedFeatureNotificationUtil* = ref object of JObject
        gameNotificationEvent*: GameNotificationEvent

proc newLockedFeatureNotificationUtil*(): LockedFeatureNotificationUtil
proc getInstance*(t: typedesc[LockedFeatureNotificationUtil]): LockedFeatureNotificationUtil {.discardable.}
method fire*(this: LockedFeatureNotificationUtil) {.base.}
method fireWithColor*(this: LockedFeatureNotificationUtil, basicColor: BasicColor) {.base.}
import org/allbinary/game/layer/hud/event/GameNotificationEventHandler as GameNotificationEventHandlerModule
export GameNotificationEventHandlerModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/media/audio/ErrorSound as ErrorSoundModule
export ErrorSoundModule
import org/allbinary/media/audio/PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactoryModule
export PrimaryPlayerQueueFactoryModule
import org/allbinary/logic/system/security/licensing/LicenseStrings as LicenseStringsModule
export LicenseStringsModule

var LockedFeatureNotificationUtil_instanceValue: LockedFeatureNotificationUtil
var LockedFeatureNotificationUtil_instanceSet = false
proc instance*(t: typedesc[LockedFeatureNotificationUtil]): LockedFeatureNotificationUtil =
    if not LockedFeatureNotificationUtil_instanceSet:
        LockedFeatureNotificationUtil_instanceSet = true
        LockedFeatureNotificationUtil_instanceValue = newLockedFeatureNotificationUtil()
    LockedFeatureNotificationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLockedFeatureNotificationUtil(this: LockedFeatureNotificationUtil) =
    this.gameNotificationEvent = newGameNotificationEvent(this, LicenseStrings.getInstance().LOCKED, SmallIntegerSingletonFactory.getInstance().getAt(3), BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE)
    discard

proc initLockedFeatureNotificationUtil*(this: LockedFeatureNotificationUtil) =
    this.initFieldsLockedFeatureNotificationUtil()

proc newLockedFeatureNotificationUtil*(): LockedFeatureNotificationUtil =
    result = LockedFeatureNotificationUtil()
    initLockedFeatureNotificationUtil(result)

proc getInstance*(t: typedesc[LockedFeatureNotificationUtil]): LockedFeatureNotificationUtil {.discardable.} =
        return LockedFeatureNotificationUtil.instance

method fire*(this: LockedFeatureNotificationUtil) {.base.} =
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        GameNotificationEventHandler.getInstance().fireEvent(this.gameNotificationEvent)

method fireWithColor*(this: LockedFeatureNotificationUtil, basicColor: BasicColor) {.base.} =
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        this.gameNotificationEvent.setBasicColorP(basicColor)
        GameNotificationEventHandler.getInstance().fireEvent(this.gameNotificationEvent)

