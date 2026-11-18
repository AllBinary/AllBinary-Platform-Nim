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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/configuration/GameConfiguration as GameConfigurationModule
export GameConfigurationModule

type
    GameConfigurationCentral* = ref object of JObject
        logUtil*: LogUtil
        SCALE*: GameConfiguration
        ORIENTATION*: GameConfiguration
        SENSOR_UPDATE_RATE*: GameConfiguration
        VIBRATION*: GameConfiguration
        CHALLENGE_LEVEL*: GameConfiguration
        COLLIDE_DAMAGE*: GameConfiguration
        DURABILITY_CHALLENGE_LEVEL*: GameConfiguration
        SPEED_CHALLENGE_LEVEL*: GameConfiguration
        ATTACK_CHALLENGE_LEVEL*: GameConfiguration
        CONTROL_LEVEL*: GameConfiguration
        PLAYER_INPUT_WAIT*: GameConfiguration
        SPEED*: GameConfiguration
        SOUND_VOLUME*: GameConfiguration
        MAX_GAME_OBJECTS*: GameConfiguration
        MAX_LAYERS*: GameConfiguration
        gameControlFidelity*: int32

proc newGameConfigurationCentral*(): GameConfigurationCentral
proc initGameConfigurationCentral*(this: GameConfigurationCentral)
proc getInstance*(t: typedesc[GameConfigurationCentral]): GameConfigurationCentral {.discardable.}
method load*(this: GameConfigurationCentral, abeClientInformation: AbeClientInformationInterface) {.base.}
method setGameControlFidelity*(this: GameConfigurationCentral, gameControlFidelity: int32) {.base.}
method getGameControlFidelity*(this: GameConfigurationCentral): int32 {.base, discardable.}
method toString*(this: GameConfigurationCentral): string {.discardable.}
import org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton as GameConfigurationPersistanceSingletonModule
export GameConfigurationPersistanceSingletonModule
import org/allbinary/game/configuration/persistance/KeyValuePersistance as KeyValuePersistanceModule
export KeyValuePersistanceModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

var GameConfigurationCentral_SINGLETONValue: JObject
var GameConfigurationCentral_SINGLETONSet = false
proc SINGLETON*(t: typedesc[GameConfigurationCentral]): JObject =
    if not GameConfigurationCentral_SINGLETONSet:
        GameConfigurationCentral_SINGLETONSet = true
        GameConfigurationCentral_SINGLETONValue = NullUtil.getInstance().NULL_OBJECT
    GameConfigurationCentral_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[GameConfigurationCentral], value: JObject) =
    GameConfigurationCentral_SINGLETONSet = true
    GameConfigurationCentral_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsGameConfigurationCentral(this: GameConfigurationCentral) =
    this.logUtil = LogUtil.getInstance()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.gameControlFidelity = 36
    discard

proc getInstance*(t: typedesc[GameConfigurationCentral]): GameConfigurationCentral {.discardable.} =
        if GameConfigurationCentral.SINGLETON == NullUtil.getInstance().NULL_OBJECT:
            GameConfigurationCentral.SINGLETON = newGameConfigurationCentral()
        return GameConfigurationCentral(JObject(GameConfigurationCentral.SINGLETON))

proc initGameConfigurationCentral*(this: GameConfigurationCentral) =
        this.initFieldsGameConfigurationCentral()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        this.SCALE = newGameConfiguration("Scale", smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(3))
        this.ORIENTATION = newGameConfiguration("Orientation", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(8))
        this.SENSOR_UPDATE_RATE = newGameConfiguration("Sensor Update Rate", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3))
        this.VIBRATION = newGameConfiguration("Vibration", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3))
        this.CHALLENGE_LEVEL = newGameConfiguration("Global Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        this.COLLIDE_DAMAGE = newGameConfiguration("Collide Damage Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        this.DURABILITY_CHALLENGE_LEVEL = newGameConfiguration("Enemy Durability Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        this.SPEED_CHALLENGE_LEVEL = newGameConfiguration("Enemy Speed Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        this.ATTACK_CHALLENGE_LEVEL = newGameConfiguration("Enemy Attack Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        this.CONTROL_LEVEL = newGameConfiguration("Control Fidelity", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        this.PLAYER_INPUT_WAIT = newGameConfiguration("Input Wait", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        this.SPEED = newGameConfiguration("Game Speed (Device Specific)", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        this.SOUND_VOLUME = newGameConfiguration("Sound Volume", smallIntegerSingletonFactory.getAt(6), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(10))
        this.MAX_GAME_OBJECTS = newGameConfiguration("Max Game Objects", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50))
        this.MAX_LAYERS = newGameConfiguration("Max Layers", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50))

proc newGameConfigurationCentral*(): GameConfigurationCentral =
    result = GameConfigurationCentral()
    initGameConfigurationCentral(result)

method load*(this: GameConfigurationCentral, abeClientInformation: AbeClientInformationInterface) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        try:
            let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            let keyValuePersistance: KeyValuePersistance = GameConfigurationPersistanceSingleton.getInstance()
            keyValuePersistance.clear()
            keyValuePersistance.loadAll(abeClientInformation)
            let list: BasicArrayList = keyValuePersistance.getIds()
            if list.size() > 0:
                let hashtable: ABHashtable = keyValuePersistance.get(0)
                let anyType: JObject = JObject(JObject(this.SCALE.getName()))
                let value: string = jstr(hashtable.get(anyType))
                this.SCALE.setValue(smallIntegerSingletonFactory.getAt(jParseInt(value).intValue()))
            else:
                this.logUtil.putF("No Game Configuration To Load", this, commonStrings.LOAD)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.LOAD, e)

method setGameControlFidelity*(this: GameConfigurationCentral, gameControlFidelity: int32) {.base.} =
        this.gameControlFidelity = gameControlFidelity

method getGameControlFidelity*(this: GameConfigurationCentral): int32 {.base, discardable.} =
        return this.gameControlFidelity

method toString*(this: GameConfigurationCentral): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let commonStrings: CommonSeps = CommonSeps.getInstance()
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.SCALE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.SCALE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.ORIENTATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.ORIENTATION.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.SENSOR_UPDATE_RATE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.SENSOR_UPDATE_RATE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.VIBRATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.VIBRATION.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.COLLIDE_DAMAGE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.COLLIDE_DAMAGE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.DURABILITY_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.DURABILITY_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.SPEED_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.SPEED_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.ATTACK_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.ATTACK_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.CONTROL_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.CONTROL_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.SPEED.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.SPEED.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.MAX_GAME_OBJECTS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.MAX_GAME_OBJECTS.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(this.MAX_LAYERS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(int32(this.MAX_LAYERS.getValue().intValue()))
        return stringBuffer.toString()

