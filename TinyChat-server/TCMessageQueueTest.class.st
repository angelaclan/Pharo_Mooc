Class {
	#name : #TCMessageQueueTest,
	#superclass : #TestCase,
	#category : #'TinyChat-server'
}

{ #category : #tests }
TCMessageQueueTest >> testFormattedMessageFrom [


|tcmsg|

tcmsg := TCMessageQueue new.
tcmsg 
	add: 'angela>Lunch Time!';
	add: 'pablo>Lets Go!';
	add: 'guille>wait for me'.

self assert: (tcmsg formattedMessagesFrom: 2) equals: 'pablo>Lets Go!','guille>wait for me'
]

{ #category : #tests }
TCMessageQueueTest >> testIfMessageQueueIsEmpty [
	| messages |
	messages := TCMessageQueue new.
	self assert: messages size equals: 0
]

{ #category : #tests }
TCMessageQueueTest >> testIfMessagesCopyFromTheAccordingIndex [
	| tcMsg messages |
	tcMsg := TCMessageQueue new.
	tcMsg
		add: 'angela>Lunch Time!';
		add: 'pablo>Lets Go!';
		add: 'guille>wait for me'.
	messages := tcMsg listFrom:2.
	self
		assertCollection: messages
		hasSameElements: { 'pablo>Lets Go!' . 'guille>wait for me' }
]

{ #category : #tests }
TCMessageQueueTest >> testMessagesCount [
	| messages |
	messages := TCMessageQueue new.
	messages 
		add: 'angela>Lunch Time!';
		add: 'pablo>Lets Go!'.
		
	self assert: messages size equals:2
	
]
