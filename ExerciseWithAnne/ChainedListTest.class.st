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
	cl add: 'hola'.
	
	self assert: cl head isNode.
	self assert: cl head value equals: 'hola'
]

{ #category : #tests }
ChainedListTest >> testAddAnValue4 [
	cl add: 4.
	self assert: cl head equals: Node.
	self assert: cl head value equals: 4
]

{ #category : #tests }
ChainedListTest >> testAddAnValue4SizeIsOne [
	cl add: 4.
	self assert: cl size equals: 1
]

{ #category : #tests }
ChainedListTest >> testAddTwoValuesSizeIsTwo [
	cl add: 4.
	cl add: 5.
	
	self assert: cl size equals: 2
]

{ #category : #tests }
ChainedListTest >> testIfChainedListIsEmptyAtStart [
	
	^ self assert: cl head equals: nil
]

{ #category : #tests }
ChainedListTest >> testIfEmptySizeIsZero [

	self assert: cl size equals: 0
]

{ #category : #tests }
ChainedListTest >> testIfNodeIsRemoved [
	cl add: 4.
	cl remove. 
	self assert: cl size equals: 0
]
