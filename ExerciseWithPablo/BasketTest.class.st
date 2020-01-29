Class {
	#name : #BasketTest,
	#superclass : #TestCase,
	#instVars : [
		'aBasket'
	],
	#category : #ExerciseWithPablo
}

{ #category : #tests }
BasketTest >> setUp [
super setUp.
	aBasket := Basket new
]

{ #category : #tests }
BasketTest >> testAddOneProductToBasket [
	| aProduct |
	aProduct := Product new.
	aProduct name: 'yoyo-red'.
	aProduct price: 10.
	aBasket addProduct: aProduct.
	self assert: aBasket total equals: 10
]

{ #category : #tests }
BasketTest >> testAddTwoProductToBasket [
	| aProduct bProduct |
	
	aProduct := Product new.
	aProduct name: 'yoyo-red'.
	aProduct price: 10.
	
	bProduct := Product new
		name: 'yoyo-blue';
		price: 10.
	aBasket addProduct: aProduct.
	aBasket addProduct: bProduct.
	self assert: aBasket total equals: 20
]

{ #category : #tests }
BasketTest >> testBasketIsEmpty [
	self assert: aBasket total equals: 0
]
