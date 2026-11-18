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
import org/allbinary/graphics/opengles/OpenGLFeature as OpenGLFeatureModule
export OpenGLFeatureModule

type
    OpenGLFeatureFactory* = ref object of JObject
        OPENGL_OPTIONS*: OpenGLFeature
        OPENGL*: OpenGLFeature
        OPENGL_SURFACE_VIEW*: OpenGLFeature
        OPENGL_2D*: OpenGLFeature
        OPENGL_3D*: OpenGLFeature
        OPENGL_2D_AND_3D*: OpenGLFeature
        OPENGL_AUTO_SELECT*: OpenGLFeature
        OPENGL_MINIMUM*: OpenGLFeature
        OPENGL_AS_GAME_THREAD*: OpenGLFeature
        OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS*: OpenGLFeature
        IMAGE_COLOR_DEPTH_4444*: OpenGLFeature
        IMAGE_COLOR_DEPTH_8888*: OpenGLFeature
        IMAGE_COLOR_DEPTH_565*: OpenGLFeature
        OPENGL_COLOR_DEPTH_4444*: OpenGLFeature
        OPENGL_COLOR_DEPTH_8888*: OpenGLFeature
        OPENGL_COLOR_DEPTH_565*: OpenGLFeature
        OPENGL_DRAW_TEXTURE*: OpenGLFeature
        OPENGL_VERTEX_BUFFER_OBJECT*: OpenGLFeature
        OPENGL_SIMPLE_OBJECT3D_PROCESSOR*: OpenGLFeature
        OPENGL_COMPLEX_OBJECT3D_PROCESSOR*: OpenGLFeature
        OPENGL_SIMPLE_TEXTURE_PROCESSOR*: OpenGLFeature
        OPENGL_COMPLEX_TEXTURE_PROCESSOR*: OpenGLFeature

proc newOpenGLFeatureFactory*(): OpenGLFeatureFactory
proc initOpenGLFeatureFactory*(this: OpenGLFeatureFactory)
proc getInstance*(t: typedesc[OpenGLFeatureFactory]): OpenGLFeatureFactory {.discardable.}

var OpenGLFeatureFactory_instanceValue: OpenGLFeatureFactory
var OpenGLFeatureFactory_instanceSet = false
proc instance*(t: typedesc[OpenGLFeatureFactory]): OpenGLFeatureFactory =
    if not OpenGLFeatureFactory_instanceSet:
        OpenGLFeatureFactory_instanceSet = true
        OpenGLFeatureFactory_instanceValue = newOpenGLFeatureFactory()
    OpenGLFeatureFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOpenGLFeatureFactory(this: OpenGLFeatureFactory) =
    this.OPENGL_OPTIONS = newOpenGLFeature("OpenGL Options")
    this.OPENGL = newOpenGLFeature("OpenGL")
    this.OPENGL_SURFACE_VIEW = newOpenGLFeature("GLSurfaceView")
    this.OPENGL_2D = newOpenGLFeature("OpenGL 2D")
    this.OPENGL_3D = newOpenGLFeature("OpenGL 3D")
    this.OPENGL_2D_AND_3D = newOpenGLFeature("OpenGL 2D/3D")
    this.OPENGL_AUTO_SELECT = newOpenGLFeature("Auto Select")
    this.OPENGL_MINIMUM = newOpenGLFeature("Minimum")
    this.OPENGL_AS_GAME_THREAD = newOpenGLFeature("As game thread")
    this.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = newOpenGLFeature("As different threads")
    this.IMAGE_COLOR_DEPTH_4444 = newOpenGLFeature("4444")
    this.IMAGE_COLOR_DEPTH_8888 = newOpenGLFeature("8888")
    this.IMAGE_COLOR_DEPTH_565 = newOpenGLFeature("565")
    this.OPENGL_COLOR_DEPTH_4444 = newOpenGLFeature("4444")
    this.OPENGL_COLOR_DEPTH_8888 = newOpenGLFeature("8888")
    this.OPENGL_COLOR_DEPTH_565 = newOpenGLFeature("565")
    this.OPENGL_DRAW_TEXTURE = newOpenGLFeature("GL_OES_draw_texture")
    this.OPENGL_VERTEX_BUFFER_OBJECT = newOpenGLFeature("vertex_buffer_object")
    this.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = newOpenGLFeature("Simple Object3d Processor")
    this.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = newOpenGLFeature("Complex Object3d Processor")
    this.OPENGL_SIMPLE_TEXTURE_PROCESSOR = newOpenGLFeature("Simple Texture Processor")
    this.OPENGL_COMPLEX_TEXTURE_PROCESSOR = newOpenGLFeature("Complex Texture Processor")
    discard

proc getInstance*(t: typedesc[OpenGLFeatureFactory]): OpenGLFeatureFactory {.discardable.} =
        return OpenGLFeatureFactory.instance

proc initOpenGLFeatureFactory*(this: OpenGLFeatureFactory) =
        this.initFieldsOpenGLFeatureFactory()
        discard

proc newOpenGLFeatureFactory*(): OpenGLFeatureFactory =
    result = OpenGLFeatureFactory()
    initOpenGLFeatureFactory(result)

