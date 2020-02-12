Class {
	#name : #Basket,
	#superclass : #Object,
	#instVars : [
		'products',
		'basicDeliveryPrice',
		'extraDeliveryPrice',
		'deliveryPricePerKgOver10kg'
	],
	#category : #'ExerciseWithPablo-Basket'
}

{ #category : #adding }
Basket >> addArticle: aProduct [
	products add: aProduct
]

{ #category : #accessing }
Basket >> delivery [
	| delivery totalWeight |
	delivery := 0.
	totalWeight := self weightTotal.
	
	totalWeight < 5
		ifTrue: [ delivery := basicDeliveryPrice ].
	(totalWeight >= 5 and: totalWeight <= 10)
		ifTrue: [ delivery := basicDeliveryPrice + extraDeliveryPrice ].
	totalWeight > 10
		ifTrue: [ delivery := basicDeliveryPrice + extraDeliveryPrice
				+ ((totalWeight - 10) * deliveryPricePerKgOver10kg) ].
	^ delivery
]

{ #category : #initialize }
Basket >> initialize [
	super initialize.
	products := OrderedCollection new.
	basicDeliveryPrice := 2.
	extraDeliveryPrice := 5.
	deliveryPricePerKgOver10kg := 1.
]

{ #category : #removing }
Basket >> removeProduct: aProduct [
	products remove: aProduct
]

{ #category : #accessing }
Basket >> subTotal [
| total |
total := 0.
	products do: [ :product | total := total + product price ].
	^ total
]

{ #category : #accessing }
Basket >> total [
	self subTotal =0
		ifTrue: [ ^ 0 ]
		ifFalse: [ ^ self subTotal + self delivery ]
]

{ #category : #accessing }
Basket >> weightTotal [
	| weightTotal |
	weightTotal := 0.
	products
		do: [ :product | weightTotal := weightTotal + product weight ].
	^ weightTotal
]
