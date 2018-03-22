system changes
subscribe: anObject

	announcer ifNil: [ announcer := Announcer new].
	
	announcer when: ClyQueryChanged send: #itemsChanged to: anObject