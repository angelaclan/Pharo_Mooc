Class {
	#name : #Basket,
	#superclass : #Object,
	#instVars : [
		'products'
	],
	#category : #ExerciseWithPablo
}

{ #category : #adding }
Basket >> addProduct: aProduct [
	products add: aProduct
]

{ #category : #initialize }
Basket >> initialize [
	super initialize.
	products := OrderedCollection new
]

{ #category : #accessing }
Basket >> total [

|total|
	total := 0.
	products do: [ :product | total := total + product price ].
	^ total
]
