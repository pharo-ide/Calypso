Extension { #name : #Behavior }

{ #category : #'*Calypso-SystemQueries' }
Behavior >> calypsoEnvironmentType [
	^ClyClass
]

{ #category : #'*Calypso-SystemQueries' }
Behavior >> canOverrideMethod: aMethod [
	(self inheritsFrom: aMethod origin) ifTrue: [ ^true ].
	
	"Following ugly check is to not break in case when no traits exists.
	Normal solution would be to delegate logic to metaclass 
	where traited classes will have own behavior but this mechanizm exists only in Pharo7.
	For compatibility with pharo6 trait analysis is hardcoded just here"
	(self respondsTo: #traits) ifFalse: [ ^false ].
	
	(self traits anySatisfy: [ :eachTrait | 
		eachTrait = aMethod origin or: [eachTrait canOverrideMethod: aMethod ]])
			ifTrue: [ ^true ].
	
	self isRootInEnvironment ifTrue: [ ^false ].
	^superclass canOverrideMethod: aMethod
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

	(self canOverrideMethod: aMethod) ifFalse: [ ^false ].
	
	^(self lookupSelector: aMethod selector)
		ifNil: [ true "no selector means that inherited method was somehow removed which is kind of override" ]
		ifNotNil: [ :actualMethod | actualMethod originMethod ~~ aMethod]
]
