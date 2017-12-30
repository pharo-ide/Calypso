testing
isOverridesAction: aButton	

	(aButton isKindOf: IconicButton) ifTrue: [ 
		^#(arrowUp: arrowDown:) includes: aButton actionSelector ].

	^aButton submorphs anySatisfy: [:each | 
		self isOverridesAction: each]