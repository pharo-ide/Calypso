*Calypso-Browser
updateCalypsoUI
	"Calypso can trigger model updates from background processes.
	And Calypso should ensure that actual UI update 
	will be always processed from UI process. Instead UI state could be corrupted"
	UIManager default uiProcess == Processor activeProcess
		ifTrue: [ self value ]
		ifFalse: [ UIManager default defer: self ]