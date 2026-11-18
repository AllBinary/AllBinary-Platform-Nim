#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import java/awt/event/KeyEvent as KeyEventModule
export KeyEventModule

type
    ABKeyEventWrapper* = ref object of JObject
        VK_ENTER*: int32
        VK_BACK_SPACE*: int32
        VK_TAB*: int32
        VK_CANCEL*: int32
        VK_CLEAR*: int32
        VK_SHIFT*: int32
        VK_CONTROL*: int32
        VK_ALT*: int32
        VK_PAUSE*: int32
        VK_CAPS_LOCK*: int32
        VK_ESCAPE*: int32
        VK_SPACE*: int32
        VK_PAGE_UP*: int32
        VK_PAGE_DOWN*: int32
        VK_END*: int32
        VK_HOME*: int32
        VK_LEFT*: int32
        VK_UP*: int32
        VK_RIGHT*: int32
        VK_DOWN*: int32
        VK_COMMA*: int32
        VK_MINUS*: int32
        VK_PERIOD*: int32
        VK_SLASH*: int32
        VK_0*: int32
        VK_1*: int32
        VK_2*: int32
        VK_3*: int32
        VK_4*: int32
        VK_5*: int32
        VK_6*: int32
        VK_7*: int32
        VK_8*: int32
        VK_9*: int32
        VK_SEMICOLON*: int32
        VK_EQUALS*: int32
        VK_A*: int32
        VK_B*: int32
        VK_C*: int32
        VK_D*: int32
        VK_E*: int32
        VK_F*: int32
        VK_G*: int32
        VK_H*: int32
        VK_I*: int32
        VK_J*: int32
        VK_K*: int32
        VK_L*: int32
        VK_M*: int32
        VK_N*: int32
        VK_O*: int32
        VK_P*: int32
        VK_Q*: int32
        VK_R*: int32
        VK_S*: int32
        VK_T*: int32
        VK_U*: int32
        VK_V*: int32
        VK_W*: int32
        VK_X*: int32
        VK_Y*: int32
        VK_Z*: int32
        VK_OPEN_BRACKET*: int32
        VK_BACK_SLASH*: int32
        VK_CLOSE_BRACKET*: int32
        VK_NUMPAD0*: int32
        VK_NUMPAD1*: int32
        VK_NUMPAD2*: int32
        VK_NUMPAD3*: int32
        VK_NUMPAD4*: int32
        VK_NUMPAD5*: int32
        VK_NUMPAD6*: int32
        VK_NUMPAD7*: int32
        VK_NUMPAD8*: int32
        VK_NUMPAD9*: int32
        VK_MULTIPLY*: int32
        VK_ADD*: int32
        VK_SEPARATER*: int32
        VK_SEPARATOR*: int32
        VK_SUBTRACT*: int32
        VK_DECIMAL*: int32
        VK_DIVIDE*: int32
        VK_DELETE*: int32
        VK_NUM_LOCK*: int32
        VK_SCROLL_LOCK*: int32
        VK_F1*: int32
        VK_F2*: int32
        VK_F3*: int32
        VK_F4*: int32
        VK_F5*: int32
        VK_F6*: int32
        VK_F7*: int32
        VK_F8*: int32
        VK_F9*: int32
        VK_F10*: int32
        VK_F11*: int32
        VK_F12*: int32
        VK_F13*: int32
        VK_F14*: int32
        VK_F15*: int32
        VK_F16*: int32
        VK_F17*: int32
        VK_F18*: int32
        VK_F19*: int32
        VK_F20*: int32
        VK_F21*: int32
        VK_F22*: int32
        VK_F23*: int32
        VK_F24*: int32
        VK_PRINTSCREEN*: int32
        VK_INSERT*: int32
        VK_HELP*: int32
        VK_META*: int32
        VK_BACK_QUOTE*: int32
        VK_QUOTE*: int32
        VK_KP_UP*: int32
        VK_KP_DOWN*: int32
        VK_KP_LEFT*: int32
        VK_KP_RIGHT*: int32
        VK_DEAD_GRAVE*: int32
        VK_DEAD_ACUTE*: int32
        VK_DEAD_CIRCUMFLEX*: int32
        VK_DEAD_TILDE*: int32
        VK_DEAD_MACRON*: int32
        VK_DEAD_BREVE*: int32
        VK_DEAD_ABOVEDOT*: int32
        VK_DEAD_DIAERESIS*: int32
        VK_DEAD_ABOVERING*: int32
        VK_DEAD_DOUBLEACUTE*: int32
        VK_DEAD_CARON*: int32
        VK_DEAD_CEDILLA*: int32
        VK_DEAD_OGONEK*: int32
        VK_DEAD_IOTA*: int32
        VK_DEAD_VOICED_SOUND*: int32
        VK_DEAD_SEMIVOICED_SOUND*: int32
        VK_AMPERSAND*: int32
        VK_ASTERISK*: int32
        VK_QUOTEDBL*: int32
        VK_LESS*: int32
        VK_GREATER*: int32
        VK_BRACELEFT*: int32
        VK_BRACERIGHT*: int32
        VK_AT*: int32
        VK_COLON*: int32
        VK_CIRCUMFLEX*: int32
        VK_DOLLAR*: int32
        VK_EURO_SIGN*: int32
        VK_EXCLAMATION_MARK*: int32
        VK_INVERTED_EXCLAMATION_MARK*: int32
        VK_LEFT_PARENTHESIS*: int32
        VK_NUMBER_SIGN*: int32
        VK_PLUS*: int32
        VK_RIGHT_PARENTHESIS*: int32
        VK_UNDERSCORE*: int32
        VK_WINDOWS*: int32
        VK_CONTEXT_MENU*: int32
        VK_FINAL*: int32
        VK_CONVERT*: int32
        VK_NONCONVERT*: int32
        VK_ACCEPT*: int32
        VK_MODECHANGE*: int32
        VK_KANA*: int32
        VK_KANJI*: int32
        VK_ALPHANUMERIC*: int32
        VK_KATAKANA*: int32
        VK_HIRAGANA*: int32
        VK_FULL_WIDTH*: int32
        VK_HALF_WIDTH*: int32
        VK_ROMAN_CHARACTERS*: int32
        VK_ALL_CANDIDATES*: int32
        VK_PREVIOUS_CANDIDATE*: int32
        VK_CODE_INPUT*: int32
        VK_JAPANESE_KATAKANA*: int32
        VK_JAPANESE_HIRAGANA*: int32
        VK_JAPANESE_ROMAN*: int32
        VK_KANA_LOCK*: int32
        VK_INPUT_METHOD_ON_OFF*: int32
        VK_CUT*: int32
        VK_COPY*: int32
        VK_PASTE*: int32
        VK_UNDO*: int32
        VK_AGAIN*: int32
        VK_FIND*: int32
        VK_PROPS*: int32
        VK_STOP*: int32
        VK_COMPOSE*: int32
        VK_ALT_GRAPH*: int32
        VK_BEGIN*: int32
        VK_UNDEFINED*: int32

