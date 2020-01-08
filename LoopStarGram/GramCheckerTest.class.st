Class {
	#name : #GramCheckerTest,
	#superclass : #TestCase,
	#category : #LoopStarGram
}

{ #category : #tests }
GramCheckerTest >> testIsogramSetImplementation [

self assert: 'pharo' isIsogramSet.
self deny: 'phaoro' isIsogramSet
]
