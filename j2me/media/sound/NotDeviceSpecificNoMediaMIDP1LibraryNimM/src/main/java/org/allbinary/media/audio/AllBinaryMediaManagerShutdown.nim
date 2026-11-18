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
# package org.allbinary.media.audio

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/media/audio/SoundsFactoryInterface as SoundsFactoryInterfaceModule
export SoundsFactoryInterfaceModule

type
    AllBinaryMediaManagerShutdown* = ref object of JObject

proc newAllBinaryMediaManagerShutdown*(): AllBinaryMediaManagerShutdown
proc shutdown*(t: typedesc[AllBinaryMediaManagerShutdown], soundsFactoryInterface: SoundsFactoryInterface)
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/media/audio/AllBinaryMediaManager as AllBinaryMediaManagerModule
export AllBinaryMediaManagerModule

var AllBinaryMediaManagerShutdown_instanceValue: AllBinaryMediaManagerShutdown
var AllBinaryMediaManagerShutdown_instanceSet = false
proc instance*(t: typedesc[AllBinaryMediaManagerShutdown]): AllBinaryMediaManagerShutdown =
    if not AllBinaryMediaManagerShutdown_instanceSet:
        AllBinaryMediaManagerShutdown_instanceSet = true
        AllBinaryMediaManagerShutdown_instanceValue = newAllBinaryMediaManagerShutdown()
    AllBinaryMediaManagerShutdown_instanceValue

proc initAllBinaryMediaManagerShutdown*(this: AllBinaryMediaManagerShutdown) =
    discard

proc newAllBinaryMediaManagerShutdown*(): AllBinaryMediaManagerShutdown =
    result = AllBinaryMediaManagerShutdown()
    initAllBinaryMediaManagerShutdown(result)

proc shutdown*(t: typedesc[AllBinaryMediaManagerShutdown], soundsFactoryInterface: SoundsFactoryInterface) =
        let logUtil: LogUtil = LogUtil.getInstance()
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        logUtil.putF(commonStrings.START, AllBinaryMediaManagerShutdown.instance, "shutdown")
        AllBinaryMediaManager.shutdown(soundsFactoryInterface)

