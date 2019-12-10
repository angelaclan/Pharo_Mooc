Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testBetterCreationInterfaces [

self shouldnt: [Die faces: 20] raise: Error 
]

{ #category : #tests }
DieTest >> testInitializeIsOk [

self shouldnt: [Die new] raise: Error 
]

{ #category : #tests }
DieTest >> testRolling [

| d |
d:= Die new.
1000 timesRepeat: 
	[ self assert: (d roll between: 1 and: 6 )]

]
