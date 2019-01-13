Extension { #name : #ClyExtendingPackagesQueryTest }

{ #category : #'*Calypso-SystemPlugins-Traits-Queries-Tests' }
ClyExtendingPackagesQueryTest >> testFromClassWhichTraitIsExtendedButNotItself [

	self queryFromScope: ClyClassScope of: ClyClassWithTraits.

	self assert: resultItems size equals: 0
]
