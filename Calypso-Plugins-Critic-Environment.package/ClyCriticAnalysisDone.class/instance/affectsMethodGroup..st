event processing
affectsMethodGroup: aMethodGroup

	^(aMethodGroup isKindOf: ClyCriticMethodGroup) 
		and: [ aMethodGroup isBasedOn: self criticSubject ] 