Extension { #name : #Trait }

{ #category : #'*Calypso-SystemPlugins-Traits-Queries' }
Trait >> overridesMethod: aMethod [
	"For compatibility with Pharo6"
	
	^((self inheritsFrom: aMethod origin) or: [ 
		self isComposedBy: aMethod origin  ])
			and: [ (self lookupSelector: aMethod selector) originMethod ~~ aMethod]
]
