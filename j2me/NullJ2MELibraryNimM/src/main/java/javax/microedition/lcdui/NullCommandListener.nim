# Generated Code Do Not Modify
# package javax.microedition.lcdui

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/Displayable as DisplayableModule
export DisplayableModule

type
    NullCommandListener* = ref object of CommandListener

proc newNullCommandListener*(): NullCommandListener
method commandAction*(this: NullCommandListener, c: Command, d: Displayable)

var NullCommandListener_NULL_COMMAND_LISTENERValue: NullCommandListener
var NullCommandListener_NULL_COMMAND_LISTENERSet = false
proc NULL_COMMAND_LISTENERStatic*(t: typedesc[NullCommandListener]): NullCommandListener =
    if not NullCommandListener_NULL_COMMAND_LISTENERSet:
        NullCommandListener_NULL_COMMAND_LISTENERSet = true
        NullCommandListener_NULL_COMMAND_LISTENERValue = newNullCommandListener()
    NullCommandListener_NULL_COMMAND_LISTENERValue

proc initNullCommandListener*(this: NullCommandListener) =
    discard

proc newNullCommandListener*(): NullCommandListener =
    result = NullCommandListener()
    initNullCommandListener(result)

method commandAction*(this: NullCommandListener, c: Command, d: Displayable) =
        discard

