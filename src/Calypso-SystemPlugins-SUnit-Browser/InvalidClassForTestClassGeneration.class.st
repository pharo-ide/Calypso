"
Description
--------------------

I am an exception raised when we want to generate a test class from an invalid class. (For example if the class is a metaclass)
"
Class {
	#name : #InvalidClassForTestClassGeneration,
	#superclass : #Error,
	#instVars : [
		'baseClass'
	],
	#category : #'Calypso-SystemPlugins-SUnit-Browser-Exceptions'
}

{ #category : #signalling }
InvalidClassForTestClassGeneration class >> signalFor: aClass [
	^ self new
		baseClass: aClass;
		signal
]

{ #category : #accessing }
InvalidClassForTestClassGeneration >> baseClass [
	^ baseClass
]

{ #category : #accessing }
InvalidClassForTestClassGeneration >> baseClass: anObject [
	baseClass := anObject
]

{ #category : #accessing }
InvalidClassForTestClassGeneration >> messageText [
	"Overwritten to initialiaze the message text to a standard text if it has not yet been set"
	
	^ messageText ifNil: [ messageText := self standardMessageText ]
]

{ #category : #printing }
InvalidClassForTestClassGeneration >> standardMessageText [	
	^ String streamContents: [ :stream |
		stream print: self baseClass.
		stream nextPutAll: ' is not a valid class to generate a test class' ]
]
