Extension { #name : #Behavior }

{ #category : #'*Calypso-SystemQueries' }
Behavior >> calypsoEnvironmentType [
	^ClyClass
]

{ #category : #'*Calypso-SystemQueries' }
Behavior >> includesMethodsAffectedBy: aSystemAnnouncement [
	^aSystemAnnouncement affectsMethodsDefinedInClass: self 

]

{ #category : #'*Calypso-SystemQueries' }
Behavior >> metaLevelScope [
	^self isInstanceSide ifTrue: [ ClyInstanceSideScope ] ifFalse: [ ClyClassSideScope ]
]

{ #category : #'*Calypso-SystemQueries' }
Behavior >> overridesMethod: aMethod [

	^((self inheritsFrom: aMethod origin) or: [ 
		self isComposedBy: aMethod origin  ])
			and: [ (self lookupSelector: aMethod selector) originMethod ~~ aMethod]
]
