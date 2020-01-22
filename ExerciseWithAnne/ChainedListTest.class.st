Class {
	#name : #ChainedListTest,
	#superclass : #TestCase,
	#instVars : [
		'cl'
	],
	#category : #ExerciseWithAnne
}

{ #category : #tests }
ChainedListTest >> setUp [
	
	cl := ChainedList new.
]

{ #category : #tests }
ChainedListTest >> testAddAnString [
	cl addFirst: 'hola'.
	
	self assert: cl head isNode.
	self assert: cl head value equals: 'hola'
]

{ #category : #tests }
ChainedListTest >> testAddAnValue4SizeIsOne [
	cl addFirst: 4.
	self assert: cl size equals: 1
]

{ #category : #tests }
ChainedListTest >> testAddAnValueFromHead [
	cl addFirst: 4.
	self assert: cl head value equals: 4
]

{ #category : #tests }
ChainedListTest >> testAddAnValueFromTail [
	cl addLast: 3.
	cl addLast: 2.
	cl addLast: 1.
	self assert: (cl find: 1) value equals: 1
]

{ #category : #tests }
ChainedListTest >> testAddTwoValuesSizeIsTwo [
	cl addFirst: 4.
	cl addFirst: 5.
	
	self assert: cl size equals: 2
]

{ #category : #tests }
ChainedListTest >> testFindFirstNumberIsBiggerThan [
	cl addFirst: 3.
	cl addFirst: 6.
	cl addFirst: 9.
	self assert: cl head value equals: 9

]

{ #category : #tests }
ChainedListTest >> testFindHead [
	cl addFirst: 3.
	cl addFirst: 6.
	cl addFirst: 9.
	self assert: (cl find: 9) equals: cl head.
	self assert: cl head value equals: 9

]

{ #category : #tests }
ChainedListTest >> testFindNoMatche [
	cl addFirst: 3.
	cl addFirst: 6.
	cl addFirst: 9.
	self assert: (cl find: 2) equals: nil

]

{ #category : #tests }
ChainedListTest >> testFindOtherThanHead [
	cl addFirst: 3.
	cl addFirst: 6.
	cl addFirst: 9.
	self assert: (cl find: 6) value equals: 6

]

{ #category : #tests }
ChainedListTest >> testIfChainedListIsEmptyAtStart [
	
	^ self assert: cl head equals: nil
]

{ #category : #tests }
ChainedListTest >> testIfEmptySizeIsZero [

	self assert: cl size equals: 0
]

{ #category : #'as yet unclassified' }
ChainedListTest >> testIfFirstNodeIsRemoved [
	cl addFirst: 4.
	cl removeFirst. 
	self assert: cl size equals: 0
]

{ #category : #'as yet unclassified' }
ChainedListTest >> testRemoveNode [
	cl addFirst: 4.
	cl addFirst: 5.
	cl removeFirst. 
	self assert: cl size equals: 1.
	self assert: cl head value equals: 4.
]
