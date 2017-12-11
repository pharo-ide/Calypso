accessing
addCritique: aCritique
	| newSeverity |
	newSeverity := ClyCritiqueSeverity of: aCritique.
	(newSeverity isMoreImportantThan: ruleSeverity)
		ifTrue: [ ruleSeverity := newSeverity ]