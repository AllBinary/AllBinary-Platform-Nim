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
# package org.allbinary.graphics.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule
import org/allbinary/game/displayable/canvas/GameRunnable as GameRunnableModule
export GameRunnableModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    CurrentDisplayableFactory* = ref object of JObject
        commonStrings*: CommonStrings
        canvasStrings*: CanvasStrings
        stringUtil*: StringUtil
        SET_DISPLAYABLE*: string
        SET_RUNNABLE*: string
        CLEAR_RUNNABLE*: string
        SET_USED_RUNNABLE*: string
        RUNNABLE*: string
        RUNNABLE_WAS_ALREADY_IN_USE*: string
        DEFAULT_CHILD_NAME_LIST*: BasicArrayList
        displayable*: Displayable
        openGlReadydisplayable*: Displayable
        runnable*: GameRunnable
        usedRunnable*: GameRunnable

proc newCurrentDisplayableFactory*(): CurrentDisplayableFactory
proc initCurrentDisplayableFactory*(this: CurrentDisplayableFactory)
proc getInstance*(t: typedesc[CurrentDisplayableFactory]): CurrentDisplayableFactory {.discardable.}
method setMyCanvas*(this: CurrentDisplayableFactory, displayable: MyCanvas) {.base.}
method setDisplayable*(this: CurrentDisplayableFactory, displayable: Displayable) {.base.}
method setOpenGlReadydisplayable*(this: CurrentDisplayableFactory, openGlReadydisplayable: Displayable) {.base.}
method getOpenGlReadydisplayable*(this: CurrentDisplayableFactory): Displayable {.base, discardable.}
method setRunnable*(this: CurrentDisplayableFactory, runnable: GameRunnable) {.base.}
method clearRunnable*(this: CurrentDisplayableFactory) {.base.}
method update*(this: CurrentDisplayableFactory) {.base.}
method getDisplayable*(this: CurrentDisplayableFactory): Displayable {.base, discardable.}
method getUsedRunnable*(this: CurrentDisplayableFactory): GameRunnable {.base, discardable.}
method setUsedRunnable*(this: CurrentDisplayableFactory, usedRunnable: GameRunnable) {.base.}
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule
import org/allbinary/game/displayable/canvas/DemoCanvas as DemoCanvasModule
export DemoCanvasModule
import org/allbinary/game/displayable/canvas/GameInputMappingCanvas as GameInputMappingCanvasModule
export GameInputMappingCanvasModule
import org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas as GameInputMappingInstructionsCanvasModule
export GameInputMappingInstructionsCanvasModule
import org/allbinary/game/displayable/canvas/NullDisplayable as NullDisplayableModule
export NullDisplayableModule
import org/allbinary/game/displayable/canvas/NullWaitGameRunnable as NullWaitGameRunnableModule
export NullWaitGameRunnableModule
import org/allbinary/game/layer/SWTUtil as SWTUtilModule
export SWTUtilModule
import org/allbinary/game/score/displayable/HighScoresCanvas as HighScoresCanvasModule
export HighScoresCanvasModule
import org/allbinary/graphics/GraphicsStrings as GraphicsStringsModule
export GraphicsStringsModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/thread/NullRunnable as NullRunnableModule
export NullRunnableModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule

var CurrentDisplayableFactory_instanceValue: CurrentDisplayableFactory
var CurrentDisplayableFactory_instanceSet = false
proc instance*(t: typedesc[CurrentDisplayableFactory]): CurrentDisplayableFactory =
    if not CurrentDisplayableFactory_instanceSet:
        CurrentDisplayableFactory_instanceSet = true
        CurrentDisplayableFactory_instanceValue = newCurrentDisplayableFactory()
    CurrentDisplayableFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCurrentDisplayableFactory(this: CurrentDisplayableFactory) =
    this.commonStrings = CommonStrings.getInstance()
    this.canvasStrings = CanvasStrings.getInstance()
    this.stringUtil = StringUtil.getInstance()
    this.SET_DISPLAYABLE = "setDisplayable"
    this.SET_RUNNABLE = "setRunnable"
    this.CLEAR_RUNNABLE = "clearRunnable"
    this.SET_USED_RUNNABLE = "setUsedRunnable"
    this.RUNNABLE = "Runnable: "
    this.RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: "
    this.DEFAULT_CHILD_NAME_LIST = newBasicArrayListD()
    this.displayable = NullDisplayable.getInstance()
    this.openGlReadydisplayable = NullDisplayable.getInstance()
    this.runnable = NullWaitGameRunnable.getInstance()
    this.usedRunnable = NullWaitGameRunnable.getInstance()
    discard

proc getInstance*(t: typedesc[CurrentDisplayableFactory]): CurrentDisplayableFactory {.discardable.} =
        return CurrentDisplayableFactory.instance

