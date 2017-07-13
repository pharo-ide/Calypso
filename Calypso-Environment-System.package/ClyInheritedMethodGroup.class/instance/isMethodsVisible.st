testing
isMethodsVisible

	classes do: [ :each |
		self allTraitsOf: each do: [:user :trait | 
			(classes includes: trait) ifTrue: [^true]].
		each allSuperclassesDo: [ :superclass | 
			(classes includes: superclass) ifTrue: [^true].
			self allTraitsOf: superclass do: [:user :trait | 
				(classes includes: trait) ifTrue: [^true]].
		]
	].
	
	^false