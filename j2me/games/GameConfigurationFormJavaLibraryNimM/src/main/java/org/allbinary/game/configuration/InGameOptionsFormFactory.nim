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
import org/allbinary/init/Init as InitModule
export InitModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    InGameOptionsFormFactory* = ref object of JObject
        logUtil*: LogUtil
        SINGLETON*: CommandForm

proc newInGameOptionsFormFactory*(): InGameOptionsFormFactory
proc getInstance*(t: typedesc[InGameOptionsFormFactory]): InGameOptionsFormFactory {.discardable.}
method init*(this: InGameOptionsFormFactory, commandListener: CommandListener, initInterface: Init, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) {.base.}
method get*(this: InGameOptionsFormFactory): CommandForm {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/configuration/InGameOptionsForm as InGameOptionsFormModule
export InGameOptionsFormModule

var InGameOptionsFormFactory_instanceValue: JObject
var InGameOptionsFormFactory_instanceSet = false
proc instance*(t: typedesc[InGameOptionsFormFactory]): JObject =
    if not InGameOptionsFormFactory_instanceSet:
        InGameOptionsFormFactory_instanceSet = true
        InGameOptionsFormFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    InGameOptionsFormFactory_instanceValue
proc `instance=`*(t: typedesc[InGameOptionsFormFactory], value: JObject) =
    InGameOptionsFormFactory_instanceSet = true
    InGameOptionsFormFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsInGameOptionsFormFactory(this: InGameOptionsFormFactory) =
    this.logUtil = LogUtil.getInstance()
    this.SINGLETON = CommandForm.getNullCommandForm()
    discard

proc initInGameOptionsFormFactory*(this: InGameOptionsFormFactory) =
    this.initFieldsInGameOptionsFormFactory()

proc newInGameOptionsFormFactory*(): InGameOptionsFormFactory =
    result = InGameOptionsFormFactory()
    initInGameOptionsFormFactory(result)

proc getInstance*(t: typedesc[InGameOptionsFormFactory]): InGameOptionsFormFactory {.discardable.} =
        if InGameOptionsFormFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            InGameOptionsFormFactory.instance = newInGameOptionsFormFactory()
        return InGameOptionsFormFactory(JObject(InGameOptionsFormFactory.instance))

method init*(this: InGameOptionsFormFactory, commandListener: CommandListener, initInterface: Init, title: string, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) {.base.} =
        try:
            if (jSame(this.SINGLETON, CommandForm.getNullCommandForm())):
                initInterface.init()
                this.SINGLETON = newInGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e)

method get*(this: InGameOptionsFormFactory): CommandForm {.base, discardable.} =
        return this.SINGLETON

