Class {
	#name : #LinkList,
	#superclass : #Object,
	#instVars : [
		'head'
	],
	#category : #ExerciseWithAnne
}

{ #category : #adding }
LinkList >> add: aNumber [
	| aNode |
	aNode := Node new.
	aNode value: aNumber.
	aNode next: nil.
	self head: aNode
]

{ #category : #accessing }
LinkList >> head [
	^ head
]

{ #category : #accessing }
LinkList >> head: aNode [
	head := aNode
]

{ #category : #initialization }
LinkList >> initialize [
	super initialize 
	head: nil
]
