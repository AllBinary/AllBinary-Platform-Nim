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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/ABKeyEventWrapper as ABKeyEventWrapperModule
export ABKeyEventWrapperModule
import org/allbinary/game/input/PCGameKey as PCGameKeyModule
export PCGameKeyModule
import org/allbinary/game/input/Input as InputModule
export InputModule

type
    PCKeyFactory* = ref object of JObject
        keyEventWrapper*: ABKeyEventWrapper
        UNKNOWN*: PCGameKey
        ENTER*: PCGameKey
        U_A*: PCGameKey
        U_B*: PCGameKey
        U_C*: PCGameKey
        U_D*: PCGameKey
        U_E*: PCGameKey
        U_F*: PCGameKey
        U_G*: PCGameKey
        U_H*: PCGameKey
        U_I*: PCGameKey
        U_J*: PCGameKey
        U_K*: PCGameKey
        U_L*: PCGameKey
        U_M*: PCGameKey
        U_N*: PCGameKey
        U_O*: PCGameKey
        U_P*: PCGameKey
        U_Q*: PCGameKey
        U_R*: PCGameKey
        U_S*: PCGameKey
        U_T*: PCGameKey
        U_U*: PCGameKey
        U_V*: PCGameKey
        U_W*: PCGameKey
        U_X*: PCGameKey
        U_Y*: PCGameKey
        U_Z*: PCGameKey
        a*: PCGameKey
        b*: PCGameKey
        c*: PCGameKey
        d*: PCGameKey
        e*: PCGameKey
        f*: PCGameKey
        g*: PCGameKey
        h*: PCGameKey
        i*: PCGameKey
        j*: PCGameKey
        k*: PCGameKey
        l*: PCGameKey
        m*: PCGameKey
        n*: PCGameKey
        o*: PCGameKey
        p*: PCGameKey
        q*: PCGameKey
        r*: PCGameKey
        s*: PCGameKey
        t*: PCGameKey
        u*: PCGameKey
        v*: PCGameKey
        w*: PCGameKey
        x*: PCGameKey
        y*: PCGameKey
        z*: PCGameKey
        ZERO*: PCGameKey
        ONE*: PCGameKey
        TWO*: PCGameKey
        THREE*: PCGameKey
        FOUR*: PCGameKey
        FIVE*: PCGameKey
        SIX*: PCGameKey
        SEVEN*: PCGameKey
        EIGHT*: PCGameKey
        NINE*: PCGameKey
        DPAD_UP*: PCGameKey
        DPAD_DOWN*: PCGameKey
        DPAD_LEFT*: PCGameKey
        DPAD_RIGHT*: PCGameKey
        DPAD_UP2*: PCGameKey
        DPAD_DOWN2*: PCGameKey
        DPAD_LEFT2*: PCGameKey
        DPAD_RIGHT2*: PCGameKey
        COMMA*: PCGameKey
        SPACE*: PCGameKey
        DEL*: PCGameKey
        STAR*: PCGameKey
        QUESTION*: PCGameKey
        PERIOD*: PCGameKey
        ESCAPE*: PCGameKey
        BACK_SPACE*: PCGameKey

