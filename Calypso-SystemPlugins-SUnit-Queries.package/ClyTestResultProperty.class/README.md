I provide information about result of running tests which are related to my environment item.

My instances are created from method ot test case: 

	ClyTestResultProperty ofMethod: aCompiledMethod.
	ClyTestResultProperty ofMethod: aTestCaseClass.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	allCount:		<Integer>
	errorsCount:		<Integer>
	failuresCount:		<Integer>
	successesCount:		<Integer>