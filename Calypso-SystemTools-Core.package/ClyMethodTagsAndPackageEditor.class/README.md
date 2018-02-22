I am status bar tool for method editors to select method tags or extending package for the editing method.

While system only support tags when method is not extension I do not show both elements.
So I provide checkbox for extension status.
When it is active I should extending package in the label.
When it is not active I show method tag (protocol) in the label.

When user toggle checkbox I request either package or protocol depending on requested mode of method.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	editButton:		<Morph>
	extensionCheckbox:		<Morph>
	label:		<StringMorph>
