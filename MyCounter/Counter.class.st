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

{ #category : #acccessing }
Counter class >> count:aNumber [
	| count |
	count := aNumber
	
]

{ #category : #acccessing }
Counter >> count [
	^ count
]

{ #category : #acccessing }
Counter >> count: aNumber [
	count:= aNumber
]
