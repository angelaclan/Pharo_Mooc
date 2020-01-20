Class {
	#name : #TinyChat,
	#superclass : #Object,
	#instVars : [
		'url',
		'login',
		'exit',
		'messages',
		'console',
		'lastMesageIndex'
	],
	#category : #'TinyChat-Client'
}

{ #category : #convenience }
TinyChat >> cmdLastMessageID [
^ self command: '/messages/count'
]

{ #category : #convenience }
TinyChat >> cmdMessageFromLastIndexToEnd [
"Return the server messages from my current last index to the last one on the server."
^ self command: '/messages' argument: lastMesageIndex 
]

{ #category : #convenience }
TinyChat >> cmdNewMessage [
^ self command: '/messages/add'
]

{ #category : #convenience }
TinyChat >> command: aPath [
	^ '{1}{2}' format: { url. aPath }
]

{ #category : #convenience }
TinyChat >> command: aPath argument: anArgument [
	^ '{1}{2}/{3}' format: { url . aPath . anArgument asString }
]

{ #category : #initialize }
TinyChat >> initialize [
	super initialize.
	exit := false.
	lastMesageIndex := 0.
	messages := OrderedCollection new
]

{ #category : #'as yet unclassified' }
TinyChat >> readLastMessageID [
	| id |
	id := (ZnClient new
		url: self cmdLastMessageID;
		get) asInteger.
	id = 0
		ifTrue: [ id := 1 ].
	^ id
]
