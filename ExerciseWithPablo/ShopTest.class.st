Class {
	#name : #ShopTest,
	#superclass : #TestCase,
	#category : #'ExerciseWithPablo-Shop'
}

{ #category : #tests }
ShopTest >> testAddingAProduct [
	|aShop|
	
	aShop := Shop new.
	aShop addProduct:
			(Product new
				name: 'Red Yoyo';
				price: 10;
				weight: 0.5;
				yourself).
				
	self assert: aShop products size equals: 1
]
