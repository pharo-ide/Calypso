I compose test result information from all classes which inherit tests from decorated method or class.
My counts variables provide summary on all of them. And the map testCaseResults include information for each of them.

I am used to correctly run inherited tests when they are visible in the browser from subclasses.
And I allow to run all tests of abstract class including all subclasses.
   
Internal Representation and Key Implementation Points.

    Instance Variables
	testCaseResults:		<Dictionary of<TestCase class, ClyTestResultProperty>>