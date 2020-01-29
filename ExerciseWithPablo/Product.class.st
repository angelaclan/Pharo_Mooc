Class {
	#name : #Product,
	#superclass : #Object,
	#instVars : [
		'name',
		'price'
	],
	#category : #ExerciseWithPablo
}

{ #category : #initialize }
Product >> initialize [ 
super initialize 

]

{ #category : #initialize }
Product >> name [
	^ name
]

{ #category : #initialize }
Product >> name: aName [
	name := aName
]

{ #category : #initialize }
Product >> price [
	^ price
]

{ #category : #initialize }
Product >> price: aNumber [
	price := aNumber
]
