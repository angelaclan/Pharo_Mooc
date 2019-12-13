Class {
	#name : #DiceHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #adding }
DiceHandle >> addDie: aDie [ 
	dice add: aDie 
]

{ #category : #diceNumber }
DiceHandle >> diceNumber [
	^ dice size
]

{ #category : #initialize }
DiceHandle >> initialize [ 

 super initialize.
 dice := OrderedCollection new
]

{ #category : #operation }
DiceHandle >> maxValue [

| res |
res := 0.
dice do: [ :each | res := res + each faces ].
^ res
]

{ #category : #operation }
DiceHandle >> roll [ 

| res |
res := 0.
dice do: [ :each | res := res + each roll ].
^ res
]
