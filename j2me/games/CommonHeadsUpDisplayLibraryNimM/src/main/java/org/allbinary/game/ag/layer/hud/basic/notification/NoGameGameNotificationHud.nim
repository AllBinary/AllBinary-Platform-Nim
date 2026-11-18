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
# package org.allbinary.game.ag.layer.hud.basic.notification

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud as GameNotificationHudModule
export GameNotificationHudModule

type
    NoGameGameNotificationHud* = ref object of GameNotificationHud

proc newNoGameGameNotificationHud*(): NoGameGameNotificationHud
proc initNoGameGameNotificationHud*(this: NoGameGameNotificationHud)
import org/allbinary/game/graphics/hud/BasicHudFactory as BasicHudFactoryModule
export BasicHudFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


proc initNoGameGameNotificationHud*(this: NoGameGameNotificationHud) =
        initGameNotificationHud(this, BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 2, BasicColorFactory.getInstance().RED)
        this.updateMaxWidth = 40
        this.updateMaxHeight = 14

proc newNoGameGameNotificationHud*(): NoGameGameNotificationHud =
    result = NoGameGameNotificationHud()
    initNoGameGameNotificationHud(result)

when declared(newNoGameGameNotificationHudHook0):
    newNoGameGameNotificationHudHook0 = proc (): GameNotificationHud = newNoGameGameNotificationHud()

