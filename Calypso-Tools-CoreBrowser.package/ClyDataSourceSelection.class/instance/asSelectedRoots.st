converting
asSelectedRoots

	| roots lastSelectedRoot resultItems |
	self isEmpty ifTrue: [ ^self ].
	roots := items collect: [ :each | each rootParentItem ] as: Set.
	roots = items ifTrue: [ ^self ].
	
	"We want to save root of lastSelectedItem as lastSelectedItem of new selection. 
	This item should be first according to FastTable logic"
	lastSelectedRoot := self lastSelectedItem rootParentItem.
	roots remove: lastSelectedRoot.
	resultItems := OrderedCollection with: lastSelectedRoot.
	resultItems addAll: roots.
	
	^self class fromRoot: self rootDataSource items: resultItems