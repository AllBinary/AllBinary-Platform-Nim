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
# package org.allbinary.game.configuration

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/screen/CommandForm as CommandFormModule
export CommandFormModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    GameOptionsFormFactory* = ref object of JObject
        logUtil*: LogUtil

proc newGameOptionsFormFactory*(): GameOptionsFormFactory
proc initGameOptionsFormFactory*(this: GameOptionsFormFactory)
proc getInstance*(t: typedesc[GameOptionsFormFactory]): GameOptionsFormFactory {.discardable.}
method init*(this: GameOptionsFormFactory, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm {.base, discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/configuration/GameOptionsForm as GameOptionsFormModule
export GameOptionsFormModule

var GameOptionsFormFactory_instanceValue: GameOptionsFormFactory
var GameOptionsFormFactory_instanceSet = false
proc instance*(t: typedesc[GameOptionsFormFactory]): GameOptionsFormFactory =
    if not GameOptionsFormFactory_instanceSet:
        GameOptionsFormFactory_instanceSet = true
        GameOptionsFormFactory_instanceValue = newGameOptionsFormFactory()
    GameOptionsFormFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameOptionsFormFactory(this: GameOptionsFormFactory) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initGameOptionsFormFactory*(this: GameOptionsFormFactory) =
        this.initFieldsGameOptionsFormFactory()
        discard

proc newGameOptionsFormFactory*(): GameOptionsFormFactory =
    result = GameOptionsFormFactory()
    initGameOptionsFormFactory(result)

proc getInstance*(t: typedesc[GameOptionsFormFactory]): GameOptionsFormFactory {.discardable.} =
        return GameOptionsFormFactory.instance

method init*(this: GameOptionsFormFactory, commandListener: CommandListener, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandForm {.base, discardable.} =
        try:
            return newGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e)
            return CommandForm.getNullCommandForm()

