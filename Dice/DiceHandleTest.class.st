Class {
	#name : #DiceHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DiceHandleTest >> testAdding [

 | h |

h := DiceHandle new
addDie: (Die faces: 6);
addDie: (Die faces: 1); 
yourself.
self assert: h diceNumber equals: 2
]

{ #category : #tests }
DiceHandleTest >> testAddingSameNumberDieIsOk [

 | h |

h := DiceHandle new
addDie: (Die faces: 6);
addDie: (Die faces: 6); 
yourself.
self assert: h diceNumber equals: 2
]
