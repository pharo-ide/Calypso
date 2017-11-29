controlling
initiateUIChangeBy: aBlock
	"We need to distingish UI state changes produced by user or by tool itself.
	This method setup special flag which shows that all following operations are performed by tool.
	So in any method we could check that it was initiated by user or not"
	
	changesWasInitiatedByUser ifFalse: [ ^aBlock value ].
	changesWasInitiatedByUser := false.
	aBlock ensure: [ changesWasInitiatedByUser := true ]