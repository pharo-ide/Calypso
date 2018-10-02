Extension { #name : #Trait }

{ #category : #'*Calypso-SystemPlugins-Traits-Queries' }
Trait >> canOverrideMethod: aMethod [
	"It is required for compatibility with Pharo6 where Trait is not kind of Class"
	
	(self traits anySatisfy: [ :eachTrait | 
		eachTrait = aMethod origin or: [eachTrait canOverrideMethod: aMethod ]])
			ifTrue: [ ^true ].
	
	^false
]

{ #category : #'*Calypso-SystemPlugins-Traits-Queries' }
Trait >> overridesMethod: aMethod [
	"It is copy of Behavior method for compatibility with Pharo6"

	(self canOverrideMethod: aMethod) ifFalse: [ ^false ].
	
	^(self lookupSelector: aMethod selector)
		ifNil: [ true "no selector means that inherited method was somehow removed which is kind of override" ]
		ifNotNil: [ :actualMethod | actualMethod originMethod ~~ aMethod]
]
