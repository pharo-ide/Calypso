I am a root of possible tools which affect text editors.
Instances are supposed to be placed in the status bar of the editor.
They should be created using following method: 

	ClyTextMorphTool of: aTextMorph
	
If subclass need to be notified about text changes it should implement changes subscription in #attachToTextMorph method.
By default it do nothing.

Internal Representation and Key Implementation Points.

    Instance Variables
	textMorph:		<Object>