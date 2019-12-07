Class {
	#name : #TBPostTest,
	#superclass : #TestCase,
	#category : #'TinyBlog-Tests'
}

{ #category : #testing }
TBPostTest >> isUnclassified [
	 
	^ self category = TBPost unclassifiedTag 
]

{ #category : #testing }
TBPostTest >> isVisible [ 
	^ self visible
]

{ #category : #tests }
TBPostTest >> testPostIsCreatedCorrectly [

| post |
post := TBPost 
	title: 'Welcome to TinyBlog'
	text: 'TinyBlog is a small blog engine made with Pharo.'
	category: 'TinyBlog'.
self assert: post title = 'Welcome to TinyBlog'.
self assert: post text = 'TinyBlog is a small blog engine made with Pharo.' .
]

{ #category : #tests }
TBPostTest >> testWithoutCategoryIsUnclassified [

	| post |
	post := TBPost
		title: 'Welcome to TinyBlog'
		text: 'TinyBlog is a small blog engine made with Pharo.'.
	self assert: post title = 'Welcome to TinyBlog'.
	self assert: post category = TBPost unclassifiedTag.
	self deny: post isVisible
]
