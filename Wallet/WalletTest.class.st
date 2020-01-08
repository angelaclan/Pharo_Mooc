Class {
	#name : #WalletTest,
	#superclass : #TestCase,
	#category : #Wallet
}

{ #category : #tests }
WalletTest >> testCoins [
	| w |
	w := Wallet new.
	w add: 2 coinsOfValue: 0.50.
	w add: 3 coinsOfValue: 0.20.
	self assert: w coinNumber = 5
	
]

{ #category : #tests }
WalletTest >> testIfWalletAtCreationIsZero [
	
	| w |
	w := Wallet new.
	self assert: w money = 0
]
