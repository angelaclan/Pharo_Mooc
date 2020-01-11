Class {
	#name : #Wallet,
	#superclass : #Object,
	#instVars : [
		'bagCoins'
	],
	#category : #Wallet
}

{ #category : #operations }
Wallet >> add: anAmount coinsOfValue: aValue [
	"add to the receiver, an integer times a coin of value aNumber"
	bagCoins add: aValue withOccurrences: anAmount
	
	
]

{ #category : #operations }
Wallet >> coinsOfValue: aValue [

	^ bagCoins occurrencesOf: aValue
]

{ #category : #initialize }
Wallet >> initialize [ 
	bagCoins := Bag new
]

{ #category : #accessing }
Wallet >> money [
	| money |
	money := 0.
	bagCoins doWithOccurrences: [ :aValue :aQuantity | money := money + (aValue * aQuantity) ].
	^ money.
]
