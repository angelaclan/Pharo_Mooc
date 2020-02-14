Class {
	#name : #TD1,
	#superclass : #Object,
	#category : #ExerciseWithCaro
}

{ #category : #'as yet unclassified' }
TD1 class >> assidu: assidu travailleur: travailleur revise: revise [
	^ (assidu or: travailleur) or: revise
]

{ #category : #'as yet unclassified' }
TD1 class >> assiduEnCours: assidu travailleurEnTD: travailleur reviseRegulierement: revise [
	^ (assidu or: travailleur) or: revise
]

{ #category : #'as yet unclassified' }
TD1 class >> index: n withIndex: m [
	| anArray number1 number2 sum |
	number1 := anArray at: n.
	number2 := anArray at: m.
	sum := number1 * number2
]

{ #category : #'as yet unclassified' }
TD1 class >> index: n withIndex: m inArray: anArray [
	| position1 position2 newArray sum |
	position1 := anArray at: n.
	position2 := anArray at: m.
	newArray := position1 to: position2.
	sum := 1.
	newArray do: [ :number | sum := sum * number ].
	^ sum
]

{ #category : #'as yet unclassified' }
TD1 class >> number: x power: n [

	| sum |
	sum := 1.
	n timesRepeat: [ sum := sum * x ].
	^ sum
]

{ #category : #'as yet unclassified' }
TD1 class >> perfectNumber: aNumber [
	| sumD |
	sumD := 0.
	(1 to: (aNumber-1)) do: [ :i | aNumber \\ i = 0
				ifTrue: [ sumD := sumD + i ] ].
	sumD = aNumber 
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ]
]

{ #category : #'as yet unclassified' }
TD1 class >> sumInArray: anArray [

	| sum |
	sum := 0.
	anArray do:  [ :number | sum := sum + number].
	^ sum
]

{ #category : #'as yet unclassified' }
TD1 class >> swap: i with: j inArray: anArray [
	
	| temp |
	temp := anArray at: i.
	anArray at: i put: (anArray at: j).
	anArray at: j put: temp .
	^ anArray
]

{ #category : #'as yet unclassified' }
TD1 class >> value: aNumber [
	aNumber > 0
		ifTrue: [ ^ aNumber ]
		ifFalse: [ ^ aNumber * -1 ] 
]
