# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/input/analog/AnalogLocationInput as AnalogLocationInputModule
export AnalogLocationInputModule

type
    AnalogLocationInputFactory* = ref object of JObject
        list*: BasicArrayList

proc newAnalogLocationInputFactory*(): AnalogLocationInputFactory
proc initAnalogLocationInputFactory*(this: AnalogLocationInputFactory)
proc getInstance*(t: typedesc[AnalogLocationInputFactory]): AnalogLocationInputFactory {.discardable.}
method addPlayer*(this: AnalogLocationInputFactory, playerInputId: int32) {.base.}
method getInstanceForPlayer*(this: AnalogLocationInputFactory, playerInputId: int32): AnalogLocationInput {.base, discardable.}
method getList*(this: AnalogLocationInputFactory): BasicArrayList {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var AnalogLocationInputFactory_instanceValue: AnalogLocationInputFactory
var AnalogLocationInputFactory_instanceSet = false
proc instance*(t: typedesc[AnalogLocationInputFactory]): AnalogLocationInputFactory =
    if not AnalogLocationInputFactory_instanceSet:
        AnalogLocationInputFactory_instanceSet = true
        AnalogLocationInputFactory_instanceValue = newAnalogLocationInputFactory()
    AnalogLocationInputFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAnalogLocationInputFactory(this: AnalogLocationInputFactory) =
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[AnalogLocationInputFactory]): AnalogLocationInputFactory {.discardable.} =
        return AnalogLocationInputFactory.instance

proc initAnalogLocationInputFactory*(this: AnalogLocationInputFactory) =
        this.initFieldsAnalogLocationInputFactory()
        discard

proc newAnalogLocationInputFactory*(): AnalogLocationInputFactory =
    result = AnalogLocationInputFactory()
    initAnalogLocationInputFactory(result)

method addPlayer*(this: AnalogLocationInputFactory, playerInputId: int32) {.base.} =
        var analogLocationInput: AnalogLocationInput = AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT
        if playerInputId < this.list.size():
            analogLocationInput = AnalogLocationInput(JObject(this.list.get(playerInputId)))
        if analogLocationInput == AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT:
            analogLocationInput = newAnalogLocationInput(playerInputId)
            this.list.add(analogLocationInput)

method getInstanceForPlayer*(this: AnalogLocationInputFactory, playerInputId: int32): AnalogLocationInput {.base, discardable.} =
        return AnalogLocationInput(JObject(this.list.get(playerInputId)))

method getList*(this: AnalogLocationInputFactory): BasicArrayList {.base, discardable.} =
        return this.list

