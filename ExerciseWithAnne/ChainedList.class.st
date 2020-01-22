Class {
	#name : #ChainedList,
	#superclass : #Object,
	#instVars : [
		'head'
	],
	#category : #ExerciseWithAnne
}

{ #category : #operation }
ChainedList >> add: aNumber [
	| addedNode |
	addedNode := Node new.
	addedNode value: aNumber.
	addedNode next: head.
	self head: addedNode.
	"^ addedNode"
]

{ #category : #accessing }
ChainedList >> head [
	^ head
]

{ #category : #accessing }
ChainedList >> head: aNode [
	head := aNode
]

{ #category : #initialize }
ChainedList >> initialize [
	super initialize.
	head := nil.
]

{ #category : #operation }
ChainedList >> remove [
	| aNode |
	aNode := head next.
	self head: aNode
]

{ #category : #accessing }
ChainedList >> size [
	| counter aNode |
	counter := 0.
	aNode := head.
	[ aNode isNotNil ]
		whileTrue: [ counter := counter + 1.
			aNode := aNode next ].
	^ counter
]
