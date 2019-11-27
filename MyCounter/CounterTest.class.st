Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [

	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7.
	self assert: c count = 7
]
