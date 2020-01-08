Class {
	#name : #TemperatureConverter,
	#superclass : #Object,
	#instVars : [
		'location',
		'measures',
		'measureCount'
	],
	#category : #MyConverter
}

{ #category : #accesing }
TemperatureConverter >> convertCelsius: anInteger [ 
	"Convert anInteger from celsius to fahrenheit"
	
	^ ((anInteger * 1.8) + 32)
]

{ #category : #'as yet unclassified' }
TemperatureConverter >> convertFahrenheit: anInteger [ 
	"Convert anInteger from fahrenheit to celsius"
	
	^ ((anInteger - 32)/ 1.8)

]

{ #category : #'as yet unclassified' }
TemperatureConverter >> convertFahrenheitFrom: low to: high by: step [
	"return a collection of pairs (f,c) for all the fahrenheit temp from a low to a high degree"
	
	^ (low to: high by: step) collect: [ :f | f -> (self convertFahrenheit: f) ]

]

{ #category : #accessing }
TemperatureConverter >> dates [
	^ measures collect: [ :each | each key asDate ]
]

{ #category : #initialize }
TemperatureConverter >> initialize [ 
	location := 'Nice'.
	measures := OrderedCollection new
]

{ #category : #'as yet unclassified' }
TemperatureConverter >> location [
	^ location
]

{ #category : #'as yet unclassified' }
TemperatureConverter >> location: aString [ 
	location := aString
]

{ #category : #accessing }
TemperatureConverter >> measureCelsius:  aTemp [

	measures add: DateAndTime now -> aTemp
]

{ #category : #accessing }
TemperatureConverter >> measureCount [
	^ measureCount
	
]

{ #category : #accessing }
TemperatureConverter >> measureCount: aNumber [

	measureCount := aNumber
]

{ #category : #accessing }
TemperatureConverter >> measureFahrenheit:  aTemp [

	measures add: DateAndTime now -> aTemp
]

{ #category : #accessing }
TemperatureConverter >> temparatures [
	^ measures collect: [ :each | each value ]
]

{ #category : #accessing }
TemperatureConverter >> times [
	^ measures collect: [ :each | each key asTime ]
]
