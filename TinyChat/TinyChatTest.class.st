Class {
	#name : #TinyChatTest,
	#superclass : #TestCase,
	#category : #TinyChat
}

{ #category : #tests }
TinyChatTest >> testMessageIsInTheRightFormate [
	| text |
	text := TCMessage fromString:'angela>lunch time!'.
	self assert: text printString equals: ('angela>lunch time!' , String crlf)
]

{ #category : #tests }
TinyChatTest >> testMessageIsNotInTheRightFormate [

	self should: [TCMessage fromString:'angelalunch time!'] raise: Error.

]

{ #category : #tests }
TinyChatTest >> testPrintStringIsWorking [
	| sender text message |
	sender := 'angela'.
	text := 'lunch time!'.
	message := TCMessage from: sender text: text.
	self assert: message printString equals: ('angela>lunch time!' , String crlf)
]
