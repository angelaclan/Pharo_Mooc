Class {
	#name : #Shop,
	#superclass : #Object,
	#instVars : [
		'allProducts'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #'ExerciseWithPablo-Shop'
}

{ #category : #accessing }
Shop class >> createShop [

	uniqueInstance := Shop new
]

{ #category : #accessing }
Shop class >> uniqueInstance [ 
	
	^ uniqueInstance 
]

{ #category : #initialization }
Shop >> addProduct: aProduct [

  allProducts add: aProduct 
]

{ #category : #initialization }
Shop >> initialize [ 

	super initialize.
	allProducts  := OrderedCollection new
]

{ #category : #accessing }
Shop >> products [
	
	^ allProducts 
]
