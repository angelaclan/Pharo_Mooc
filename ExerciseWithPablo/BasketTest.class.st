Class {
	#name : #BasketTest,
	#superclass : #TestCase,
	#instVars : [
		'aBasket'
	],
	#category : #'ExerciseWithPablo-Basket'
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
	aProduct weight: 20.
	aBasket addArticle: aProduct.
	self assert: aBasket subTotal equals: 10
]

{ #category : #tests }
BasketTest >> testAddOneProductWithDelivery [
	| aProduct |
	aProduct := Product new.
	aProduct name: 'yoyo-red'.
	aProduct price: 10.
	aProduct weight: 2.
	aBasket addArticle: aProduct.
	self assert: aBasket total equals: 12
]

{ #category : #tests }
BasketTest >> testAddTwoProductToBasket [
	| aProduct bProduct |
	aProduct := Product new
		name: 'yoyo-red';
		price: 10;
		weight: 5.
	bProduct := Product new
		name: 'yoyo-blue';
		price: 10;
		weight: 10.
		
	aBasket addArticle: aProduct.
	aBasket addArticle: bProduct.
	self assert: aBasket subTotal equals: 20
]

{ #category : #tests }
BasketTest >> testAddTwoProductWithDelivery [
	| aProduct  bProduct |
	aProduct := Product new name: 'yoyo-red';
	price: 10;
	weight: 2.
	
	bProduct := Product new name: 'yoyo-metal';
	price: 20;
	weight: 3.
	
	aBasket addArticle: aProduct.
	aBasket addArticle: bProduct.
	self assert: aBasket total equals: 37
]

{ #category : #tests }
BasketTest >> testBasketIsEmpty [
	self assert: aBasket subTotal equals: 0.
	self assert: aBasket total equals: 0.
]

{ #category : #tests }
BasketTest >> testRemoveWithOneProductLeftInBasket [
	| aProduct bProduct |
	aProduct := Product new 
		name: 'yoyo-red';
		price: 10;
		weight: 2.
	bProduct := Product new
		name: 'yoyo-metal';
		price: 20;
		weight: 3.
	aBasket
		addArticle: aProduct;
		addArticle: bProduct.
	aBasket removeProduct: aProduct.
	
	self assert: aBasket subTotal equals: 20.
	self assert: aBasket total equals: 22
]

{ #category : #tests }
BasketTest >> testRemoveWithTwoProductLeftInBasket [
	| aProduct bProduct cProduct |
	aProduct := Product new 
		name: 'yoyo-red';
		price: 10;
		weight: 2.
	bProduct := Product new
		name: 'yoyo-metal';
		price: 20;
		weight: 3.
	cProduct := Product new
		name: 'yoyo-green';
		price: 10;
		weight: 2.	
		
	aBasket
		addArticle: aProduct;
		addArticle: bProduct;
		addArticle: cProduct.
	aBasket removeProduct: aProduct.
	
	self assert: aBasket subTotal equals: 30.
	self assert: aBasket total equals: 37
]
