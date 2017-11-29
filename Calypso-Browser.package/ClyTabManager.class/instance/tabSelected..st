private
tabSelected: aTab
	| oldTabs newTab browserState |
	updatingStarted ifTrue: [ ^self ].
	"ifNone case happens somehow during tabs rebuild".
	newTab := tools detect: [ :each | each containerTab == aTab ] ifNone: [^self]. 
	oldTabs := tools select: [:each | each isTabSelected & (each containerTab ~~ aTab)].
	oldTabs ifEmpty: [ ^self ].
	browserState := browser snapshotState.
	browserState selectedTabs: oldTabs.
	browser recordNavigationState: browserState.
	
	(newTab belongsToBrowserContext: oldTabs first context) ifFalse: [ ^self ].
	
	self swapPrioritiesBetween: newTab and: oldTabs first