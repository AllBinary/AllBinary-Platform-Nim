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
# package org.allbinary.game.combat.damage

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule
import org/allbinary/graphics/color/BasicColorArrayIndexer as BasicColorArrayIndexerModule
export BasicColorArrayIndexerModule
import org/allbinary/graphics/color/BasicColorSetUtil as BasicColorSetUtilModule
export BasicColorSetUtilModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/math/PrimitiveLongUtil as PrimitiveLongUtilModule
export PrimitiveLongUtilModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/game/combat/damage/DamageFloaters as DamageFloatersModule
export DamageFloatersModule

type
    PtsDamageFloaters* = ref object of DamageFloaters
        basicSetColorUtil*: BasicColorSetUtil
        layerInterface*: AllBinaryLayer
        lastDamage*: JArray[int32]
        lastDamageString*: JArray[JArray[uint16]]
        lastDamageStringSizeArray*: JArray[int32]
        circularIndexUtil*: CircularIndexUtil
        primitiveLongUtil*: PrimitiveLongUtil
        myRandomFactory*: MyRandomFactory

proc newPtsDamageFloaters*(layerInterface: AllBinaryLayer): PtsDamageFloaters
proc initPtsDamageFloaters*(this: PtsDamageFloaters, layerInterface: AllBinaryLayer)
method add*(this: PtsDamageFloaters, damage: int32)
method paint*(this: PtsDamageFloaters, graphics: Graphics)
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/java/character/CharArrayFactory as CharArrayFactoryModule
export CharArrayFactoryModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule

var PtsDamageFloaters_basicColorArrayIndexerValue: BasicColorArrayIndexer
var PtsDamageFloaters_basicColorArrayIndexerSet = false
proc basicColorArrayIndexer*(t: typedesc[PtsDamageFloaters]): BasicColorArrayIndexer =
    if not PtsDamageFloaters_basicColorArrayIndexerSet:
        PtsDamageFloaters_basicColorArrayIndexerSet = true
        PtsDamageFloaters_basicColorArrayIndexerValue = newBasicColorArrayIndexer(newJArrayFromRefs[BasicColor](BasicColorFactory.getInstance().WHITE, BasicColorFactory.getInstance().RED, BasicColorFactory.getInstance().YELLOW, BasicColorFactory.getInstance().BLUE))
    PtsDamageFloaters_basicColorArrayIndexerValue

# Java field initializers run after the base initializer
proc initFieldsPtsDamageFloaters(this: PtsDamageFloaters) =
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    
    this.lastDamage = newJArray[int32](5, default(int32))
    this.lastDamageString = newJArrayOf[JArray[uint16]](5, proc (): JArray[uint16] = newJArray[uint16](0, default(uint16)))
    this.lastDamageStringSizeArray = newJArray[int32](5, default(int32))
    this.circularIndexUtil = CircularIndexUtil.createInstance(5)
    
    this.myRandomFactory = MyRandomFactory.getInstance()
    discard

proc initPtsDamageFloaters*(this: PtsDamageFloaters, layerInterface: AllBinaryLayer) =
        initDamageFloaters(this)
        this.initFieldsPtsDamageFloaters()
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(100000)
        this.layerInterface = layerInterface
        var CHAR_ARRAY: JArray[uint16] = CharArrayFactory.getInstance().getZeroCharArray()
        block:
            var index: int32 = this.lastDamageString.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.lastDamageString[index] = CHAR_ARRAY

proc newPtsDamageFloaters*(layerInterface: AllBinaryLayer): PtsDamageFloaters =
    result = PtsDamageFloaters()
    initPtsDamageFloaters(result, layerInterface)

method add*(this: PtsDamageFloaters, damage: int32) =
        var index: int32 = this.circularIndexUtil.getIndex()
        this.lastDamage[index] = damage
        this.lastDamageString[index] = this.primitiveLongUtil.getCharArray(this.lastDamage[index])
        this.lastDamageStringSizeArray[index] = this.primitiveLongUtil.getCurrentTotalDigits()
        this.circularIndexUtil.next()

method paint*(this: PtsDamageFloaters, graphics: Graphics) =
        let viewPosition: ViewPositionBase = this.layerInterface.getViewPosition()
        let x: int32 = viewPosition.getX()
        let y: int32 = viewPosition.getY()
        block:
            var index: int32 = this.lastDamage.length -% 1
            while index >= 0:
                defer: index = index -% 1
                if this.lastDamage[index] != 0:
                    var delta: int32 = 10 *% (index +% 2)
                    this.basicSetColorUtil.setBasicColorP(graphics, PtsDamageFloaters.basicColorArrayIndexer.get())
                    graphics.drawChars(this.lastDamageString[index], 0, this.lastDamageStringSizeArray[index], x -% this.myRandomFactory.getNextInt(delta), y -% delta, 0)
                    PtsDamageFloaters.basicColorArrayIndexer.next()
                this.lastDamage[index] = 0

when declared(newPtsDamageFloatersHook1):
    newPtsDamageFloatersHook1 = proc (layerInterface: AllBinaryLayer): DamageFloaters = newPtsDamageFloaters(layerInterface)

