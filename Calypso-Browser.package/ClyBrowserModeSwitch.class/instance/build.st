accessing
build
	radioButton := self theme 
		newRadioButtonIn: World 
		for: self 
		getSelected: #isModeActive 
		setSelected: #toggleMode:
		getEnabled: nil
		label: self title
		help: nil.
	"self beBoldIfActive."
	self addMorph: radioButton