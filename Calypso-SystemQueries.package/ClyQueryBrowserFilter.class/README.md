I am a method filter which check method items for definition property. 
I check if package or class names satisfy my pattern string.

I also provide special trick to filter methods by script. To activate it pattern string should be in form of one arg block. For example:
	[ :each | each linesOfCode > 10 ] 
Such block will be evaluated with method object.
  
Internal Representation and Key Implementation Points.

    Instance Variables
	badScript:		<Boolean>
	scriptBlock:		<BlockClosure>