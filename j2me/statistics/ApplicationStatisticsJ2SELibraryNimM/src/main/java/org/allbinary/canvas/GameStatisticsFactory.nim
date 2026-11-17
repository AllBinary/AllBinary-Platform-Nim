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
# package org.allbinary.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/canvas/BaseGameStatistics as BaseGameStatisticsModule
export BaseGameStatisticsModule

#ActualPlatform
type
    GameStatisticsFactory* = ref object of BaseGameStatistics
        stringBuffer*: StringMaker

proc newGameStatisticsFactory*(): GameStatisticsFactory
proc getInstance*(t: typedesc[GameStatisticsFactory]): GameStatisticsFactory {.discardable.}
method add*(this: GameStatisticsFactory, string: string)
method toString*(this: GameStatisticsFactory): string {.discardable.}

var GameStatisticsFactory_instanceValue: GameStatisticsFactory
var GameStatisticsFactory_instanceSet = false
proc instance*(t: typedesc[GameStatisticsFactory]): GameStatisticsFactory =
    if not GameStatisticsFactory_instanceSet:
        GameStatisticsFactory_instanceSet = true
        GameStatisticsFactory_instanceValue = newGameStatisticsFactory()
    GameStatisticsFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameStatisticsFactory(this: GameStatisticsFactory) =
    this.stringBuffer = newStringMaker()
    discard

proc initGameStatisticsFactory*(this: GameStatisticsFactory) =
    initBaseGameStatistics(this)
    this.initFieldsGameStatisticsFactory()

proc newGameStatisticsFactory*(): GameStatisticsFactory =
    result = GameStatisticsFactory()
    initGameStatisticsFactory(result)

proc getInstance*(t: typedesc[GameStatisticsFactory]): GameStatisticsFactory {.discardable.} =
        return GameStatisticsFactory.instance

method add*(this: GameStatisticsFactory, string: string) =
        if this.stringBuffer.length() > 12000:
            this.stringBuffer.delete(0, this.stringBuffer.length())
            this.stringBuffer.append("Old Stats Cleared")
        this.stringBuffer.append(string)

method toString*(this: GameStatisticsFactory): string {.discardable.} =
        return newStringMaker().append(procCall BaseGameStatistics(this).toString()).append(this.stringBuffer.toString()).toString()

when declared(newGameStatisticsFactoryHook0):
    newGameStatisticsFactoryHook0 = proc (): BaseGameStatistics = newGameStatisticsFactory()

