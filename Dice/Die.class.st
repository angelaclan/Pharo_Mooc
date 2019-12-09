"
I am a simple die

To create a Die use
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
	"object is able to be instanced by class Die so it makes sense we installe it on class side"
	d := Die new.
	"Use the setter from instance side to define the faces a dice can have"
	d faces: anInterger.
	^ d
]

{ #category : #accesing }
Die >> faces [
	^ faces
]

{ #category : #accesing }
Die >> faces: anInteger [
 faces := anInteger
]

{ #category : #initalize }
Die >> initialize [ 

	super initialize.
	faces := 6
	
]

{ #category : #operatoins }
Die >> roll [
	
	^ faces atRandom
]
