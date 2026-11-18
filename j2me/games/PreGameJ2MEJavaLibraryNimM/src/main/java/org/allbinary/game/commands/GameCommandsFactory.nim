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
# package org.allbinary.game.commands

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule

type
    GameCommandsFactory* = ref object of JObject
        TOGGLE_FULLSCREEN*: Command
        TOGGLE_KEYBOARD*: Command
        SET_MENU_DISPLAYABLE*: Command
        APPLICATION_UPDATE*: Command
        DISPLAY_ABOUT*: Command
        OPEN_WEB_URL*: Command
        CLOSE_OPTIONS*: Command
        DISPLAY_OPTIONS*: Command
        START_TRACE*: Command
        STOP_TRACE*: Command
        DEFAULT_OPTIONS*: Command
        SHOW_GAME_CANVAS*: Command
        CLOSE_AND_SHOW_GAME_CANVAS*: Command
        QUIT_COMMAND*: Command
        RESTART_COMMAND*: Command
        DISPLAY_SAVE_FORM*: Command
        SAVE*: Command
        DISPLAY_LOAD_FORM*: Command
        LOAD_FILE*: Command
        DELETE_FILE*: Command
        EXIT_COMMAND*: Command
        EXIT_WITHOUT_PROGRESS_COMMAND*: Command
        START_COMMAND*: Command
        CONTINUE_COMMAND*: Command
        SELECT_COMMAND*: Command
        FEATURE_UPDATE*: Command
        BUY_COMMAND*: Command

proc newGameCommandsFactory*(): GameCommandsFactory
proc initGameCommandsFactory*(this: GameCommandsFactory)
proc getInstance*(t: typedesc[GameCommandsFactory]): GameCommandsFactory {.discardable.}
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var GameCommandsFactory_instanceValue: JObject
var GameCommandsFactory_instanceSet = false
proc instance*(t: typedesc[GameCommandsFactory]): JObject =
    if not GameCommandsFactory_instanceSet:
        GameCommandsFactory_instanceSet = true
        GameCommandsFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    GameCommandsFactory_instanceValue
proc `instance=`*(t: typedesc[GameCommandsFactory], value: JObject) =
    GameCommandsFactory_instanceSet = true
    GameCommandsFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsGameCommandsFactory(this: GameCommandsFactory) =
    this.TOGGLE_FULLSCREEN = newCommand("Toggle FullScreen", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.TOGGLE_KEYBOARD = newCommand("Keyboard", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.SET_MENU_DISPLAYABLE = newCommand("Set Menu Displayable", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.APPLICATION_UPDATE = newCommand(CommonStrings.getInstance().UPDATE, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.DISPLAY_ABOUT = newCommand(CanvasStrings.getInstance().ABOUT, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    this.OPEN_WEB_URL = newCommand("Open Web URL", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    this.CLOSE_OPTIONS = newCommand("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.DISPLAY_OPTIONS = newCommand(CanvasStrings.getInstance().OPTIONS, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    this.START_TRACE = newCommand("Start Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.STOP_TRACE = newCommand("Stop Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.DEFAULT_OPTIONS = newCommand("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.SHOW_GAME_CANVAS = newCommand("Back to Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.CLOSE_AND_SHOW_GAME_CANVAS = newCommand("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.QUIT_COMMAND = newCommand("Quit", StringUtil.getInstance().EMPTY_STRING, Command.STOP, 1)
    this.RESTART_COMMAND = newCommand("Restart", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
    this.DISPLAY_SAVE_FORM = newCommand("Save To", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
    this.SAVE = newCommand("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
    this.DISPLAY_LOAD_FORM = newCommand("Load", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
    this.LOAD_FILE = newCommand("Load File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
    this.DELETE_FILE = newCommand("Delete File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.EXIT_COMMAND = newCommand("Exit", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2)
    this.EXIT_WITHOUT_PROGRESS_COMMAND = newCommand("Exit Without Progress", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2)
    this.START_COMMAND = newCommand(CommonStrings.getInstance().START, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.CONTINUE_COMMAND = newCommand("Continue", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.SELECT_COMMAND = newCommand("Select", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.FEATURE_UPDATE = newCommand("Feature Update", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    this.BUY_COMMAND = newCommand("BUY", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    discard

proc getInstance*(t: typedesc[GameCommandsFactory]): GameCommandsFactory {.discardable.} =
        if GameCommandsFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            GameCommandsFactory.instance = newGameCommandsFactory()
        return GameCommandsFactory(JObject(GameCommandsFactory.instance))

proc initGameCommandsFactory*(this: GameCommandsFactory) =
        this.initFieldsGameCommandsFactory()
        discard

proc newGameCommandsFactory*(): GameCommandsFactory =
    result = GameCommandsFactory()
    initGameCommandsFactory(result)

