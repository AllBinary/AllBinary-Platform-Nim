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
# package org.allbinary.globals

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/ClassLoader as ClassLoaderModule
export ClassLoaderModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    Globals* = ref object of JObject
        logUtil*: LogUtil

proc newGlobals*(): Globals
proc initGlobals*(this: Globals)
proc getInstance*(t: typedesc[Globals]): Globals {.discardable.}
method init*(this: Globals, classLoader: ClassLoader, pathString: string) {.base.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule
import org/allbinary/logic/system/loader/WebappClassLoaderInfo as WebappClassLoaderInfoModule
export WebappClassLoaderInfoModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/globals/AppUrlGlobals as AppUrlGlobalsModule
export AppUrlGlobalsModule
import org/allbinary/globals/URLGLOBALS as URLGLOBALSModule
export URLGLOBALSModule

var Globals_instanceValue: Globals
var Globals_instanceSet = false
proc instance*(t: typedesc[Globals]): Globals =
    if not Globals_instanceSet:
        Globals_instanceSet = true
        Globals_instanceValue = newGlobals()
    Globals_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGlobals(this: Globals) =
    this.logUtil = LogUtil.getInstance()
    discard

proc getInstance*(t: typedesc[Globals]): Globals {.discardable.} =
        return Globals.instance

proc initGlobals*(this: Globals) =
        this.initFieldsGlobals()
        discard

proc newGlobals*(): Globals =
    result = Globals()
    initGlobals(result)

method init*(this: Globals, classLoader: ClassLoader, pathString: string) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        let appUrlGlobals: AppUrlGlobals = newAppUrlGlobals()
        appUrlGlobals.setWebappPath(pathString)
        URLGLOBALS.init(appUrlGlobals)
        WebappClassLoaderInfo.setLoader(classLoader)
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ")
        stringBuffer.append(pathString)
        stringBuffer.append(" ClassLoader: ")
        stringBuffer.append(jClassName(classLoader))
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT)
        let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
        if stringValidationUtil.isEmpty(pathString):
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("No Path Provided. Using Process Path: ")
            stringBuffer.append(pathString)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(CommonSeps.getInstance().EQUALS)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(URLGLOBALS.getWebappPath())
            this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT)
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append("Webapp Path Set To: ")
        stringBuffer.append(URLGLOBALS.getWebappPath())
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT)

