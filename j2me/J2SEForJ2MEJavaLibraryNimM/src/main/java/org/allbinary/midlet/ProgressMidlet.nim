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
# package org.allbinary.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/logic/system/security/licensing/ClientInformationFactory as ClientInformationFactoryModule
export ClientInformationFactoryModule
import org/allbinary/midlet/AllBinaryMidlet as AllBinaryMidletModule
export AllBinaryMidletModule

#J2SEForJ2ME
type
    ProgressMidlet* = ref object of AllBinaryMidlet
        abeClientInformation*: AbeClientInformationInterface

proc newProgressMidlet*(clientInformationFactory: ClientInformationFactory): ProgressMidlet
proc initProgressMidlet*(this: ProgressMidlet, clientInformationFactory: ClientInformationFactory)
method preInit*(this: ProgressMidlet) {.base.}
method exitProgress*(this: ProgressMidlet, isProgress: bool) {.base.}
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/thread/PrimaryThreadPool as PrimaryThreadPoolModule
export PrimaryThreadPoolModule
import org/allbinary/thread/ThreadPool as ThreadPoolModule
export ThreadPoolModule
import org/allbinary/midlet/MidletExitProcessorFactory as MidletExitProcessorFactoryModule
export MidletExitProcessorFactoryModule
import org/allbinary/midlet/ExitRunnable as ExitRunnableModule
export ExitRunnableModule


# Java field initializers run after the base initializer
proc initFieldsProgressMidlet(this: ProgressMidlet) =
    
    discard

proc initProgressMidlet*(this: ProgressMidlet, clientInformationFactory: ClientInformationFactory) =
        initAllBinaryMidlet(this)
        this.initFieldsProgressMidlet()
        this.preInit()
        this.abeClientInformation = clientInformationFactory.getInstance()

proc newProgressMidlet*(clientInformationFactory: ClientInformationFactory): ProgressMidlet =
    result = ProgressMidlet()
    initProgressMidlet(result, clientInformationFactory)

method preInit*(this: ProgressMidlet) {.base.} =
        discard

method exitProgress*(this: ProgressMidlet, isProgress: bool) {.base.} =
        let processor: Processor = MidletExitProcessorFactory.getInstance().getExitInstance(this)
        try:
            var primaryThreadPool: ThreadPool = PrimaryThreadPool.getInstance()
            var runnable: Runnable = newExitRunnable(this, processor, isProgress)
            primaryThreadPool.runTask(runnable)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e)
            try:
                processor.process()
            except CatchableError as jcaught:
                let e2 = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e)

when declared(newProgressMidletHook1):
    newProgressMidletHook1 = proc (clientInformationFactory: ClientInformationFactory): AllBinaryMidlet = newProgressMidlet(clientInformationFactory)

