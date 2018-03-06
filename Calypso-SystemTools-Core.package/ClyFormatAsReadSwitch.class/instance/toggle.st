operations
toggle
	| formatter isDirty |
	formatter := RBProgramNode formatterClass.
	formatter formatAsYouReadPolicy
		ifTrue: [ 
			formatter formatAsYouReadPolicy: false. 
			textMorph model canDiscardEdits
				ifTrue: [ textMorph model cancelEdits ] ]
		ifFalse: [ 
			formatter formatAsYouReadPolicy: true.
			isDirty := textMorph hasUnacceptedEdits.
			textMorph model	formatSourceCodeInView.
			isDirty ifFalse: [ textMorph model clearUserEdits ]]