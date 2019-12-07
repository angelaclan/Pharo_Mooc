"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count

|c|
c := Counter new 
c increment increment.
c count = 2
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #'instance creation' }
Counter class >> withValue: aNumber [

| c |
c := self new.
c count: aNumber.
^ c
]

{ #category : #Accessing }
Counter >> count [ 
	^ count
]

{ #category : #Accessing }
Counter >> count: aNumber [
	 count := aNumber
]

{ #category : #operatoins }
Counter >> decrement [ 

self count:  self count - 1
]

{ #category : #operatoins }
Counter >> increment [ 

self count:  self count + 1
]

{ #category : #initialization }
Counter >> initialize [

	super initialize. 
	count := 0
]
