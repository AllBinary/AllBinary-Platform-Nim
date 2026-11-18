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
import org/allbinary/game/input/PCGameKey as PCGameKeyModule
export PCGameKeyModule
import org/allbinary/game/input/Input as InputModule
export InputModule

type
    PCKeyFactory* = ref object of JObject
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
    this.UNKNOWN = newPCGameKey(254, "UNKNOWN")
    this.ENTER = newPCGameKey(13, "Enter")
    this.U_A = newPCGameKey(65, "A")
    this.U_B = newPCGameKey(66, "B")
    this.U_C = newPCGameKey(67, "C")
    this.U_D = newPCGameKey(68, "D")
    this.U_E = newPCGameKey(69, "E")
    this.U_F = newPCGameKey(70, "F")
    this.U_G = newPCGameKey(71, "G")
    this.U_H = newPCGameKey(72, "H")
    this.U_I = newPCGameKey(73, "I")
    this.U_J = newPCGameKey(74, "J")
    this.U_K = newPCGameKey(75, "K")
    this.U_L = newPCGameKey(76, "L")
    this.U_M = newPCGameKey(77, "M")
    this.U_N = newPCGameKey(78, "N")
    this.U_O = newPCGameKey(79, "O")
    this.U_P = newPCGameKey(80, "P")
    this.U_Q = newPCGameKey(81, "Q")
    this.U_R = newPCGameKey(82, "R")
    this.U_S = newPCGameKey(83, "S")
    this.U_T = newPCGameKey(84, "T")
    this.U_U = newPCGameKey(85, "U")
    this.U_V = newPCGameKey(86, "V")
    this.U_W = newPCGameKey(87, "W")
    this.U_X = newPCGameKey(88, "X")
    this.U_Y = newPCGameKey(89, "Y")
    this.U_Z = newPCGameKey(90, "Z")
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
    this.ZERO = newPCGameKey(48, CommonPhoneStrings.getInstance().ZERO)
    this.ONE = newPCGameKey(49, CommonPhoneStrings.getInstance().ONE)
    this.TWO = newPCGameKey(50, CommonPhoneStrings.getInstance().TWO)
    this.THREE = newPCGameKey(51, CommonPhoneStrings.getInstance().THREE)
    this.FOUR = newPCGameKey(52, CommonPhoneStrings.getInstance().FOUR)
    this.FIVE = newPCGameKey(53, CommonPhoneStrings.getInstance().FIVE)
    this.SIX = newPCGameKey(54, CommonPhoneStrings.getInstance().SIX)
    this.SEVEN = newPCGameKey(55, CommonPhoneStrings.getInstance().SEVEN)
    this.EIGHT = newPCGameKey(56, CommonPhoneStrings.getInstance().EIGHT)
    this.NINE = newPCGameKey(57, CommonPhoneStrings.getInstance().NINE)
    this.DPAD_UP = newPCGameKey(38, CommonPhoneStrings.getInstance().UP)
    this.DPAD_DOWN = newPCGameKey(40, CommonPhoneStrings.getInstance().DOWN)
    this.DPAD_LEFT = newPCGameKey(37, CommonPhoneStrings.getInstance().LEFT)
    this.DPAD_RIGHT = newPCGameKey(39, CommonPhoneStrings.getInstance().RIGHT)
    this.DPAD_UP2 = this.DPAD_UP
    this.DPAD_DOWN2 = this.DPAD_DOWN
    this.DPAD_LEFT2 = this.DPAD_LEFT
    this.DPAD_RIGHT2 = this.DPAD_RIGHT
    this.COMMA = newPCGameKey(44, "COMMA")
    this.SPACE = newPCGameKey(32, "SPACE")
    this.DEL = newPCGameKey(46, "DEL")
    this.STAR = newPCGameKey(42, CommonPhoneStrings.getInstance().STAR)
    this.QUESTION = newPCGameKey(47, "?")
    this.PERIOD = newPCGameKey(46, CommonSeps.getInstance().PERIOD)
    this.ESCAPE = newPCGameKey(27, "Esc")
    this.BACK_SPACE = newPCGameKey(8, "Backspace")
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

