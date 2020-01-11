Class {
	#name : #WalletTest,
	#superclass : #TestCase,
	#category : #Wallet
}

{ #category : #tests }
WalletTest >> testCoinsAddition [
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.5.
	w add: 3 coinsOfValue: 0.2.
	self assert: (w coinsOfValue: 0.5) equals: 2
	
]

{ #category : #tests }
WalletTest >> testCoinsAdditionIsWorking [
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.5.
	w add: 7 coinsOfValue: 0.5.
	self assert: (w coinsOfValue: 0.5) equals: 9
]

{ #category : #tests }
WalletTest >> testIfWalletAtCreationIsZero [
	
	| w |
	w := Wallet new.
	self assert: w money equals: 0
]

{ #category : #tests }
WalletTest >> testMoney [
	| w |
	w := Wallet new.
	w add: 5 coinsOfValue: 0.5.
	w add: 3 coinsOfValue: 1.0.
	w add: 2 coinsOfValue: 2.0.
	self assert: w money equals: 9.5
]

{ #category : #tests }
WalletTest >> testMoney2 [
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.30.
	w add: 1 coinsOfValue: 0.20.
	self assert: w money equals: 2.10 
]
