controlling
refreshCritiques
	browserTool decorateByCritic: self.
	
	criticView dataSource isEmpty 
		ifTrue: [ self hideCritiques ]
		ifFalse: [ self showCritiques ].
	(criticView dataSource hasMetaProperty: ClyBackgroundProcessingTag)
		ifFalse: [ progressMorph delete ]
		ifTrue: [ browserTool statusBar addContextItem: progressMorph  ]