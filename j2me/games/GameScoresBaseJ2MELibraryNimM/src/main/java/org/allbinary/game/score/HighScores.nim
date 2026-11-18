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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/score/HighScoresInterface as HighScoresInterfaceModule
export HighScoresInterfaceModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule

type
    HighScores* = ref object of HighScoresInterface
        orderedHighScoresList*: BasicArrayList
        name*: string
        heading*: string
        columnOneHeading*: string
        columnTwoHeading*: string

proc newHighScores*(name: string, heading: string, columnTwoHeading: string): HighScores
proc initHighScores*(this: HighScores, name: string, heading: string, columnTwoHeading: string)
method setList*(this: HighScores, orderedHighScoresList: BasicArrayList) {.base.}
method getList*(this: HighScores): BasicArrayList {.discardable.}
method getName*(this: HighScores): string {.base, discardable.}
method getTotal*(this: HighScores): int32 {.discardable.}
method addHighScore*(this: HighScores, newHighScore: HighScore)
method getHeading*(this: HighScores): string {.base, discardable.}
method getColumnOneHeading*(this: HighScores): string {.base, discardable.}
method getColumnTwoHeading*(this: HighScores): string {.base, discardable.}
method isBestScore*(this: HighScores, newHighScore: HighScore): bool {.discardable.}
method toString*(this: HighScores): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsHighScores(this: HighScores) =
    this.orderedHighScoresList = newBasicArrayListD()
    
    
    this.columnOneHeading = "Name"
    
    discard

proc initHighScores*(this: HighScores, name: string, heading: string, columnTwoHeading: string) =
        this.initFieldsHighScores()
        this.name = name
        this.heading = heading
        this.columnTwoHeading = columnTwoHeading

proc newHighScores*(name: string, heading: string, columnTwoHeading: string): HighScores =
    result = HighScores()
    initHighScores(result, name, heading, columnTwoHeading)

method setList*(this: HighScores, orderedHighScoresList: BasicArrayList) {.base.} =
        this.orderedHighScoresList = orderedHighScoresList

method getList*(this: HighScores): BasicArrayList {.discardable.} =
        return this.orderedHighScoresList

method getName*(this: HighScores): string {.base, discardable.} =
        return this.name

method getTotal*(this: HighScores): int32 {.discardable.} =
        return this.getList().size()

method addHighScore*(this: HighScores, newHighScore: HighScore) =
        this.orderedHighScoresList.add(newHighScore)

method getHeading*(this: HighScores): string {.base, discardable.} =
        return this.heading

method getColumnOneHeading*(this: HighScores): string {.base, discardable.} =
        return this.columnOneHeading

method getColumnTwoHeading*(this: HighScores): string {.base, discardable.} =
        return this.columnTwoHeading

method isBestScore*(this: HighScores, newHighScore: HighScore): bool {.discardable.} =
        return false

method toString*(this: HighScores): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("HighScores: ")
        stringBuffer.append(this.heading)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(this.orderedHighScoresList.size())
        return stringBuffer.toString()

