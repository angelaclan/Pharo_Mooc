Class {
	#name : #Nodde,
	#superclass : #Object,
	#instVars : [
		'value',
		'next'
	],
	#category : #ExerciseWithAnne
}

{ #category : #evaluating }
Nodde >> next [
	^ next
]

{ #category : #evaluating }
Nodde >> next: aNode [
	next := aNode
]

{ #category : #evaluating }
Nodde >> value [
	^ value
]

{ #category : #evaluating }
Nodde >> value: aNumber [
	value := Number
]
