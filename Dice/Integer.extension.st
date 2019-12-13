Extension { #name : #Integer }

{ #category : #'*Dice' }
Integer >> D10 [

 ^ self D: 10


]

{ #category : #'*Dice' }
Integer >> D4 [

 ^ self D: 4


]

{ #category : #'*Dice' }
Integer >> D6 [ 

| handle |
handle := DiceHandle new.
self timesRepeat: [ handle addDie: (Die faces: 6) ].
^ handle
]

{ #category : #'*Dice' }
Integer >> D: aNumberOfFaces [

| handle |
handle := DiceHandle new.
self timesRepeat: [ handle addDie: (Die faces: aNumberOfFaces) ].
^ handle
]
