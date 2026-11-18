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
# package org.allbinary.animation.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/image/AnimationFactoryImageScaleUtil as AnimationFactoryImageScaleUtilModule
export AnimationFactoryImageScaleUtilModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule
import org/allbinary/animation/image/AnimationFactoryInitializationVisitor as AnimationFactoryInitializationVisitorModule
export AnimationFactoryInitializationVisitorModule

type
    BaseImageAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        animationFactoryImageScaleUtil*: AnimationFactoryImageScaleUtil
        image*: Image
        animationBehaviorFactory*: AnimationBehaviorFactory
        sequenceArray*: JArray[int32]
        animationFactoryInitializationVisitor*: AnimationFactoryInitializationVisitor
        scaleProperties*: ScaleProperties

proc newBaseImageAnimationFactory*(image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory
proc initBaseImageAnimationFactory*(this: BaseImageAnimationFactory, image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory)
proc createFactoryBase*(t: typedesc[BaseImageAnimationFactory], image: Image, sequenceArray: JArray[int32], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory {.discardable.}
method getInstance*(this: BaseImageAnimationFactory, instanceId: int32): Animation {.discardable.}
method getImage*(this: BaseImageAnimationFactory): Image {.base, discardable.}
method getSequenceArray*(this: BaseImageAnimationFactory): JArray[int32] {.base, discardable.}
method setInitialScale*(this: BaseImageAnimationFactory, scaleProperties: ScaleProperties)
method getAnimationFactoryInitializationVisitorP*(this: BaseImageAnimationFactory): AnimationFactoryInitializationVisitor {.base, discardable.}
method getScalePropertiesP*(this: BaseImageAnimationFactory): ScaleProperties {.base, discardable.}
method toString*(this: BaseImageAnimationFactory): string {.discardable.}
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsBaseImageAnimationFactory(this: BaseImageAnimationFactory) =
    this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
    
    
    
    
    this.scaleProperties = ScaleProperties.instance
    discard

proc createFactoryBase*(t: typedesc[BaseImageAnimationFactory], image: Image, sequenceArray: JArray[int32], width: int32, height: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory {.discardable.} =
        return newBaseImageAnimationFactory(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory)

proc initBaseImageAnimationFactory*(this: BaseImageAnimationFactory, image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsBaseImageAnimationFactory()
        this.animationFactoryInitializationVisitor = newAnimationFactoryInitializationVisitor()
        this.image = image
        this.animationFactoryInitializationVisitor.width = width
        this.animationFactoryInitializationVisitor.height = height
        this.animationBehaviorFactory = animationBehaviorFactory
        this.sequenceArray = sequenceArray
        this.animationFactoryInitializationVisitor.dx = dx
        this.animationFactoryInitializationVisitor.dy = dy

proc newBaseImageAnimationFactory*(image: Image, sequenceArray: JArray[int32], width: int32, height: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): BaseImageAnimationFactory =
    result = BaseImageAnimationFactory()
    initBaseImageAnimationFactory(result, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)

method getInstance*(this: BaseImageAnimationFactory, instanceId: int32): Animation {.discardable.} =
        return NullAnimationFactory.getFactoryInstance().getInstance(instanceId)

method getImage*(this: BaseImageAnimationFactory): Image {.base, discardable.} =
        return this.image

method getSequenceArray*(this: BaseImageAnimationFactory): JArray[int32] {.base, discardable.} =
        return this.sequenceArray

method setInitialScale*(this: BaseImageAnimationFactory, scaleProperties: ScaleProperties) =
        this.scaleProperties = scaleProperties
        if this.scaleProperties.shouldScale:
            this.scaleProperties.scaleWidth = jToInt32(float64((float32(this.animationFactoryInitializationVisitor.width) * this.scaleProperties.scaleX)))
            this.scaleProperties.scaleHeight = jToInt32(float64((float32(this.animationFactoryInitializationVisitor.height) * this.scaleProperties.scaleY)))
        else:
            discard

method getAnimationFactoryInitializationVisitorP*(this: BaseImageAnimationFactory): AnimationFactoryInitializationVisitor {.base, discardable.} =
        return this.animationFactoryInitializationVisitor

method getScalePropertiesP*(this: BaseImageAnimationFactory): ScaleProperties {.base, discardable.} =
        return this.scaleProperties

method toString*(this: BaseImageAnimationFactory): string {.discardable.} =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let commonLabels: CommonLabels = CommonLabels.getInstance()
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(procCall (this).toString())
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(this.image.getHeight())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(this.animationFactoryInitializationVisitor.toString())
        return stringBuffer.toString()

