Class {
	#name : #ClyProcessStack,
	#superclass : #ClyBrowserQueryResult,
	#category : 'Calypso-ProcessQueries'
}

{ #category : #building }
ClyProcessStack >> buildFromContext: aContext [
	
	| sender |
	sender := aContext.
	[ sender notNil ] whileTrue: [ 
		items add: sender asCalypsoBrowserItem.
		sender := sender sender
	 ] 
]

{ #category : #building }
ClyProcessStack >> fillWith: contexts [
	contexts ifEmpty: [ ^self ].
	contexts size = 1 ifFalse: [ self error: 'Multiple contexts are not supported' ].

	self buildFromContext: contexts first.
]
