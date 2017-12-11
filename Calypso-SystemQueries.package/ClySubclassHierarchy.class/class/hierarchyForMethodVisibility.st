method visibility
hierarchyForMethodVisibility
	^hierarchyForMethodVisibility ifNil: [ 
		hierarchyForMethodVisibility := self inverse]