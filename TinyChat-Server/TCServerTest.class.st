Class {
	#name : #TCServerTest,
	#superclass : #TestCase,
	#instVars : [
		'teapotServer',
		'messagesQueue',
		'server'
	],
	#category : #'TinyChat-server'
}

{ #category : #running }
TCServerTest >> setUp [ 
	
	super setUp.
	server := TCServer startOn: 9191.
]

{ #category : #running }
TCServerTest >> tearDown [
	
	server ifNotNil: [ server stop. server := nil].
	super tearDown.
	
]

{ #category : #running }
TCServerTest >> testANewServerDoesNotHaveMessages [

	self assert: server messageCount equals: 0
]

{ #category : #running }
TCServerTest >> testAddingAMessageIncreaseTheCountTo1 [

	| znRequest request |

	znRequest := (ZnClient new
		url: 'http://localhost:9191/messages/add';
		formAt: 'sender' put: 'angela';
		formAt: 'text' put: 'hey you') request.

	request := TeaRequest fromZnRequest: znRequest.

	server addMessage: request.
	self assert: server messageCount equals: 1.
]

{ #category : #tests }
TCServerTest >> testIfMessagesFromRequestIsEmpty [
	| znRequest request |
	request := TeaRequest fromZnRequest: znRequest.
	znRequest := (ZnClient new url: 'http://localhost:9191/messages/2')
		request.
	request := TeaRequest
		fromZnRequest: znRequest
		pathParams: {(#id -> 2)} asDictionary.
	self assert: (server messagesFrom: request) equals: ''
]

{ #category : #tests }
TCServerTest >> testIfMessagesFromRequestIsNotEmpty [
	| znRequest request |

	"First we will add a new message. So we create a fake request to server"
	znRequest := (ZnClient new
		url: 'http://localhost:9191/messages/add';
		formAt: 'sender' put: 'angela';
		formAt: 'text' put: 'hey you') request.

	request := TeaRequest fromZnRequest: znRequest.
	server addMessage: request.

	"We create a new fake request for getting the messages"
	znRequest := (ZnClient new
		url: 'http://localhost:9191/messages/1') request.
		
	request := TeaRequest fromZnRequest: znRequest pathParams: { #id -> 1 } asDictionary.
	
	self assert: (server messagesFrom: request) trim equals: 'angela>hey you'.
]

{ #category : #running }
TCServerTest >> testServerIsListeningInTestPort [

	self assert: server isRunning.
]
