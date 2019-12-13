"
I am simple dice

To create a die use 
Die faces: 20
"
Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'instance creation' }
Die class >> faces: anInterger [

| d |
d := Die new.
d faces: anInterger.
^d
]

{ #category : #accessing }
Die >> faces [
 ^ faces
]

{ #category : #accessing }
Die >> faces: anInterger [
	faces:= anInterger.
]

{ #category : #initialization }
Die >> initialize [ 

	super initialize.
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString , ') '
]

{ #category : #operation }
Die >> roll [
^ faces atRandom
]
