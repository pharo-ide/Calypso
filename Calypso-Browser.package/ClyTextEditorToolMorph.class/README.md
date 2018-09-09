I am a root for browser tools which requires text editor.
I install hooks into standard text morph to intercept all navigation requests and evaluated by Calypso logic.
Also I provide support for smart suggestions.

My subclasses should implement two methods: 

- editingText 
The text which is actually edited 

- applyChanges 
The operation to accept editing text changes 

Internal Representation and Key Implementation Points.

    Instance Variables
	applyingChanges:		<Boolean>
	changesCancelRequested:		<Boolean>
	textModel:		<RubScrolledTextModel>
	textMorph:		<RubScrolledTextMorph>