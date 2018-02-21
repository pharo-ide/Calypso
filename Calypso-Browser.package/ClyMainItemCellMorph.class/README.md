I represent main cell in table row. 
I responsible to show expansion icon, current depth indentation when tree structure is specified.
I allow to decorate me with
- definition morph which will be placed before label
	cellMorph definitionMorph: aMorph
	cellMorph definitionIcon: iconName
- extraToolMorphs which will be placed after label
	cellMorph addExtraTool: aMorph
	cellMorph addExtraIcon: iconName
- any kind of properties for my label
	cellMorph label emphasis: TextEmphasis italic emphasisCode.

I implement layout logic in method #build.

My instances are created using:
	ClyMainItemCellMorph on: aDataSourceItem

I provide two identation strategies which you can switch using fullIndentation variable.
In full identation mode children items are shifted together with collapsing button.
Otherwise collapsion button is always in same place but label and icons are shifted.

Internal Representation and Key Implementation Points.

    Instance Variables
	definitionMorph:		<Morph>
	extraToolMorphs:		<OrderedCollection of<Morph>>
	item:		<ClyDataSourceItem>
	itemDepth:		<Integer>
	fullIndentation: <Boolean>