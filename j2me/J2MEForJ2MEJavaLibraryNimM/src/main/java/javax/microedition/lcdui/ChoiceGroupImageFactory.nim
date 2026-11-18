#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package javax.microedition.lcdui

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/MIDPUtil as MIDPUtilModule
export MIDPUtilModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule

type
    ChoiceGroupImageFactory* = ref object of JObject
        multiOff*: JArray[int8]
        multiOn*: JArray[int8]
        radioOff*: JArray[int8]
        radioOn*: JArray[int8]
        midpUtil*: MIDPUtil
        imgMultiOffO*: Image
        imgMultiOnO*: Image
        imgRadioOffO*: Image
        imgRadioOnO*: Image
        imgMultiOff*: Image
        imgMultiOn*: Image
        imgRadioOff*: Image
        imgRadioOn*: Image
        imageArray*: JArray[Image]

proc newChoiceGroupImageFactory*(): ChoiceGroupImageFactory
proc getInstance*(t: typedesc[ChoiceGroupImageFactory]): ChoiceGroupImageFactory {.discardable.}
method getImageArray*(this: ChoiceGroupImageFactory): JArray[Image] {.base, discardable.}
method init*(this: ChoiceGroupImageFactory, imageArray: JArray[Image]) {.base.}

var ChoiceGroupImageFactory_instanceValue: ChoiceGroupImageFactory
var ChoiceGroupImageFactory_instanceSet = false
proc instance*(t: typedesc[ChoiceGroupImageFactory]): ChoiceGroupImageFactory =
    if not ChoiceGroupImageFactory_instanceSet:
        ChoiceGroupImageFactory_instanceSet = true
        ChoiceGroupImageFactory_instanceValue = newChoiceGroupImageFactory()
    ChoiceGroupImageFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsChoiceGroupImageFactory(this: ChoiceGroupImageFactory) =
    this.multiOff = newJArrayFromInts[int8]([jToInt8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, jToInt8(-12), jToInt8(-117), 0, 0, 0, 6, 80, 76, 84, 69, jToInt8(-1), jToInt8(-1), jToInt8(-1), jToInt8(-69), jToInt8(-69), jToInt8(-69), jToInt8(-57), 75, jToInt8(-33), jToInt8(-8), 0, 0, 0, 30, 73, 68, 65, 84, 120, jToInt8(-38), 99, 96, 96, 96, 96, 12, 101, jToInt8(-8), jToInt8(-51), jToInt8(-32), jToInt8(-64), 32, jToInt8(-64), jToInt8(-60), jToInt8(-64), jToInt8(-64), jToInt8(-128), 11, 51, jToInt8(-122), 50, jToInt8(-4), 6, 0, 63, 116, 3, 1, 53, jToInt8(-108), 39, jToInt8(-26), 0, 0, 0, 0, 73, 69, 78, 68, jToInt8(-82), 66, 96, jToInt8(-126)])
    this.multiOn = newJArrayFromInts[int8]([jToInt8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, jToInt8(-12), jToInt8(-117), 0, 0, 0, 12, 80, 76, 84, 69, jToInt8(-1), jToInt8(-1), jToInt8(-1), jToInt8(-69), jToInt8(-69), jToInt8(-69), 106, 106, 106, 2, 2, 2, 106, jToInt8(-103), 14, jToInt8(-47), 0, 0, 0, 53, 73, 68, 65, 84, 120, jToInt8(-38), 99, 96, 96, 124, jToInt8(-64), jToInt8(-16), jToInt8(-1), jToInt8(-77), 3, jToInt8(-45), 65, jToInt8(-111), 15, 76, 12, 108, 12, 76, 12, jToInt8(-4), 12, 76, 12, 18, 12, 76, jToInt8(-68), 127, 24, jToInt8(-104), 126, 45, 96, 96, jToInt8(-7), jToInt8(-11), jToInt8(-109), jToInt8(-127), jToInt8(-23), jToInt8(-65), 3, 3, jToInt8(-29), 127, jToInt8(-122), jToInt8(-113), 0, 5, 37, 12, jToInt8(-34), 1, jToInt8(-99), jToInt8(-83), 100, 0, 0, 0, 0, 73, 69, 78, 68, jToInt8(-82), 66, 96, jToInt8(-126)])
    this.radioOff = newJArrayFromInts[int8]([jToInt8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, jToInt8(-44), jToInt8(-62), jToInt8(-97), jToInt8(-75), 0, 0, 0, 9, 80, 76, 84, 69, jToInt8(-1), jToInt8(-1), jToInt8(-1), jToInt8(-69), jToInt8(-69), jToInt8(-69), 106, 106, 106, jToInt8(-44), 13, jToInt8(-1), jToInt8(-24), 0, 0, 0, 42, 73, 68, 65, 84, 120, jToInt8(-38), 99, 96, 90, jToInt8(-59), jToInt8(-64), 32, jToInt8(-63), 48, jToInt8(-127), 65, jToInt8(-127), 65, jToInt8(-127), 41, jToInt8(-127), jToInt8(-31), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, jToInt8(-6), jToInt8(-63), 80, jToInt8(-64), jToInt8(-64), jToInt8(-76), jToInt8(-118), 1, 0, 113, 24, 5, 61, 73, jToInt8(-68), jToInt8(-100), 98, 0, 0, 0, 0, 73, 69, 78, 68, jToInt8(-82), 66, 96, jToInt8(-126)])
    this.radioOn = newJArrayFromInts[int8]([jToInt8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, jToInt8(-44), jToInt8(-62), jToInt8(-97), jToInt8(-75), 0, 0, 0, 12, 80, 76, 84, 69, jToInt8(-1), jToInt8(-1), jToInt8(-1), jToInt8(-69), jToInt8(-69), jToInt8(-69), 106, 106, 106, 2, 2, 2, 106, jToInt8(-103), 14, jToInt8(-47), 0, 0, 0, 50, 73, 68, 65, 84, 120, jToInt8(-38), 5, jToInt8(-63), 65, 13, 0, 32, 12, 4, jToInt8(-63), jToInt8(-19), jToInt8(-11), jToInt8(-117), 1, 18, 68, jToInt8(-100), 10, 52, 19, 94, 72, 64, 17, 101, jToInt8(-122), 44, jToInt8(-44), jToInt8(-29), 98, jToInt8(-52), 89, 77, jToInt8(-102), 40, 2, 85, jToInt8(-95), jToInt8(-73), jToInt8(-63), jToInt8(-104), jToInt8(-63), 37, jToInt8(-117), 15, jToInt8(-40), 119, 10, 41, 78, 26, jToInt8(-79), 59, 0, 0, 0, 0, 73, 69, 78, 68, jToInt8(-82), 66, 96, jToInt8(-126)])
    this.midpUtil = MIDPUtil.getInstance()
    this.imgMultiOffO = this.midpUtil.createImageFromByteArray(this.multiOff, 0, this.multiOff.length)
    this.imgMultiOnO = this.midpUtil.createImageFromByteArray(this.multiOn, 0, this.multiOn.length)
    this.imgRadioOffO = this.midpUtil.createImageFromByteArray(this.radioOff, 0, this.radioOff.length)
    this.imgRadioOnO = this.midpUtil.createImageFromByteArray(this.radioOn, 0, this.radioOn.length)
    this.imgMultiOff = this.imgMultiOffO
    this.imgMultiOn = this.imgMultiOnO
    this.imgRadioOff = this.imgRadioOffO
    this.imgRadioOn = this.imgRadioOnO
    this.imageArray = newJArrayFromRefs[Image](this.imgMultiOff, this.imgMultiOn, this.imgRadioOff, this.imgRadioOn)
    discard

proc initChoiceGroupImageFactory*(this: ChoiceGroupImageFactory) =
    this.initFieldsChoiceGroupImageFactory()

proc newChoiceGroupImageFactory*(): ChoiceGroupImageFactory =
    result = ChoiceGroupImageFactory()
    initChoiceGroupImageFactory(result)

proc getInstance*(t: typedesc[ChoiceGroupImageFactory]): ChoiceGroupImageFactory {.discardable.} =
        return ChoiceGroupImageFactory.instance

method getImageArray*(this: ChoiceGroupImageFactory): JArray[Image] {.base, discardable.} =
        return this.imageArray

method init*(this: ChoiceGroupImageFactory, imageArray: JArray[Image]) {.base.} =
        this.imgMultiOff = imageArray[0]
        this.imageArray[0] = this.imgMultiOff
        this.imgMultiOn = imageArray[1]
        this.imageArray[1] = this.imgMultiOn
        this.imgRadioOff = imageArray[2]
        this.imageArray[2] = this.imgRadioOff
        this.imgRadioOn = imageArray[3]
        this.imageArray[3] = this.imgRadioOn

