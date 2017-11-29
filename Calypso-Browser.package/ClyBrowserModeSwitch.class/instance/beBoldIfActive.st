updating
beBoldIfActive

	self isModeActive 
		ifTrue: [ radioButton labelMorph emphasis: TextEmphasis bold emphasisCode]
		ifFalse: [ radioButton labelMorph emphasis: TextEmphasis normal emphasisCode]