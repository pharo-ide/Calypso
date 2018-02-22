I mark covered methods with information about test which cover them.

I decorate covered methods with ClyTestedMethodProperty which includes information about test result (ClyTestResultProperty). 

To find covering test I use simple hueristics: 
- Test or Tests suffix 
- test prefix for method name with various combinations.
Look at "tests lookup" methods for details.