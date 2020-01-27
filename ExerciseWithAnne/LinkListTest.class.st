Class {
	#name : #LinkListTest,
	#superclass : #TestCase,
	#instVars : [
		'list'
	],
	#category : #ExerciseWithAnne
}

{ #category : #tests }
LinkListTest >> setUp [

	list := LinkList new
]

{ #category : #tests }
LinkListTest >> testAddValueToList [

list add: 1.

self assert: list head value equals: 1.




]

{ #category : #tests }
LinkListTest >> testSizeOfList [
	list add: 1.
	list add: 8.
	list add: 6.
	list add: 4.
	self assert: list size equals: 4
]
