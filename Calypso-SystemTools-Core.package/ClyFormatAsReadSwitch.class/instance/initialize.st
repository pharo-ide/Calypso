initialization
initialize
	super initialize.
	
	checkbox := CheckboxMorph 
		on: self selected: #formatAsYouRead changeSelected: #toggle.
	checkbox
		getLabelSelector: #formatAsYouReadLabel;
		labelClickable: true;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		setBalloonText:
			'Autoformat code without editing. Useful when reading some old/unformatted code. You can configure your own format in the settings browser.'.
	self addMorph: checkbox