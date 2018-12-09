Extension { #name : #ClyMessageImplementorsQueryTests }

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyMessageImplementorsQueryTests >> testFromClassAndInheritedTrait [
	
	query := ClyMessageImplementorsQuery of: #methodFromRoot1.
	self queryFromScope: ClyBothMetaLevelClassScope ofAll: { ClyClassWithTraits. ClyTraitRoot1 }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (ClyTraitRoot1 >> #methodFromRoot1)
]
