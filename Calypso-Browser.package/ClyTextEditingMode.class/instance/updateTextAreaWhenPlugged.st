initialize-release
updateTextAreaWhenPlugged
	super updateTextAreaWhenPlugged.
	isForScripting ifTrue: [ self textArea shoutStyler beForSmalltalkScripting]