proc newPCKeyFactory*(): PCKeyFactory
proc getInstance*(t: typedesc[PCKeyFactory]): PCKeyFactory {.discardable.}
method isSubmission*(this: PCKeyFactory, input: Input): bool {.base, discardable.}
method isDelete*(this: PCKeyFactory, input: Input): bool {.base, discardable.}
method isBackSpace*(this: PCKeyFactory, input: Input): bool {.base, discardable.}
method isUp*(this: PCKeyFactory, input: Input): bool {.base, discardable.}
method isDown*(this: PCKeyFactory, input: Input): bool {.base, discardable.}
method isLeft*(this: PCKeyFactory, input: Input): bool {.base, discardable.}
method isRight*(this: PCKeyFactory, input: Input): bool {.base, discardable.}
method isEnter*(this: PCKeyFactory, input: Input): bool {.base, discardable.}
import org/allbinary/math/PositionStrings as PositionStringsModule
export PositionStringsModule
import org/allbinary/string/CommonPhoneStrings as CommonPhoneStringsModule
export CommonPhoneStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var PCKeyFactory_SINGLETONValue: PCKeyFactory
var PCKeyFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[PCKeyFactory]): PCKeyFactory =
    if not PCKeyFactory_SINGLETONSet:
        PCKeyFactory_SINGLETONSet = true
        PCKeyFactory_SINGLETONValue = newPCKeyFactory()
    PCKeyFactory_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsPCKeyFactory(this: PCKeyFactory) =
    this.keyEventWrapper = ABKeyEventWrapper.getInstance()
    this.UNKNOWN = newPCGameKey(this.keyEventWrapper.VK_UNDEFINED, "UNKNOWN")
    this.ENTER = newPCGameKey(5, "Enter")
    this.U_A = newPCGameKey(this.keyEventWrapper.VK_A, "A")
    this.U_B = newPCGameKey(this.keyEventWrapper.VK_B, "B")
    this.U_C = newPCGameKey(this.keyEventWrapper.VK_C, "C")
    this.U_D = newPCGameKey(this.keyEventWrapper.VK_D, "D")
    this.U_E = newPCGameKey(this.keyEventWrapper.VK_E, "E")
    this.U_F = newPCGameKey(this.keyEventWrapper.VK_F, "F")
    this.U_G = newPCGameKey(this.keyEventWrapper.VK_G, "G")
    this.U_H = newPCGameKey(this.keyEventWrapper.VK_H, "H")
    this.U_I = newPCGameKey(this.keyEventWrapper.VK_I, "I")
    this.U_J = newPCGameKey(this.keyEventWrapper.VK_J, "J")
    this.U_K = newPCGameKey(this.keyEventWrapper.VK_K, "K")
    this.U_L = newPCGameKey(this.keyEventWrapper.VK_L, "L")
    this.U_M = newPCGameKey(this.keyEventWrapper.VK_M, "M")
    this.U_N = newPCGameKey(this.keyEventWrapper.VK_N, "N")
    this.U_O = newPCGameKey(this.keyEventWrapper.VK_O, "O")
    this.U_P = newPCGameKey(this.keyEventWrapper.VK_P, "P")
    this.U_Q = newPCGameKey(this.keyEventWrapper.VK_Q, "Q")
    this.U_R = newPCGameKey(this.keyEventWrapper.VK_R, "R")
    this.U_S = newPCGameKey(this.keyEventWrapper.VK_S, "S")
    this.U_T = newPCGameKey(this.keyEventWrapper.VK_T, "T")
    this.U_U = newPCGameKey(this.keyEventWrapper.VK_U, "U")
    this.U_V = newPCGameKey(this.keyEventWrapper.VK_V, "V")
    this.U_W = newPCGameKey(this.keyEventWrapper.VK_W, "W")
    this.U_X = newPCGameKey(this.keyEventWrapper.VK_X, "X")
    this.U_Y = newPCGameKey(this.keyEventWrapper.VK_Y, "Y")
    this.U_Z = newPCGameKey(this.keyEventWrapper.VK_Z, "Z")
    this.a = newPCGameKey(97, "a")
    this.b = newPCGameKey(98, "b")
    this.c = newPCGameKey(99, "c")
    this.d = newPCGameKey(100, "d")
    this.e = newPCGameKey(101, "e")
    this.f = newPCGameKey(102, "f")
    this.g = newPCGameKey(103, "g")
    this.h = newPCGameKey(104, "h")
    this.i = newPCGameKey(105, "i")
    this.j = newPCGameKey(106, "j")
    this.k = newPCGameKey(107, "k")
    this.l = newPCGameKey(108, "l")
    this.m = newPCGameKey(109, "m")
    this.n = newPCGameKey(110, "n")
    this.o = newPCGameKey(111, "o")
    this.p = newPCGameKey(112, "p")
    this.q = newPCGameKey(113, "q")
    this.r = newPCGameKey(114, "r")
    this.s = newPCGameKey(115, "s")
    this.t = newPCGameKey(116, "t")
    this.u = newPCGameKey(117, "u")
    this.v = newPCGameKey(118, "v")
    this.w = newPCGameKey(119, "w")
    this.x = newPCGameKey(120, PositionStrings.getInstance().X)
    this.y = newPCGameKey(121, PositionStrings.getInstance().Y)
    this.z = newPCGameKey(122, "z")
    this.ZERO = newPCGameKey(this.keyEventWrapper.VK_0, CommonPhoneStrings.getInstance().ZERO)
    this.ONE = newPCGameKey(this.keyEventWrapper.VK_1, CommonPhoneStrings.getInstance().ONE)
    this.TWO = newPCGameKey(this.keyEventWrapper.VK_2, CommonPhoneStrings.getInstance().TWO)
    this.THREE = newPCGameKey(this.keyEventWrapper.VK_3, CommonPhoneStrings.getInstance().THREE)
    this.FOUR = newPCGameKey(this.keyEventWrapper.VK_4, CommonPhoneStrings.getInstance().FOUR)
    this.FIVE = newPCGameKey(this.keyEventWrapper.VK_5, CommonPhoneStrings.getInstance().FIVE)
    this.SIX = newPCGameKey(this.keyEventWrapper.VK_6, CommonPhoneStrings.getInstance().SIX)
    this.SEVEN = newPCGameKey(this.keyEventWrapper.VK_7, CommonPhoneStrings.getInstance().SEVEN)
    this.EIGHT = newPCGameKey(this.keyEventWrapper.VK_8, CommonPhoneStrings.getInstance().EIGHT)
    this.NINE = newPCGameKey(this.keyEventWrapper.VK_9, CommonPhoneStrings.getInstance().NINE)
    this.DPAD_UP = newPCGameKey(this.keyEventWrapper.VK_UP, CommonPhoneStrings.getInstance().UP)
    this.DPAD_DOWN = newPCGameKey(this.keyEventWrapper.VK_DOWN, CommonPhoneStrings.getInstance().DOWN)
    this.DPAD_LEFT = newPCGameKey(this.keyEventWrapper.VK_LEFT, CommonPhoneStrings.getInstance().LEFT)
    this.DPAD_RIGHT = newPCGameKey(this.keyEventWrapper.VK_RIGHT, CommonPhoneStrings.getInstance().RIGHT)
    this.DPAD_UP2 = this.DPAD_UP
    this.DPAD_DOWN2 = this.DPAD_DOWN
    this.DPAD_LEFT2 = this.DPAD_LEFT
    this.DPAD_RIGHT2 = this.DPAD_RIGHT
    this.COMMA = newPCGameKey(this.keyEventWrapper.VK_COMMA, "COMMA")
    this.SPACE = newPCGameKey(this.keyEventWrapper.VK_SPACE, "SPACE")
    this.DEL = newPCGameKey(this.keyEventWrapper.VK_DELETE, "DEL")
    this.STAR = newPCGameKey(42, CommonPhoneStrings.getInstance().STAR)
    this.QUESTION = newPCGameKey(47, "?")
    this.PERIOD = newPCGameKey(this.keyEventWrapper.VK_PERIOD, CommonSeps.getInstance().PERIOD)
    this.ESCAPE = newPCGameKey(this.keyEventWrapper.VK_ESCAPE, "Esc")
    this.BACK_SPACE = newPCGameKey(this.keyEventWrapper.VK_BACK_SPACE, "Backspace")
    discard

proc initPCKeyFactory*(this: PCKeyFactory) =
    this.initFieldsPCKeyFactory()

proc newPCKeyFactory*(): PCKeyFactory =
    result = PCKeyFactory()
    initPCKeyFactory(result)

proc getInstance*(t: typedesc[PCKeyFactory]): PCKeyFactory {.discardable.} =
        return PCKeyFactory.SINGLETON

method isSubmission*(this: PCKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.ENTER)):
            return true
        return false

method isDelete*(this: PCKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.DEL)):
            return true
        return false

method isBackSpace*(this: PCKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.BACK_SPACE)):
            return true
        return false

method isUp*(this: PCKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.DPAD_UP)) or (jSame(input, this.DPAD_UP2)):
            return true
        return false

method isDown*(this: PCKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.DPAD_DOWN)) or (jSame(input, this.DPAD_DOWN2)):
            return true
        return false

method isLeft*(this: PCKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.DPAD_LEFT)) or (jSame(input, this.DPAD_LEFT2)):
            return true
        return false

method isRight*(this: PCKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.DPAD_RIGHT)) or (jSame(input, this.DPAD_RIGHT2)):
            return true
        return false

method isEnter*(this: PCKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.ENTER)):
            return true
        return false

