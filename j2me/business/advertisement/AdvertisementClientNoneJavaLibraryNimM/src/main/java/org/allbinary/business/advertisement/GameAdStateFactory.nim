# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/GameAdState as GameAdStateModule
export GameAdStateModule
import org/allbinary/logic/system/SoftwareInformation as SoftwareInformationModule
export SoftwareInformationModule
import org/allbinary/business/advertisement/GameAdStateFactoryInterface as GameAdStateFactoryInterfaceModule
export GameAdStateFactoryInterfaceModule
import org/allbinary/business/advertisement/GameAdStateBase as GameAdStateBaseModule
export GameAdStateBaseModule

type
    GameAdStateFactory* = ref object of GameAdStateFactoryInterface
        gameAdStateArray*: JArray[GameAdState]
        gameAdState*: GameAdState

proc newGameAdStateFactory*(): GameAdStateFactory
proc getInstance*(t: typedesc[GameAdStateFactory]): GameAdStateFactory {.discardable.}
method getCurrentInstance*(this: GameAdStateFactory): GameAdState {.base, discardable.}
method getInstanceForApp*(this: GameAdStateFactory, softwareInformation: SoftwareInformation): GameAdStateBase {.discardable.}
method isEnabled*(this: GameAdStateFactory): bool {.base, discardable.}
import org/allbinary/business/advertisement/AppNameLicensingAdConfiguration as AppNameLicensingAdConfigurationModule
export AppNameLicensingAdConfigurationModule

var GameAdStateFactory_instanceValue: GameAdStateFactory
var GameAdStateFactory_instanceSet = false
proc instance*(t: typedesc[GameAdStateFactory]): GameAdStateFactory =
    if not GameAdStateFactory_instanceSet:
        GameAdStateFactory_instanceSet = true
        GameAdStateFactory_instanceValue = newGameAdStateFactory()
    GameAdStateFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameAdStateFactory(this: GameAdStateFactory) =
    this.gameAdStateArray = newJArrayFromRefs[GameAdState](newGameAdState(newAppNameLicensingAdConfiguration()))
    this.gameAdState = this.gameAdStateArray[0]
    discard

proc initGameAdStateFactory*(this: GameAdStateFactory) =
    this.initFieldsGameAdStateFactory()

proc newGameAdStateFactory*(): GameAdStateFactory =
    result = GameAdStateFactory()
    initGameAdStateFactory(result)

proc getInstance*(t: typedesc[GameAdStateFactory]): GameAdStateFactory {.discardable.} =
        return GameAdStateFactory.instance

method getCurrentInstance*(this: GameAdStateFactory): GameAdState {.base, discardable.} =
        return this.gameAdState

method getInstanceForApp*(this: GameAdStateFactory, softwareInformation: SoftwareInformation): GameAdStateBase {.discardable.} =
        this.gameAdState = this.gameAdStateArray[0]
        return this.gameAdStateArray[0]

method isEnabled*(this: GameAdStateFactory): bool {.base, discardable.} =
        return false

