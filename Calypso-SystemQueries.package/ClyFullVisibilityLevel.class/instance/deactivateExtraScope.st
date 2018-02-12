controlling
deactivateExtraScope
	"We want to hide all inherited classes including Object and rest"
	^visibleClassScope reducedByClassesFrom: extraClassScope asInheritedScope