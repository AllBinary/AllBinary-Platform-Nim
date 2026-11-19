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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory as BaseResourceAnimationInterfaceFactoryInterfaceFactoryModule
export BaseResourceAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule

type
    TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory* = ref object of BaseResourceAnimationInterfaceFactoryInterfaceFactory

proc newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*(name: string): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
proc initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, name: string)
proc createFactory*(t: typedesc[TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory]): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {.discardable.}
method init*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level: int32)
method initImageCache*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, imageCache: ImageCache, level: int32)
method isLoadingLevel*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level: int32): bool {.discardable.}
method isFeature*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory): bool {.discardable.}
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory as OneRowSpriteIndexedAnimationFactoryModule
export OneRowSpriteIndexedAnimationFactoryModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/image/ImageCacheFactory as ImageCacheFactoryModule
export ImageCacheFactoryModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/system/os/OperatingSystemFactory as OperatingSystemFactoryModule
export OperatingSystemFactoryModule
import org/allbinary/media/image/ImageCompleteUtil as ImageCompleteUtilModule
export ImageCompleteUtilModule
import org/allbinary/input/motion/button/TouchButtonBlankResource as TouchButtonBlankResourceModule
export TouchButtonBlankResourceModule
import org/allbinary/input/motion/button/TouchButtonResource as TouchButtonResourceModule
export TouchButtonResourceModule
import org/allbinary/input/motion/button/TouchButtonGenericActionResource as TouchButtonGenericActionResourceModule
export TouchButtonGenericActionResourceModule
import org/allbinary/input/motion/button/TouchButtonStartResource as TouchButtonStartResourceModule
export TouchButtonStartResourceModule
import org/allbinary/input/motion/button/TouchButtonUpResource as TouchButtonUpResourceModule
export TouchButtonUpResourceModule
import org/allbinary/input/motion/button/TouchButtonDownResource as TouchButtonDownResourceModule
export TouchButtonDownResourceModule
import org/allbinary/input/motion/button/TouchButtonTurnLeftResource as TouchButtonTurnLeftResourceModule
export TouchButtonTurnLeftResourceModule
import org/allbinary/input/motion/button/TouchButtonTurnRightResource as TouchButtonTurnRightResourceModule
export TouchButtonTurnRightResourceModule
import org/allbinary/input/motion/button/TouchButtonStrafeLeftResource as TouchButtonStrafeLeftResourceModule
export TouchButtonStrafeLeftResourceModule
import org/allbinary/input/motion/button/TouchButtonStrafeRightResource as TouchButtonStrafeRightResourceModule
export TouchButtonStrafeRightResourceModule


proc createFactory*(t: typedesc[TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory]): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory {.discardable.} =
        return newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations")

proc initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, name: string) =
        initBaseResourceAnimationInterfaceFactoryInterfaceFactory(this, name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable())

proc newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory*(name: string): TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory =
    result = TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory()
    initTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(result, name)

method init*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level: int32) =
        this.initImageCache(ImageCacheFactory.getInstance(), level)

method initImageCache*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, imageCache: ImageCache, level: int32) =
        if this.isInitialized():
            return
        let portion: int32 = 140
        let loadingString: string = newStringMaker().append(this.toString()).append(" Loading: ").toString()
        var index: int32 = 0
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        let touchButtonBlankResource: TouchButtonResource = TouchButtonBlankResource.getInstance()
        let touchButtonGenericActionResource: TouchButtonResource = TouchButtonGenericActionResource.getInstance()
        let touchButtonStartResource: TouchButtonResource = TouchButtonStartResource.getInstance()
        let touchButtonUpResource: TouchButtonResource = TouchButtonUpResource.getInstance()
        let touchButtonDownResource: TouchButtonResource = TouchButtonDownResource.getInstance()
        let touchButtonTurnLeftResource: TouchButtonResource = TouchButtonTurnLeftResource.getInstance()
        let touchButtonTurnRightResource: TouchButtonResource = TouchButtonTurnRightResource.getInstance()
        let touchButtonStrafeLeftResource: TouchButtonResource = TouchButtonStrafeLeftResource.getInstance()
        let touchButtonStrafeRightResource: TouchButtonResource = TouchButtonStrafeRightResource.getInstance()
        let touchButtonBlankResourceImage: Image = imageCache.getWithKey(touchButtonBlankResource.RESOURCE)
        let touchButtonGenericActionResourceImage: Image = imageCache.getWithKey(touchButtonGenericActionResource.RESOURCE)
        let touchButtonStartResourceImage: Image = imageCache.getWithKey(touchButtonStartResource.RESOURCE)
        let touchButtonUpResourceImage: Image = imageCache.getWithKey(touchButtonUpResource.RESOURCE)
        let touchButtonDownResourceImage: Image = imageCache.getWithKey(touchButtonDownResource.RESOURCE)
        let touchButtonTurnLeftResourceImage: Image = imageCache.getWithKey(touchButtonTurnLeftResource.RESOURCE)
        let touchButtonTurnRightResourceImage: Image = imageCache.getWithKey(touchButtonTurnRightResource.RESOURCE)
        let touchButtonStrafeLeftResourceImage: Image = imageCache.getWithKey(touchButtonStrafeLeftResource.RESOURCE)
        let touchButtonStrafeRightResourceImage: Image = imageCache.getWithKey(touchButtonStrafeRightResource.RESOURCE)
        let nullAnimationFactory: NullAnimationFactory = NullAnimationFactory.getFactoryInstance()
        if OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan():
            imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        let imageCompleteUtil: ImageCompleteUtil = ImageCompleteUtil.getInstance()
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE)
        this.add(touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonBlankResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE)
        this.add(touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonGenericActionResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE)
        this.add(touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance()))
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE)
        this.add(touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonUpResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE)
        this.add(touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonDownResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE)
        this.add(touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE)
        this.add(touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonTurnRightResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE)
        this.add(touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, jPostIncrement(index))
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE)
        this.add(touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory)
        if OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan():
            let touchButtonStartHintResource: Image = imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT)
            this.add(touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, AnimationBehaviorFactory.getInstance()))
        else:
            this.add(touchButtonStartResource.HINT, nullAnimationFactory)
        jSuperStatement(procCall BaseResourceAnimationInterfaceFactoryInterfaceFactory(this).init(level))

method isLoadingLevel*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, level: int32): bool {.discardable.} =
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel():
            return true
        else:
            return procCall BaseResourceAnimationInterfaceFactoryInterfaceFactory(this).isLoadingLevel(level)

method isFeature*(this: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory): bool {.discardable.} =
        if (not Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)):
            return true
        else:
            return false

when declared(newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactoryHook1):
    newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactoryHook1 = proc (name: string): BaseResourceAnimationInterfaceFactoryInterfaceFactory = newTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(name)

