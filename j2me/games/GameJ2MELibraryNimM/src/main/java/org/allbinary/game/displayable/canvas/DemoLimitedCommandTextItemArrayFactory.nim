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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/form/item/CommandTextItemArrayFactory as CommandTextItemArrayFactoryModule
export CommandTextItemArrayFactoryModule

type
    DemoLimitedCommandTextItemArrayFactory* = ref object of JObject
        commandTextItemArrayFactory*: CommandTextItemArrayFactory

proc newDemoLimitedCommandTextItemArrayFactory*(): DemoLimitedCommandTextItemArrayFactory
proc getInstance*(t: typedesc[DemoLimitedCommandTextItemArrayFactory]): DemoLimitedCommandTextItemArrayFactory {.discardable.}
method getCommandTextItemArrayFactory*(this: DemoLimitedCommandTextItemArrayFactory): CommandTextItemArrayFactory {.base, discardable.}
import org/allbinary/graphics/form/item/LimitCommandsVisitor as LimitCommandsVisitorModule
export LimitCommandsVisitorModule

var DemoLimitedCommandTextItemArrayFactory_instanceValue: DemoLimitedCommandTextItemArrayFactory
var DemoLimitedCommandTextItemArrayFactory_instanceSet = false
proc instance*(t: typedesc[DemoLimitedCommandTextItemArrayFactory]): DemoLimitedCommandTextItemArrayFactory =
    if not DemoLimitedCommandTextItemArrayFactory_instanceSet:
        DemoLimitedCommandTextItemArrayFactory_instanceSet = true
        DemoLimitedCommandTextItemArrayFactory_instanceValue = newDemoLimitedCommandTextItemArrayFactory()
    DemoLimitedCommandTextItemArrayFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDemoLimitedCommandTextItemArrayFactory(this: DemoLimitedCommandTextItemArrayFactory) =
    this.commandTextItemArrayFactory = newCommandTextItemArrayFactory(newLimitCommandsVisitor())
    discard

proc initDemoLimitedCommandTextItemArrayFactory*(this: DemoLimitedCommandTextItemArrayFactory) =
    this.initFieldsDemoLimitedCommandTextItemArrayFactory()

proc newDemoLimitedCommandTextItemArrayFactory*(): DemoLimitedCommandTextItemArrayFactory =
    result = DemoLimitedCommandTextItemArrayFactory()
    initDemoLimitedCommandTextItemArrayFactory(result)

proc getInstance*(t: typedesc[DemoLimitedCommandTextItemArrayFactory]): DemoLimitedCommandTextItemArrayFactory {.discardable.} =
        return DemoLimitedCommandTextItemArrayFactory.instance

method getCommandTextItemArrayFactory*(this: DemoLimitedCommandTextItemArrayFactory): CommandTextItemArrayFactory {.base, discardable.} =
        return this.commandTextItemArrayFactory

