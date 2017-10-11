operations
toggle
	| formatter |
	formatter := RBProgramNode formatterClass.
	formatter formatAsYouReadPolicy
		ifTrue: [ 
			formatter formatAsYouReadPolicy: false. 
			textMorph model canDiscardEdits
				ifTrue: [ textMorph model cancelEdits ] ]
		ifFalse: [ 
			formatter formatAsYouReadPolicy: true.
			textMorph model
				formatSourceCodeInView;
				clearUserEdits ]