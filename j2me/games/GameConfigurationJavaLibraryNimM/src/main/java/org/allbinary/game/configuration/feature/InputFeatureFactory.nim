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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/InputFeature as InputFeatureModule
export InputFeatureModule

type
    InputFeatureFactory* = ref object of JObject
        REMOVE_DUPLICATE_KEY_PRESSES*: InputFeature
        INPUT_MAPPING*: InputFeature
        MULTI_KEY_PRESS*: InputFeature
        SINGLE_KEY_REPEAT_PRESS*: InputFeature
        SINGLE_KEY_PRESS*: InputFeature

proc newInputFeatureFactory*(): InputFeatureFactory
proc initInputFeatureFactory*(this: InputFeatureFactory)
proc getInstance*(t: typedesc[InputFeatureFactory]): InputFeatureFactory {.discardable.}
method isSingleKeyProcessing*(this: InputFeatureFactory): bool {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule

var InputFeatureFactory_instanceValue: InputFeatureFactory
var InputFeatureFactory_instanceSet = false
proc instance*(t: typedesc[InputFeatureFactory]): InputFeatureFactory =
    if not InputFeatureFactory_instanceSet:
        InputFeatureFactory_instanceSet = true
        InputFeatureFactory_instanceValue = newInputFeatureFactory()
    InputFeatureFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsInputFeatureFactory(this: InputFeatureFactory) =
    this.REMOVE_DUPLICATE_KEY_PRESSES = newInputFeature("Remove Duplicate Key Presses")
    this.INPUT_MAPPING = newInputFeature("Input Mapping")
    this.MULTI_KEY_PRESS = newInputFeature("Multi Key Press")
    this.SINGLE_KEY_REPEAT_PRESS = newInputFeature("Single Key Repeat Press")
    this.SINGLE_KEY_PRESS = newInputFeature("Single Key Press")
    discard

proc getInstance*(t: typedesc[InputFeatureFactory]): InputFeatureFactory {.discardable.} =
        return InputFeatureFactory.instance

proc initInputFeatureFactory*(this: InputFeatureFactory) =
        this.initFieldsInputFeatureFactory()
        discard

proc newInputFeatureFactory*(): InputFeatureFactory =
    result = InputFeatureFactory()
    initInputFeatureFactory(result)

method isSingleKeyProcessing*(this: InputFeatureFactory): bool {.base, discardable.} =
        var features: Features = Features.getInstance()
        if features.isFeature(this.SINGLE_KEY_REPEAT_PRESS) or features.isFeature(this.SINGLE_KEY_PRESS):
            return true
        else:
            return false

