*Calypso-NavigationModel
tryEnterCritical: criticalBlock ifLocked: lockedBlock

	^semaphore critical: criticalBlock ifLocked: lockedBlock 