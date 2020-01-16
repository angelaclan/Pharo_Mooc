Class {
	#name : #TCMessage,
	#superclass : #Object,
	#instVars : [
		'sender',
		'text',
		'separator'
	],
	#category : #TinyChat
}

{ #category : #'instance creation' }
TCMessage class >> from: aSender text: aText [
	^ self new
		sender: aSender;
		text: aText;
		yourself
]

{ #category : #'instance creation' }
TCMessage class >> fromString: aString [
	^ self new
		fromString: aString;
		yourself
]

{ #category : #'instance creation' }
TCMessage >> fromString: aString [
	"Compose a message from a string into this form 'sender>message.' "

	| items |
	items := aString substrings: separator.
	self sender: items first.
	self text: items second
]

{ #category : #initalize }
TCMessage >> initialize [ 
	super initialize.
	separator := '>'
]

{ #category : #print }
TCMessage >> printOn: aStream [
	aStream
		nextPutAll: sender;
		nextPutAll: separator;
		nextPutAll: text;
		nextPutAll: String crlf
]

{ #category : #accessing }
TCMessage >> sender [ 
	^ sender
]

{ #category : #accessing }
TCMessage >> sender: anObject [
	sender := anObject
	
]

{ #category : #accessing }
TCMessage >> text [ 
	^ text
]

{ #category : #accessing }
TCMessage >> text: anObject [
	text := anObject
]
