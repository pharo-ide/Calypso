I represent main cell in table row. 
I responsible to show expansion icon, current depth indentation when tree structure is specified.
I allow to decorate me with
- definition morph which will be placed before label
	cellMorph definitionMorph: aMorph
	cellMorph definitionIcon: iconName
- extraToolMorpgs which will be placed after label
	cellMorph addExtraTool: aMorph
	cellMorph addExtraIcon: iconName
- any kind of properties for my nameMorph which represents cell label
	cellMorph nameMorph emphasis: TextEmphasis italic emphasisCode.

I implement layout logic in method #build.

My instances are created using:
	ClyMainItemCellMorph on: aDataSourceItem
	
Internal Representation and Key Implementation Points.

    Instance Variables
	definitionMorph:		<Morph>
	extraToolMorphs:		<OrderedCollection of<Morph>>
	nameMorph:		<Morph>
	item:		<ClyDataSourceItem>
	itemDepth:		<Integer>
