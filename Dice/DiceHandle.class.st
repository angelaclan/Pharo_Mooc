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
