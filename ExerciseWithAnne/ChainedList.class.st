Class {
	#name : #ChainedList,
	#superclass : #Object,
	#instVars : [
		'head'
	],
	#category : #ExerciseWithAnne
}

{ #category : #operation }
ChainedList >> addByOrder: aNumber [
	| aNode |
	aNode := Node new.
	aNode value: aNumber.
	head isNil
		ifTrue: [ self addFirst: aNumber ]
		ifFalse: [ aNode value > head value
				ifTrue: [self addLast: aNumber ]
				ifFalse: [ self addFirst: aNumber ] ]
]

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

{ #category : #operation }
ChainedList >> findPreviousFrom: nodeToRemove [
	| aNode previousNode |
	aNode := head.
	previousNode := nil.
	[ aNode isNotNil ]
		whileTrue: [ aNode next isNotNil 
			ifTrue: [ previousNode := aNode.
				aNode := nodeToRemove] 
			ifFalse: [ ^ previousNode 	] ]
			
		
]

{ #category : #operation }
ChainedList >> findSecondLast [
	| aNode secondLast |
	aNode := head.
	secondLast := nil.
	[ aNode isNotNil ]
		whileTrue: [ aNode isLast 
				ifTrue: [ ^ secondLast ]
				ifFalse: [ secondLast := aNode.
					aNode := aNode next ] ].

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
ChainedList >> removeByValue: aNumber [
	| removedNode previousNode nextNode|
	removedNode := self find: aNumber.
	previousNode := self findPreviousFrom: removedNode.
	nextNode := removedNode next.
	previousNode next: nextNode 
]

{ #category : #removing }
ChainedList >> removeFirst [
	| aNode |
	aNode := head next.
	self head: aNode
]

{ #category : #removing }
ChainedList >> removeLast [
	| secondLast  |
	(self size < 2) ifTrue: [ self head: nil ]  
	ifFalse:
	[secondLast := self findSecondLast.
	secondLast next: nil]
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
