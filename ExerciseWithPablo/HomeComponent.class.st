Class {
	#name : #HomeComponent,
	#superclass : #WAComponent,
	#category : #'ExerciseWithPablo-UI'
}

{ #category : #testing }
HomeComponent class >> canBeRoot [
	^ true
]

{ #category : #'as yet unclassified' }
HomeComponent >> renderContentOn: html [
	| theShop |
	theShop := Shop uniqueInstance.

	html div
		class: 'container';
		with: [ self renderContentsOf: theShop with: html ]


]

{ #category : #'as yet unclassified' }
HomeComponent >> renderContentsOf: theShop with: html [
	
	self renderHeader: theShop with: html.
	
	html div
		class: 'container';
		with: [ self renderSection: theShop with: html ].
		

]

{ #category : #'as yet unclassified' }
HomeComponent >> renderHeader: theShop with: html [
	html tbsPageHeader with: [ html heading: 'YoYo Time'].

	html tbsForm
		with: [ 
			html div
				class: 'col-md-4';
				with: [ html textInput
							tbsFormControl;
							placeholder: 'Find' ].
			html div
				class: 'col-md-2';
				with: [ 
						  html tbsButton
								beSuccess;
								with: 'Search' ] ]
]

{ #category : #'as yet unclassified' }
HomeComponent >> renderSection: theShop with: html [

html div class: 'col-md-4'.
html div class: 'col-md-8';
		with: [ theShop articles
				do: [ :e | 
					html
						div: [ html image
								width: 150;
								url: e image ].
					html
						div: [ html heading
								level: 4;
								with: e name ].
					html
						div: [ html
								paragraph: [ html text: '$'.
									html text: e price ] ].
					html
						div: [ html tbsButton
								bePrimary;
								with: 'Buy' ] ] ]
]
