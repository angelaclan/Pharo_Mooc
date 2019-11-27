Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testAlternateClassCreation [ 

	
	self assert: (( Counter withValue: 19 ) increment ; count) = 20.
]

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [

	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7.
	self assert: c count = 7
]

{ #category : #tests }
CounterTest >> testDecrement [

	| c |
	c := Counter new.
	c count: 2.
	c decrement ; decrement.
	self assert: c count = 0
]

{ #category : #tests }
CounterTest >> testIncrement [

	| c |
	c := Counter new.
	c count: 2.
	c decrement ; decrement.
	self assert: c count = 0
]

{ #category : #tests }
CounterTest >> testValueAtCreationTimeIsZero [

	self assert: Counter new count = 0
]
