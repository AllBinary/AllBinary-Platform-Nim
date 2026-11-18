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
# package org.allbinary.game.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    FeatureResourceInitializationUtil* = ref object of JObject
        logUtil*: LogUtil

proc newFeatureResourceInitializationUtil*(): FeatureResourceInitializationUtil
proc getInstance*(t: typedesc[FeatureResourceInitializationUtil]): FeatureResourceInitializationUtil {.discardable.}
method init*(this: FeatureResourceInitializationUtil, level: int32) {.base.}
import org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
export FeaturedAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/resource/FeaturedResourceFactory as FeaturedResourceFactoryModule
export FeaturedResourceFactoryModule
import org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory as FeaturedResourceRelativeRelationshipFactoryModule
export FeaturedResourceRelativeRelationshipFactoryModule

var FeatureResourceInitializationUtil_instanceValue: FeatureResourceInitializationUtil
var FeatureResourceInitializationUtil_instanceSet = false
proc instance*(t: typedesc[FeatureResourceInitializationUtil]): FeatureResourceInitializationUtil =
    if not FeatureResourceInitializationUtil_instanceSet:
        FeatureResourceInitializationUtil_instanceSet = true
        FeatureResourceInitializationUtil_instanceValue = newFeatureResourceInitializationUtil()
    FeatureResourceInitializationUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsFeatureResourceInitializationUtil(this: FeatureResourceInitializationUtil) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initFeatureResourceInitializationUtil*(this: FeatureResourceInitializationUtil) =
    this.initFieldsFeatureResourceInitializationUtil()

proc newFeatureResourceInitializationUtil*(): FeatureResourceInitializationUtil =
    result = FeatureResourceInitializationUtil()
    initFeatureResourceInitializationUtil(result)

proc getInstance*(t: typedesc[FeatureResourceInitializationUtil]): FeatureResourceInitializationUtil {.discardable.} =
        return FeatureResourceInitializationUtil.instance

method init*(this: FeatureResourceInitializationUtil, level: int32) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        this.logUtil.putF(commonStrings.START, this, commonStrings.INIT)
        var featuredResourceFactory: FeaturedResourceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredResourceFactory.init(level)
        FeaturedResourceRelativeRelationshipFactory.getInstance().init(level)

