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
addDie: (Die faces: 10); 
yourself.
self assert: h diceNumber equals: 2
]

{ #category : #tests }
DiceHandleTest >> testAddingHandles [

 | h |

h := 2 D6 + 3 D10.
self assert: h diceNumber equals: 5
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

{ #category : #tests }
DiceHandleTest >> testMaxValue [

 | h |

h := DiceHandle new
addDie: (Die faces: 6);
addDie: (Die faces: 10); 
yourself.
self assert: h maxValue equals: 16
]

{ #category : #tests }
DiceHandleTest >> testNewSyntex [

 | h |

h := 2 D6.	
self assert: h diceNumber equals: 2.
]

{ #category : #tests }
DiceHandleTest >> testRoll [

 | h |

h := DiceHandle new
addDie: (Die faces: 6);
addDie: (Die faces: 10); 
yourself.
1000 timesRepeat: [ 
self assert: (h roll between: 2 and: h maxValue)]
]
