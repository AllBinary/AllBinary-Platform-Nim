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
# package org.allbinary.game.layer.resources

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

type
    BasicGameResources* = ref object of JObject
        logUtil*: LogUtil
        RESOURCE*: string
        RESOURCE_DESTROY*: string

proc newBasicGameResources*(): BasicGameResources
proc initBasicGameResources*(this: BasicGameResources)
method init*(this: BasicGameResources, ROOT: string, SIZE: JArray[string]) {.base.}
method append*(this: BasicGameResources, ROOT: string, sizeString: string) {.base.}
method getString*(this: BasicGameResources): string {.base, discardable.}
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/layer/resources/GameGraphicsResourceUtil as GameGraphicsResourceUtilModule
export GameGraphicsResourceUtilModule

var BasicGameResources_stringBufferValue: StringMaker
var BasicGameResources_stringBufferSet = false
proc stringBuffer*(t: typedesc[BasicGameResources]): StringMaker =
    if not BasicGameResources_stringBufferSet:
        BasicGameResources_stringBufferSet = true
        BasicGameResources_stringBufferValue = newStringMaker()
    BasicGameResources_stringBufferValue

# Java field initializers run after the base initializer
proc initFieldsBasicGameResources(this: BasicGameResources) =
    this.logUtil = LogUtil.getInstance()
    this.RESOURCE = StringUtil.getInstance().EMPTY_STRING
    this.RESOURCE_DESTROY = StringUtil.getInstance().EMPTY_STRING
    discard

proc initBasicGameResources*(this: BasicGameResources) =
        this.initFieldsBasicGameResources()
        discard

proc newBasicGameResources*(): BasicGameResources =
    result = BasicGameResources()
    initBasicGameResources(result)

method init*(this: BasicGameResources, ROOT: string, SIZE: JArray[string]) {.base.} =
        try:
            var scale: int32 = GameConfigurationCentral.getInstance().SCALE.getValue().intValue()
            if scale > 1 and scale -% 1 < SIZE.length:
                this.append(ROOT, SIZE[scale -% 1])
            else:
                raise newJException("Exception", newStringMaker().append("Invalid Value: ").appendint(scale).toString())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e)

method append*(this: BasicGameResources, ROOT: string, sizeString: string) {.base.} =
        let DESTROY: string = "_destroy"
        let string: string = this.getString()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(ROOT)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        this.RESOURCE = BasicGameResources.stringBuffer.toString()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(ROOT)
        BasicGameResources.stringBuffer.append(DESTROY)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        this.RESOURCE_DESTROY = BasicGameResources.stringBuffer.toString()

method getString*(this: BasicGameResources): string {.base, discardable.} =
        return GameGraphicsResourceUtil.getInstance().getName()

