system changes
unsubscribe: anObject

	announcer ifNil: [ ^self ].
	announcer unsubscribe: anObject 