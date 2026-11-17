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
# package org.allbinary.math

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/math/AngleIncrementInfo as AngleIncrementInfoModule
export AngleIncrementInfoModule

type
    AngleIncrementInfoFactory* = ref object of JObject
        angleIncrementInfo*: JArray[AngleIncrementInfo]

proc newAngleIncrementInfoFactory*(): AngleIncrementInfoFactory
proc getInstance*(t: typedesc[AngleIncrementInfoFactory]): AngleIncrementInfoFactory {.discardable.}
method getAt*(this: AngleIncrementInfoFactory, angleIncrement: int16): AngleIncrementInfo {.base, discardable.}
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule

var AngleIncrementInfoFactory_instanceValue: AngleIncrementInfoFactory
var AngleIncrementInfoFactory_instanceSet = false
proc instance*(t: typedesc[AngleIncrementInfoFactory]): AngleIncrementInfoFactory =
    if not AngleIncrementInfoFactory_instanceSet:
        AngleIncrementInfoFactory_instanceSet = true
        AngleIncrementInfoFactory_instanceValue = newAngleIncrementInfoFactory()
    AngleIncrementInfoFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAngleIncrementInfoFactory(this: AngleIncrementInfoFactory) =
    this.angleIncrementInfo = newJArray[AngleIncrementInfo](int32(AngleFactory.getInstance().TOTAL_ANGLE), default(AngleIncrementInfo))
    discard

proc initAngleIncrementInfoFactory*(this: AngleIncrementInfoFactory) =
    this.initFieldsAngleIncrementInfoFactory()

proc newAngleIncrementInfoFactory*(): AngleIncrementInfoFactory =
    result = AngleIncrementInfoFactory()
    initAngleIncrementInfoFactory(result)

proc getInstance*(t: typedesc[AngleIncrementInfoFactory]): AngleIncrementInfoFactory {.discardable.} =
        return AngleIncrementInfoFactory.instance

method getAt*(this: AngleIncrementInfoFactory, angleIncrement: int16): AngleIncrementInfo {.base, discardable.} =
        let halfAngleIncrement: int32 = (ashr(int32(angleIncrement), 1))
        var angleIncrementInfo: AngleIncrementInfo = nil
        var angleIncrementInfoCanBeNull: AngleIncrementInfo = this.angleIncrementInfo[halfAngleIncrement]
        if (jIsNil(angleIncrementInfoCanBeNull)):
            angleIncrementInfo = newAngleIncrementInfo(angleIncrement)
            this.angleIncrementInfo[halfAngleIncrement] = angleIncrementInfo
            return angleIncrementInfo
        else:
            angleIncrementInfo = angleIncrementInfoCanBeNull
        return angleIncrementInfo

