accessing
registeredObjects
	| result registeredObject |
	result := OrderedCollection new.
	
	contents keysAndValuesDo: [ :criticSubjectType :criticSubjects | 
		criticSubjects keysAndValuesDo: [ :criticSubject :analysisResult | 
			analysisResult ifNotNil: [  
				registeredObject := criticSubjectType 
					recoverObjectRegisteredAsCriticSubject: criticSubject.
				result add: registeredObject ]]].
	
	^result