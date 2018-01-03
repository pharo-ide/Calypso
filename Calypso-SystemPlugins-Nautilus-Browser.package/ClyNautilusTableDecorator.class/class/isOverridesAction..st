private
isOverridesAction: aButton	
	(aButton isKindOf: Form) ifTrue: [ ^false ].
	(aButton isKindOf: IconicButton) ifTrue: [ 
		^#(arrowUp: arrowDown:) includes: aButton actionSelector ].

	^aButton submorphs anySatisfy: [:each | 
		self isOverridesAction: each]