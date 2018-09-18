accessing
addCritique: aCritique
	| newSeverity |
	newSeverity := ClyCritiqueSeverityProperty of: aCritique.
	(newSeverity isMoreImportantThan: ruleSeverity)
		ifTrue: [ ruleSeverity := newSeverity ]