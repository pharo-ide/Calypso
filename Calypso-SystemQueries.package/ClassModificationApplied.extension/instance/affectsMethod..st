*Calypso-SystemQueries
affectsMethod: aMethod
	"Class modification leads to methods recompilation (because variables are changed).
	So it means that this event affects any method of modified class"
	
	^self classAffected == aMethod origin