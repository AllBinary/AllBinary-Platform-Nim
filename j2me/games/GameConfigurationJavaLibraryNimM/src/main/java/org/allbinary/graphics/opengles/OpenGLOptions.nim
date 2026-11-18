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

type
    OpenGLOptions* = ref object of JObject

proc newOpenGLOptions*(): OpenGLOptions
method init*(this: OpenGLOptions) {.base.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureChoiceGroups as GameFeatureChoiceGroupsModule
export GameFeatureChoiceGroupsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule


proc initOpenGLOptions*(this: OpenGLOptions) =
    discard

proc newOpenGLOptions*(): OpenGLOptions =
    result = OpenGLOptions()
    initOpenGLOptions(result)

method init*(this: OpenGLOptions) {.base.} =
        var openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if Features.getInstance().isFeature(openGLFeatureFactory.OPENGL_OPTIONS):
            var openGLMultipleList: BasicArrayList = newBasicArrayListD()
            openGLMultipleList.add(openGLFeatureFactory.OPENGL)
            GameFeatureChoiceGroups.getMultipleInstance().add("OpenGL (Complete Restart)", openGLMultipleList)
            var openGLVersionSelectorMultipleList: BasicArrayList = newBasicArrayListD()
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_AUTO_SELECT)
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_MINIMUM)
            GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Version Selector", openGLVersionSelectorMultipleList)
            var openGLImageColorMultipleList: BasicArrayList = newBasicArrayListD()
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888)
            GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Image Color RGBA", openGLImageColorMultipleList)

