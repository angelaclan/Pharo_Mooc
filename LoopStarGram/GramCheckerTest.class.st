Class {
	#name : #GramCheckerTest,
	#superclass : #TestCase,
	#category : #LoopStarGram
}

{ #category : #tests }
GramCheckerTest >> isograms [

	^ #('abc' 'pharo' 'pablo' 'hey' 'setup')
]

{ #category : #tests }
GramCheckerTest >> notIsograms [

	^ #('coucou' 'settle' 'poo' 'class' 'idiot')
]

{ #category : #tests }
GramCheckerTest >> testAllIsogramsSet [

	self isograms do: [ :word | self assert: word isIsogramSet ]
]

{ #category : #tests }
GramCheckerTest >> testAllIsogramsSetImplementation [

	self isograms do: [ :word | self assert: word isIsogramSet ].
	self notIsograms do: [ :word | self deny: word isIsogramSet ]
]

{ #category : #tests }
GramCheckerTest >> testDetectAllMissingLetter [

self assert: ('The quick brown fox jumps over the lzy do' detectAllMissingLetterFor: 'abcdefghijklmnopqrstuvwxyz') equals: #($a $g) asSet.
self assert: ('les pou papas e les pou pas papas' detectAllMissingLetterFor: 'apouxetl') equals: (Set withAll: #($x $t)).
]

{ #category : #tests }
GramCheckerTest >> testDetectFirstMissingLetter [

self assert: ('The quick brown fox jumps over the lzy dog' detectFirstMissingLetterFor: 'abcdefghijklmnopqrstuvwxyz') equals: $a.
self assert: ('les pou papas et les pou pas papas' detectFirstMissingLetterFor: 'apouxetl') equals: $x.
]

{ #category : #tests }
GramCheckerTest >> testIsEnglishPangram [
	
	self assert: 'The quick brown fox jumps over the lazy dog' isEnglishPangram.
	self deny: 'The quick brown fox jumps over the dog' isEnglishPangram
]

{ #category : #tests }
GramCheckerTest >> testIsPangramIn [

self assert: ('The quick brown fox jumps over the lazy dog' isPangramIn: 'abcdefghijklmnopqrstuvwxyz').
self assert: ('les poux papas et les poux pas papas' isPangramIn: 'apouxetl').
]

{ #category : #tests }
GramCheckerTest >> testIsogramSetImplementation [

	self assert: 'pharo' isIsogramSet.
	self deny: 'phaoro' isIsogramSet
]
