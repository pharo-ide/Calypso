analysis
critiques
	[classCritiquesDelayed] whileTrue: [ 
		classCritiquesFailed ifTrue: [ self error: 'test critiques computation failed' ]
	 ].
	^foundClassCritiques