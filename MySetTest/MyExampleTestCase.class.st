Class {
	#name : #MyExampleTestCase,
	#superclass : #TestCase,
	#instVars : [
		'empty',
		'full'
	],
	#category : #MySetTest
}

{ #category : #tests }
MyExampleTestCase >> setUp [ 

	empty := Set new.
	full := Set with: 5 with: 6
]

{ #category : #tests }
MyExampleTestCase >> testIllegal [ 


	self should: [ empty at: 5 ] raise: Error.
	self should: [ empty at: 5 put: #zork ] raise: Error.
]

{ #category : #tests }
MyExampleTestCase >> testIncludes [ 

	
	self assert: ( full includes: 5 ).
	self assert: ( full includes: 6 )
]

{ #category : #tests }
MyExampleTestCase >> testOccurences [ 


	self assert: ( empty occurrencesOf: 0 ) equals: 0.
	self assert: ( full occurrencesOf: 5 ) equals: 1.
	full add: 5.
	self assert: ( full occurrencesOf: 5 ) equals: 1
]

{ #category : #tests }
MyExampleTestCase >> testRemove [ 
	
	
	full remove: 5.
	self assert: ( full includes: 6 ).
	self deny: ( full includes: 5 )
]
