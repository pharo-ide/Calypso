item decoration
checkClassIsAbstract: aClass
	"Method is copied from Pharo7 Behavior>>isAbstract"
	
	aClass withAllSuperclassesDo: [ :eachClass | 
		eachClass methodsDo: [ :eachMethod |
			(eachMethod isAbstract and: [ (aClass lookupSelector: eachMethod selector) isAbstract ])
				ifTrue: [ ^true ]]].
	
	^false