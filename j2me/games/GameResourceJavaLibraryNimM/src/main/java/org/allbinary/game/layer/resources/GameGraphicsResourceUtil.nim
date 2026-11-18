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
# package org.allbinary.game.layer.resources

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/GraphicsFeature as GraphicsFeatureModule
export GraphicsFeatureModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    GameGraphicsResourceUtil* = ref object of JObject
        logUtil*: LogUtil
        SPRITE*: string
        QUARTER*: string
        name*: string

proc newGameGraphicsResourceUtil*(): GameGraphicsResourceUtil
proc initGameGraphicsResourceUtil*(this: GameGraphicsResourceUtil)
proc getInstance*(t: typedesc[GameGraphicsResourceUtil]): GameGraphicsResourceUtil {.discardable.}
method getString*(this: GameGraphicsResourceUtil): string {.base, discardable.}
method getStringForFeature*(this: GameGraphicsResourceUtil, graphicsFeature: GraphicsFeature): string {.base, discardable.}
method getName*(this: GameGraphicsResourceUtil): string {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GraphicsFeatureFactory as GraphicsFeatureFactoryModule
export GraphicsFeatureFactoryModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/opengles/OpenGLFeatureUtil as OpenGLFeatureUtilModule
export OpenGLFeatureUtilModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var GameGraphicsResourceUtil_instanceValue: JObject
var GameGraphicsResourceUtil_instanceSet = false
proc instance*(t: typedesc[GameGraphicsResourceUtil]): JObject =
    if not GameGraphicsResourceUtil_instanceSet:
        GameGraphicsResourceUtil_instanceSet = true
        GameGraphicsResourceUtil_instanceValue = NullUtil.getInstance().NULL_OBJECT
    GameGraphicsResourceUtil_instanceValue
proc `instance=`*(t: typedesc[GameGraphicsResourceUtil], value: JObject) =
    GameGraphicsResourceUtil_instanceSet = true
    GameGraphicsResourceUtil_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsGameGraphicsResourceUtil(this: GameGraphicsResourceUtil) =
    this.logUtil = LogUtil.getInstance()
    this.SPRITE = "_sprite"
    this.QUARTER = "_quarter"
    this.name = StringUtil.getInstance().EMPTY_STRING
    discard

proc getInstance*(t: typedesc[GameGraphicsResourceUtil]): GameGraphicsResourceUtil {.discardable.} =
        if GameGraphicsResourceUtil.instance == NullUtil.getInstance().NULL_OBJECT:
            GameGraphicsResourceUtil.instance = newGameGraphicsResourceUtil()
        return GameGraphicsResourceUtil(JObject(GameGraphicsResourceUtil.instance))

proc initGameGraphicsResourceUtil*(this: GameGraphicsResourceUtil) =
        this.initFieldsGameGraphicsResourceUtil()
        try:
            this.name = this.getString()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)

proc newGameGraphicsResourceUtil*(): GameGraphicsResourceUtil =
    result = GameGraphicsResourceUtil()
    initGameGraphicsResourceUtil(result)

method getString*(this: GameGraphicsResourceUtil): string {.base, discardable.} =
        let graphicsFeatureFactory: GraphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        var graphicsFeature: GraphicsFeature = graphicsFeatureFactory.NONE
        let features: Features = Features.getInstance()
        if features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS):
            graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS
        elif features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS):
            graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS
        elif features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS):
            graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS
        elif features.isFeature(graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY):
            graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY
        return this.getStringForFeature(graphicsFeature)

method getStringForFeature*(this: GameGraphicsResourceUtil, graphicsFeature: GraphicsFeature): string {.base, discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let graphicsFeatureFactory: GraphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        stringBuffer.delete(0, stringBuffer.length())
        let features: Features = Features.getInstance()
        if features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS):
            discard
        elif features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS):
            if graphicsFeature == graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS or graphicsFeature == graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY:
                discard
            elif graphicsFeature == graphicsFeatureFactory.SPRITE_FULL_GRAPHICS:
                stringBuffer.append(this.SPRITE)
            elif graphicsFeature == graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS:
                stringBuffer.append(this.QUARTER)
                stringBuffer.append(this.SPRITE)
            else:
                raise newJException("Exception", "None/Unknown Sub Image Resource Type Specified")
        elif OpenGLFeatureUtil.getInstance().isAnyThreed():
            stringBuffer.append(CanvasStrings.getInstance().OBJ_MODEL)
        else:
            raise newJException("Exception", "None/Unknown Main Image Resource Type Specified")
        return stringBuffer.toString()

method getName*(this: GameGraphicsResourceUtil): string {.base, discardable.} =
        return this.name

