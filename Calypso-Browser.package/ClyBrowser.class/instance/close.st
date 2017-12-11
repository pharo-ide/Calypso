opening/closing
close
	| currentWindow |
	currentWindow := self window.
	
	(currentWindow ownerThatIsA: GroupWindowMorph) ifNotNil: [:group | 
		^self okToChange ifTrue: [  
			[group removeWindow: currentWindow] 
				on: ProvideAnswerNotification do: [:notification | 
					"We already got answer from okToChange check above"
					notification resume: true]]].
	
	currentWindow close