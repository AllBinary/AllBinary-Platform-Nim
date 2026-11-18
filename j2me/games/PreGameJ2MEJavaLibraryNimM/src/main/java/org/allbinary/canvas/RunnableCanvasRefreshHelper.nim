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
# package org.allbinary.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule

type
    RunnableCanvasRefreshHelper* = ref object of Processor
        runnableCanvas*: MyCanvas

proc newRunnableCanvasRefreshHelper*(runnableCanvas: MyCanvas): RunnableCanvasRefreshHelper
proc initRunnableCanvasRefreshHelper*(this: RunnableCanvasRefreshHelper, runnableCanvas: MyCanvas)
method process*(this: RunnableCanvasRefreshHelper)


# Java field initializers run after the base initializer
proc initFieldsRunnableCanvasRefreshHelper(this: RunnableCanvasRefreshHelper) =
    
    discard

proc initRunnableCanvasRefreshHelper*(this: RunnableCanvasRefreshHelper, runnableCanvas: MyCanvas) =
        initProcessor(this)
        this.initFieldsRunnableCanvasRefreshHelper()
        this.runnableCanvas = runnableCanvas

proc newRunnableCanvasRefreshHelper*(runnableCanvas: MyCanvas): RunnableCanvasRefreshHelper =
    result = RunnableCanvasRefreshHelper()
    initRunnableCanvasRefreshHelper(result, runnableCanvas)

method process*(this: RunnableCanvasRefreshHelper) =
        this.runnableCanvas.repaint()

when declared(newRunnableCanvasRefreshHelperHook1):
    newRunnableCanvasRefreshHelperHook1 = proc (runnableCanvas: MyCanvas): Processor = newRunnableCanvasRefreshHelper(runnableCanvas)

