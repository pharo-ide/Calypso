Class {
	#name : 'ClyClassChange',
	#superclass : 'Object',
	#instVars : [
		'affectedClass'
	],
	#category : 'Calypso-SystemTools-Debugger-TelePharo Support',
	#package : 'Calypso-SystemTools-Debugger',
	#tag : 'TelePharo Support'
}

{ #category : 'instance creation' }
ClyClassChange class >> of: aClass [
	^self new affectedClass: aClass
]

{ #category : 'accessing' }
ClyClassChange >> affectedClass [
	^affectedClass

]

{ #category : 'accessing' }
ClyClassChange >> affectedClass: anObject [
	affectedClass := anObject

]

{ #category : 'accessing' }
ClyClassChange >> handlesAnnouncement: anAnnouncement [
	^anAnnouncement affectsClass: affectedClass
]
