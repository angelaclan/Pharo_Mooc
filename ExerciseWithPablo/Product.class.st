Class {
	#name : #Product,
	#superclass : #Object,
	#category : #ExerciseWithPablo
}

{ #category : #accessing }
Product >> image [
	^ image
]

{ #category : #accessing }
Product >> image: aLink [
	image := aLink
]

{ #category : #initialize }
Product >> initialize [ 
super initialize 

]

{ #category : #accessing }
Product >> name [
	^ name
]

{ #category : #accessing }
Product >> name: aName [
	name := aName
]

{ #category : #accessing }
Product >> price [
	^ price
]

{ #category : #accessing }
Product >> price: aNumber [
	price := aNumber
]

{ #category : #accessing }
Product >> weight [
	^ weight
]

{ #category : #accessing }
Product >> weight: aNumber [
	weight := aNumber
]
