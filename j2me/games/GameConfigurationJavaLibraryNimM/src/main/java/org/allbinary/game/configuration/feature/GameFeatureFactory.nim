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
import org/allbinary/game/configuration/feature/GameFeature as GameFeatureModule
export GameFeatureModule
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule

type
    GameFeatureFactory* = ref object of JObject
        SOUND*: GameFeature
        MUSIC*: GameFeature
        SCREEN_SHAKE*: Feature
        POST_IMAGE_LOADING_MODIFICATION*: Feature
        HEALTH_BARS*: GameFeature
        DAMAGE_FLOATERS*: GameFeature
        GAME_INPUT_LAYER_PROCESSOR*: GameFeature
        ARTIFICIAL_INTELLEGENCE_PROCESSOR*: GameFeature
        COLLIDABLE_INTERFACE_LAYER_PROCESSOR*: GameFeature
        TICKABLE_LAYER_PROCESSOR*: GameFeature
        CHEATING*: GameFeature
        DROPPED_ITEMS*: GameFeature
        DROPPED_ITEMS_FROM_DEATH*: GameFeature
        TEST_DESTROYED_LAYER_PROCESSOR*: GameFeature
        COLLISIONS_WITH_SOURCE*: GameFeature
        COLLISIONS_FORCED_TWO_DIMENSIONAL*: GameFeature

proc newGameFeatureFactory*(): GameFeatureFactory
proc initGameFeatureFactory*(this: GameFeatureFactory)
proc getInstance*(t: typedesc[GameFeatureFactory]): GameFeatureFactory {.discardable.}

var GameFeatureFactory_instanceValue: GameFeatureFactory
var GameFeatureFactory_instanceSet = false
proc instance*(t: typedesc[GameFeatureFactory]): GameFeatureFactory =
    if not GameFeatureFactory_instanceSet:
        GameFeatureFactory_instanceSet = true
        GameFeatureFactory_instanceValue = newGameFeatureFactory()
    GameFeatureFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameFeatureFactory(this: GameFeatureFactory) =
    this.SOUND = newGameFeature("Sound")
    this.MUSIC = newGameFeature("Music")
    this.SCREEN_SHAKE = newFeature("Screen Shake")
    this.POST_IMAGE_LOADING_MODIFICATION = newFeature("Post Image Loading Modification (Scaling, Rotation, or Other)")
    this.HEALTH_BARS = newGameFeature("Health Bars")
    this.DAMAGE_FLOATERS = newGameFeature("Damage Floaters")
    this.GAME_INPUT_LAYER_PROCESSOR = newGameFeature("Game Input Layer Processor")
    this.ARTIFICIAL_INTELLEGENCE_PROCESSOR = newGameFeature("Artificial Intelligence Layer Processor")
    this.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = newGameFeature("Collidable Interface Layer Processor")
    this.TICKABLE_LAYER_PROCESSOR = newGameFeature("Tickable Layer Processor")
    this.CHEATING = newGameFeature("Cheating")
    this.DROPPED_ITEMS = newGameFeature("Drops")
    this.DROPPED_ITEMS_FROM_DEATH = newGameFeature("Drops from Dead")
    this.TEST_DESTROYED_LAYER_PROCESSOR = newGameFeature("Destroyed Layer Processor")
    this.COLLISIONS_WITH_SOURCE = newGameFeature("Allow Collisions With Source")
    this.COLLISIONS_FORCED_TWO_DIMENSIONAL = newGameFeature("Collisions Forced Two Dimensional")
    discard

proc getInstance*(t: typedesc[GameFeatureFactory]): GameFeatureFactory {.discardable.} =
        return GameFeatureFactory.instance

proc initGameFeatureFactory*(this: GameFeatureFactory) =
        this.initFieldsGameFeatureFactory()
        discard

proc newGameFeatureFactory*(): GameFeatureFactory =
    result = GameFeatureFactory()
    initGameFeatureFactory(result)

