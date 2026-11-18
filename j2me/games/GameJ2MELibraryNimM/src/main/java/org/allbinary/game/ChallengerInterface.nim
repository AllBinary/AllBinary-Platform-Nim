#[
  
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
]#
# Generated Code Do Not Modify
# package org.allbinary.game

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ChallengerInterface* = ref object of JObject


method setWinner*(this: ChallengerInterface, isWinner: bool) {.base.} =
        raise newJException("AbstractMethodError", "setWinner")

