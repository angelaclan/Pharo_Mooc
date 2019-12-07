Class {
	#name : #TBPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #'instance creation' }
TBPost class >> title: aTitle text: aText [ "name of methode"
	^ self new  "return an object of this class TBPost"
		title: aTitle; "title of this object TBPost who recieves the msg"
		text: aText;	 "text of this object TBPost who recieves the msg"
		yourself "??return to the object" 
		
		
]

{ #category : #'instance creation' }
TBPost class >> title: aTitle text: aText category: aCategory [
	^ (self title: aTitle text: aText)
		category: aCategory;
		yourself	" class excute categorize after the () "
]

{ #category : #initialization }
TBPost class >> unclassifiedTag [
	^ 'Unclassified'
]

{ #category : #action }
TBPost >> beVisible [
	self visible: true
]

{ #category : #Accessing }
TBPost >> category [   
	^ category
]

{ #category : #Accessing }
TBPost >> category: anObject [
	category := anObject 
]

{ #category : #Accessing }
TBPost >> date [  
	^ date
]

{ #category : #Accessing }
TBPost >> date: aDate [
	date := aDate
]

{ #category : #initialization }
TBPost >> initialize [
super initialize.
self category: TBPost unclassifiedTag.
self date: Date today.
self notVisible

]

{ #category : #action }
TBPost >> notVisible [
	self visible: false
]

{ #category : #Accessing }
TBPost >> text [  
	^ text
]

{ #category : #Accessing }
TBPost >> text: aString [
	text := aString
]

{ #category : #Accessing }
TBPost >> title [ 
	^ title
]

{ #category : #Accessing }
TBPost >> title: aString [
	title := aString
]

{ #category : #Accessing }
TBPost >> visible [
	^ visible
]

{ #category : #Accessing }
TBPost >> visible: aBoolean [
	visible := aBoolean
]
