Class {
	#name : #ChainedList,
	#superclass : #Object,
	#instVars : [
		'head'
	],
	#category : #ExerciseWithAnne
}

{ #category : #adding }
ChainedList >> addFirst: aNumber [
	| addedNode |
	addedNode := Node new.
	addedNode value: aNumber.
	addedNode next: head.
	self head: addedNode.
	"^ addedNode"
]

{ #category : #adding }
ChainedList >> addLast: aNumber [
	| lastNode newNode |
	newNode := Node new.
	newNode value: aNumber.
	
	head isNil 
		ifTrue: [ self addFirst: aNumber ]
		ifFalse: [ lastNode := self findLast.
			lastNode next: newNode ]
]

{ #category : #operation }
ChainedList >> find: aValue [
	| aNode foundNode |
	foundNode := nil.
	aNode := head.
	[ foundNode isNil and: [ aNode isNotNil ] ]
		whileTrue: [ ( aNode value = aValue )
				ifTrue: [ foundNode := aNode   ]
				ifFalse: [ aNode := aNode next ] ].
	^ foundNode
]

{ #category : #operation }
ChainedList >> findLast [
	| aNode |
	aNode := head.
	[ aNode isNotNil ]
		whileTrue: [ aNode isLast
				ifTrue: [ ^ aNode ]
				ifFalse: [ aNode := aNode next ] ].

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

{ #category : #removing }
ChainedList >> removeFirst [
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
