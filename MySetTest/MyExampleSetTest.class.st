Class {
	#name : #MyExampleSetTest,
	#superclass : #TestCase,
	#instVars : [
		'empt',
		'ful'
	],
	#category : #MySetTest
}

{ #category : #tests }
MyExampleSetTest >> setUp [ 

	empt := Set new.
	ful := Set with: 5 with: 6
]

{ #category : #tests }
MyExampleSetTest >> testIllegal [ 

	
	self should: [ empt at: 5 ] raise: Error.
	self should: [ empt at: 5 put: #zork ] raise: Error
]

{ #category : #tests }
MyExampleSetTest >> testIncludes [


self assert: (ful includes: 5).
self assert: (ful includes: 6)
]

{ #category : #tests }
MyExampleSetTest >> testOccurrences [ 

	self assert: ( empt occurrencesOf: 0 ) equals: 0.
	self assert: ( ful occurrencesOf: 5 ) equals: 1.
	ful add: 5.
	self assert: ( ful occurrencesOf: 5 ) equals: 1
]

{ #category : #tests }
MyExampleSetTest >> testRemove [ 

	ful remove: 5.
	self assert: ( ful includes: 6 ).
	self deny: ( ful includes: 5 ) 
]
