controlling
activateExtraScope
	"We only want to show interesting classes which means we do not case about Object and rest"
	^visibleClassScope withExtraBasisObjects: extraClassScope asInterestingClassScope collectAllClasses