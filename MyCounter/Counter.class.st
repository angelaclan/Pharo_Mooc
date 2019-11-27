"
i'm a simple counter which supports incrementing and decrementing of a value

my API is
-increment decrement 
-count 

|c|
c:= Counter new.
C increment;increment 
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
Counter class >> withValue:  aNumber [

	| c |
	c := self new.
	c count: aNumber.
	^ c
]

{ #category : #acccessing }
Counter >> count [
	^ count
]

{ #category : #acccessing }
Counter >> count: aNumber [
	count:= aNumber
]

{ #category : #operations }
Counter >> decrement [ 
	self count: self count - 1
]

{ #category : #operations }
Counter >> increment [ 
	self count: self count + 1
]

{ #category : #initialization }
Counter >> initialize [ 

	super initialize.
	count:=0 
]

{ #category : #printing }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' with value: ', self count 
printString.
	aStream cr
]
