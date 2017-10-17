system changes
subscribe: anObject

	announcer ifNil: [ announcer := Announcer new].
	
	announcer when: ClyEnvironmentChanged send: #environmentChanged: to: anObject