proc initCurrentDisplayableFactory*(this: CurrentDisplayableFactory) =
        this.initFieldsCurrentDisplayableFactory()
        this.DEFAULT_CHILD_NAME_LIST.add(this.canvasStrings.ABOUT)
        this.DEFAULT_CHILD_NAME_LIST.add(this.canvasStrings.OPTIONS)
        this.DEFAULT_CHILD_NAME_LIST.add(GameInputMappingCanvas.NAME)
        this.DEFAULT_CHILD_NAME_LIST.add(GameInputMappingInstructionsCanvas.NAME)
        this.DEFAULT_CHILD_NAME_LIST.add(HighScoresCanvas.NAME)

proc newCurrentDisplayableFactory*(): CurrentDisplayableFactory =
    result = CurrentDisplayableFactory()
    initCurrentDisplayableFactory(result)

method setMyCanvas*(this: CurrentDisplayableFactory, displayable: MyCanvas) {.base.} =
        if (this.displayable of MyCanvas):
            if displayable.hasChild(MyCanvas(JObject(this.displayable))):
                PreLogUtil.put(newStringMaker().append("Child Displayable is already set for: ").append(this.stringUtil.toString(displayable)).toString(), this, this.SET_DISPLAYABLE)
                return
        this.setDisplayable(displayable)

method setDisplayable*(this: CurrentDisplayableFactory, displayable: Displayable) {.base.} =
        this.displayable = displayable
        this.setOpenGlReadydisplayable(displayable)

method setOpenGlReadydisplayable*(this: CurrentDisplayableFactory, openGlReadydisplayable: Displayable) {.base.} =
        this.openGlReadydisplayable = openGlReadydisplayable
        this.update()

method getOpenGlReadydisplayable*(this: CurrentDisplayableFactory): Displayable {.base, discardable.} =
        return this.openGlReadydisplayable

method setRunnable*(this: CurrentDisplayableFactory, runnable: GameRunnable) {.base.} =
        PreLogUtil.put(newStringMaker().append(this.RUNNABLE).append(this.stringUtil.toString(runnable)).toString(), this, this.SET_RUNNABLE)
        this.runnable = runnable
        if this.usedRunnable != this.runnable:
            this.update()
        else:
            PreLogUtil.put(newStringMaker().append(this.RUNNABLE_WAS_ALREADY_IN_USE).append(this.stringUtil.toString(runnable)).toString(), this, this.SET_RUNNABLE)

method clearRunnable*(this: CurrentDisplayableFactory) {.base.} =
        PreLogUtil.put(newStringMaker().append(this.RUNNABLE).append(this.stringUtil.toString(NullRunnable.getInstance())).toString(), this, this.CLEAR_RUNNABLE)
        this.setUsedRunnable(NullWaitGameRunnable.getInstance())

method update*(this: CurrentDisplayableFactory) {.base.} =
        block:
            let commonSeps: CommonSeps = CommonSeps.getInstance()
            let features: Features = Features.getInstance()
            let stringMaker: StringMaker = newStringMaker()
            stringMaker.append(this.stringUtil.toString(this.openGlReadydisplayable))
            if SWTUtil.isSWT and (not features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)):
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(SWTUtil.SWT).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString(NullRunnable.getInstance())).toString(), this, this.commonStrings.UPDATE)
                this.setUsedRunnable(NullWaitGameRunnable.getInstance())
            elif J2MEUtil.isHTML():
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings.getInstance().HTML).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString(this.runnable)).toString(), this, this.commonStrings.UPDATE)
                this.setUsedRunnable(this.runnable)
            elif (this.openGlReadydisplayable of DemoCanvas) or (this.openGlReadydisplayable of AllBinaryGameCanvas) or features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL):
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory.getInstance().OPENGL.toString()).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString(this.runnable)).toString(), this, this.commonStrings.UPDATE)
                this.setUsedRunnable(this.runnable)
            else:
                PreLogUtil.put(stringMaker.append(this.RUNNABLE).append(this.stringUtil.toString(NullRunnable.getInstance())).toString(), this, this.commonStrings.UPDATE)
                this.setUsedRunnable(NullWaitGameRunnable.getInstance())

method getDisplayable*(this: CurrentDisplayableFactory): Displayable {.base, discardable.} =
        return this.displayable

method getUsedRunnable*(this: CurrentDisplayableFactory): GameRunnable {.base, discardable.} =
        return this.usedRunnable

method setUsedRunnable*(this: CurrentDisplayableFactory, usedRunnable: GameRunnable) {.base.} =
        PreLogUtil.put(newStringMaker().append(this.RUNNABLE).append(this.stringUtil.toString(this.runnable)).append(CommonSeps.getInstance().COLON_SEP).append(this.stringUtil.toString(usedRunnable)).toString(), this, this.SET_USED_RUNNABLE)
        this.usedRunnable = usedRunnable

