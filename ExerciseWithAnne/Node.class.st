Class {
	#name : #Node,
	#superclass : #Object,
	#instVars : [
		'value',
		'next'
	],
	#category : #ExerciseWithAnne
}

{ #category : #testing }
Node >> isLast [

	^ self next isNil.
]

{ #category : #testing }
Node >> isNode [
	^ true
]

{ #category : #testing }
Node >> isSecondLast [

	^ self next isLast.
]

{ #category : #accessing }
Node >> next [
	^ next
]

{ #category : #accessing }
Node >> next: aNode [ 
  next := aNode
]

{ #category : #evaluating }
Node >> value [
	^ value
]

{ #category : #evaluating }
Node >> value: anInteger [
	value := anInteger
]