proc newABKeyEventWrapper*(): ABKeyEventWrapper
proc getInstance*(t: typedesc[ABKeyEventWrapper]): ABKeyEventWrapper {.discardable.}

var ABKeyEventWrapper_instanceValue: ABKeyEventWrapper
var ABKeyEventWrapper_instanceSet = false
proc instance*(t: typedesc[ABKeyEventWrapper]): ABKeyEventWrapper =
    if not ABKeyEventWrapper_instanceSet:
        ABKeyEventWrapper_instanceSet = true
        ABKeyEventWrapper_instanceValue = newABKeyEventWrapper()
    ABKeyEventWrapper_instanceValue

# Java field initializers run after the base initializer
proc initFieldsABKeyEventWrapper(this: ABKeyEventWrapper) =
    this.VK_ENTER = KeyEvent.VK_ENTER
    this.VK_BACK_SPACE = KeyEvent.VK_BACK_SPACE
    this.VK_TAB = KeyEvent.VK_TAB
    this.VK_CANCEL = KeyEvent.VK_CANCEL
    this.VK_CLEAR = KeyEvent.VK_CLEAR
    this.VK_SHIFT = KeyEvent.VK_SHIFT
    this.VK_CONTROL = KeyEvent.VK_CONTROL
    this.VK_ALT = KeyEvent.VK_ALT
    this.VK_PAUSE = KeyEvent.VK_PAUSE
    this.VK_CAPS_LOCK = KeyEvent.VK_CAPS_LOCK
    this.VK_ESCAPE = KeyEvent.VK_ESCAPE
    this.VK_SPACE = KeyEvent.VK_SPACE
    this.VK_PAGE_UP = KeyEvent.VK_PAGE_UP
    this.VK_PAGE_DOWN = KeyEvent.VK_PAGE_DOWN
    this.VK_END = KeyEvent.VK_END
    this.VK_HOME = KeyEvent.VK_HOME
    this.VK_LEFT = KeyEvent.VK_LEFT
    this.VK_UP = KeyEvent.VK_UP
    this.VK_RIGHT = KeyEvent.VK_RIGHT
    this.VK_DOWN = KeyEvent.VK_DOWN
    this.VK_COMMA = KeyEvent.VK_COMMA
    this.VK_MINUS = KeyEvent.VK_MINUS
    this.VK_PERIOD = KeyEvent.VK_PERIOD
    this.VK_SLASH = KeyEvent.VK_SLASH
    this.VK_0 = KeyEvent.VK_0
    this.VK_1 = KeyEvent.VK_1
    this.VK_2 = KeyEvent.VK_2
    this.VK_3 = KeyEvent.VK_3
    this.VK_4 = KeyEvent.VK_4
    this.VK_5 = KeyEvent.VK_5
    this.VK_6 = KeyEvent.VK_6
    this.VK_7 = KeyEvent.VK_7
    this.VK_8 = KeyEvent.VK_8
    this.VK_9 = KeyEvent.VK_9
    this.VK_SEMICOLON = KeyEvent.VK_SEMICOLON
    this.VK_EQUALS = KeyEvent.VK_EQUALS
    this.VK_A = KeyEvent.VK_A
    this.VK_B = KeyEvent.VK_B
    this.VK_C = KeyEvent.VK_C
    this.VK_D = KeyEvent.VK_D
    this.VK_E = KeyEvent.VK_E
    this.VK_F = KeyEvent.VK_F
    this.VK_G = KeyEvent.VK_G
    this.VK_H = KeyEvent.VK_H
    this.VK_I = KeyEvent.VK_I
    this.VK_J = KeyEvent.VK_J
    this.VK_K = KeyEvent.VK_K
    this.VK_L = KeyEvent.VK_L
    this.VK_M = KeyEvent.VK_M
    this.VK_N = KeyEvent.VK_N
    this.VK_O = KeyEvent.VK_O
    this.VK_P = KeyEvent.VK_P
    this.VK_Q = KeyEvent.VK_Q
    this.VK_R = KeyEvent.VK_R
    this.VK_S = KeyEvent.VK_S
    this.VK_T = KeyEvent.VK_T
    this.VK_U = KeyEvent.VK_U
    this.VK_V = KeyEvent.VK_V
    this.VK_W = KeyEvent.VK_W
    this.VK_X = KeyEvent.VK_X
    this.VK_Y = KeyEvent.VK_Y
    this.VK_Z = KeyEvent.VK_Z
    this.VK_OPEN_BRACKET = KeyEvent.VK_OPEN_BRACKET
    this.VK_BACK_SLASH = KeyEvent.VK_BACK_SLASH
    this.VK_CLOSE_BRACKET = KeyEvent.VK_CLOSE_BRACKET
    this.VK_NUMPAD0 = KeyEvent.VK_NUMPAD0
    this.VK_NUMPAD1 = KeyEvent.VK_NUMPAD1
    this.VK_NUMPAD2 = KeyEvent.VK_NUMPAD2
    this.VK_NUMPAD3 = KeyEvent.VK_NUMPAD3
    this.VK_NUMPAD4 = KeyEvent.VK_NUMPAD4
    this.VK_NUMPAD5 = KeyEvent.VK_NUMPAD5
    this.VK_NUMPAD6 = KeyEvent.VK_NUMPAD6
    this.VK_NUMPAD7 = KeyEvent.VK_NUMPAD7
    this.VK_NUMPAD8 = KeyEvent.VK_NUMPAD8
    this.VK_NUMPAD9 = KeyEvent.VK_NUMPAD9
    this.VK_MULTIPLY = KeyEvent.VK_MULTIPLY
    this.VK_ADD = KeyEvent.VK_ADD
    this.VK_SEPARATER = KeyEvent.VK_SEPARATER
    this.VK_SEPARATOR = KeyEvent.VK_SEPARATOR
    this.VK_SUBTRACT = KeyEvent.VK_SUBTRACT
    this.VK_DECIMAL = KeyEvent.VK_DECIMAL
    this.VK_DIVIDE = KeyEvent.VK_DIVIDE
    this.VK_DELETE = KeyEvent.VK_DELETE
    this.VK_NUM_LOCK = KeyEvent.VK_NUM_LOCK
    this.VK_SCROLL_LOCK = KeyEvent.VK_SCROLL_LOCK
    this.VK_F1 = KeyEvent.VK_F1
    this.VK_F2 = KeyEvent.VK_F2
    this.VK_F3 = KeyEvent.VK_F3
    this.VK_F4 = KeyEvent.VK_F4
    this.VK_F5 = KeyEvent.VK_F5
    this.VK_F6 = KeyEvent.VK_F6
    this.VK_F7 = KeyEvent.VK_F7
    this.VK_F8 = KeyEvent.VK_F8
    this.VK_F9 = KeyEvent.VK_F9
    this.VK_F10 = KeyEvent.VK_F10
    this.VK_F11 = KeyEvent.VK_F11
    this.VK_F12 = KeyEvent.VK_F12
    this.VK_F13 = KeyEvent.VK_F13
    this.VK_F14 = KeyEvent.VK_F14
    this.VK_F15 = KeyEvent.VK_F15
    this.VK_F16 = KeyEvent.VK_F16
    this.VK_F17 = KeyEvent.VK_F17
    this.VK_F18 = KeyEvent.VK_F18
    this.VK_F19 = KeyEvent.VK_F19
    this.VK_F20 = KeyEvent.VK_F20
    this.VK_F21 = KeyEvent.VK_F21
    this.VK_F22 = KeyEvent.VK_F22
    this.VK_F23 = KeyEvent.VK_F23
    this.VK_F24 = KeyEvent.VK_F24
    this.VK_PRINTSCREEN = KeyEvent.VK_PRINTSCREEN
    this.VK_INSERT = KeyEvent.VK_INSERT
    this.VK_HELP = KeyEvent.VK_HELP
    this.VK_META = KeyEvent.VK_META
    this.VK_BACK_QUOTE = KeyEvent.VK_BACK_QUOTE
    this.VK_QUOTE = KeyEvent.VK_QUOTE
    this.VK_KP_UP = KeyEvent.VK_KP_UP
    this.VK_KP_DOWN = KeyEvent.VK_KP_DOWN
    this.VK_KP_LEFT = KeyEvent.VK_KP_LEFT
    this.VK_KP_RIGHT = KeyEvent.VK_KP_RIGHT
    this.VK_DEAD_GRAVE = KeyEvent.VK_DEAD_GRAVE
    this.VK_DEAD_ACUTE = KeyEvent.VK_DEAD_ACUTE
    this.VK_DEAD_CIRCUMFLEX = KeyEvent.VK_DEAD_CIRCUMFLEX
    this.VK_DEAD_TILDE = KeyEvent.VK_DEAD_TILDE
    this.VK_DEAD_MACRON = KeyEvent.VK_DEAD_MACRON
    this.VK_DEAD_BREVE = KeyEvent.VK_DEAD_BREVE
    this.VK_DEAD_ABOVEDOT = KeyEvent.VK_DEAD_ABOVEDOT
    this.VK_DEAD_DIAERESIS = KeyEvent.VK_DEAD_DIAERESIS
    this.VK_DEAD_ABOVERING = KeyEvent.VK_DEAD_ABOVERING
    this.VK_DEAD_DOUBLEACUTE = KeyEvent.VK_DEAD_DOUBLEACUTE
    this.VK_DEAD_CARON = KeyEvent.VK_DEAD_CARON
    this.VK_DEAD_CEDILLA = KeyEvent.VK_DEAD_CEDILLA
    this.VK_DEAD_OGONEK = KeyEvent.VK_DEAD_OGONEK
    this.VK_DEAD_IOTA = KeyEvent.VK_DEAD_IOTA
    this.VK_DEAD_VOICED_SOUND = KeyEvent.VK_DEAD_VOICED_SOUND
    this.VK_DEAD_SEMIVOICED_SOUND = KeyEvent.VK_DEAD_SEMIVOICED_SOUND
    this.VK_AMPERSAND = KeyEvent.VK_AMPERSAND
    this.VK_ASTERISK = KeyEvent.VK_ASTERISK
    this.VK_QUOTEDBL = KeyEvent.VK_QUOTEDBL
    this.VK_LESS = KeyEvent.VK_LESS
    this.VK_GREATER = KeyEvent.VK_GREATER
    this.VK_BRACELEFT = KeyEvent.VK_BRACELEFT
    this.VK_BRACERIGHT = KeyEvent.VK_BRACERIGHT
    this.VK_AT = KeyEvent.VK_AT
    this.VK_COLON = KeyEvent.VK_COLON
    this.VK_CIRCUMFLEX = KeyEvent.VK_CIRCUMFLEX
    this.VK_DOLLAR = KeyEvent.VK_DOLLAR
    this.VK_EURO_SIGN = KeyEvent.VK_EURO_SIGN
    this.VK_EXCLAMATION_MARK = KeyEvent.VK_EXCLAMATION_MARK
    this.VK_INVERTED_EXCLAMATION_MARK = KeyEvent.VK_INVERTED_EXCLAMATION_MARK
    this.VK_LEFT_PARENTHESIS = KeyEvent.VK_LEFT_PARENTHESIS
    this.VK_NUMBER_SIGN = KeyEvent.VK_NUMBER_SIGN
    this.VK_PLUS = KeyEvent.VK_PLUS
    this.VK_RIGHT_PARENTHESIS = KeyEvent.VK_RIGHT_PARENTHESIS
    this.VK_UNDERSCORE = KeyEvent.VK_UNDERSCORE
    this.VK_WINDOWS = KeyEvent.VK_WINDOWS
    this.VK_CONTEXT_MENU = KeyEvent.VK_CONTEXT_MENU
    this.VK_FINAL = KeyEvent.VK_FINAL
    this.VK_CONVERT = KeyEvent.VK_CONVERT
    this.VK_NONCONVERT = KeyEvent.VK_NONCONVERT
    this.VK_ACCEPT = KeyEvent.VK_ACCEPT
    this.VK_MODECHANGE = KeyEvent.VK_MODECHANGE
    this.VK_KANA = KeyEvent.VK_KANA
    this.VK_KANJI = KeyEvent.VK_KANJI
    this.VK_ALPHANUMERIC = KeyEvent.VK_ALPHANUMERIC
    this.VK_KATAKANA = KeyEvent.VK_KATAKANA
    this.VK_HIRAGANA = KeyEvent.VK_HIRAGANA
    this.VK_FULL_WIDTH = KeyEvent.VK_FULL_WIDTH
    this.VK_HALF_WIDTH = KeyEvent.VK_HALF_WIDTH
    this.VK_ROMAN_CHARACTERS = KeyEvent.VK_ROMAN_CHARACTERS
    this.VK_ALL_CANDIDATES = KeyEvent.VK_ALL_CANDIDATES
    this.VK_PREVIOUS_CANDIDATE = KeyEvent.VK_PREVIOUS_CANDIDATE
    this.VK_CODE_INPUT = KeyEvent.VK_CODE_INPUT
    this.VK_JAPANESE_KATAKANA = KeyEvent.VK_JAPANESE_KATAKANA
    this.VK_JAPANESE_HIRAGANA = KeyEvent.VK_JAPANESE_HIRAGANA
    this.VK_JAPANESE_ROMAN = KeyEvent.VK_JAPANESE_ROMAN
    this.VK_KANA_LOCK = KeyEvent.VK_KANA_LOCK
    this.VK_INPUT_METHOD_ON_OFF = KeyEvent.VK_INPUT_METHOD_ON_OFF
    this.VK_CUT = KeyEvent.VK_CUT
    this.VK_COPY = KeyEvent.VK_COPY
    this.VK_PASTE = KeyEvent.VK_PASTE
    this.VK_UNDO = KeyEvent.VK_UNDO
    this.VK_AGAIN = KeyEvent.VK_AGAIN
    this.VK_FIND = KeyEvent.VK_FIND
    this.VK_PROPS = KeyEvent.VK_PROPS
    this.VK_STOP = KeyEvent.VK_STOP
    this.VK_COMPOSE = KeyEvent.VK_COMPOSE
    this.VK_ALT_GRAPH = KeyEvent.VK_ALT_GRAPH
    this.VK_BEGIN = KeyEvent.VK_BEGIN
    this.VK_UNDEFINED = KeyEvent.VK_UNDEFINED
    discard

proc initABKeyEventWrapper*(this: ABKeyEventWrapper) =
    this.initFieldsABKeyEventWrapper()

proc newABKeyEventWrapper*(): ABKeyEventWrapper =
    result = ABKeyEventWrapper()
    initABKeyEventWrapper(result)

proc getInstance*(t: typedesc[ABKeyEventWrapper]): ABKeyEventWrapper {.discardable.} =
        return ABKeyEventWrapper.instance

