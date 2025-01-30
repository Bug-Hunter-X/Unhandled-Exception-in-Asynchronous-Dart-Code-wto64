# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: improper exception handling in asynchronous operations.  The `bug.dart` file contains code that fetches data from an API.  If the API request fails, an exception is thrown.  However, the `main` function doesn't gracefully handle this exception, leading to program termination.

The `bugSolution.dart` file provides a corrected version of the code, showing how to handle exceptions using `try-catch` blocks and providing more robust error management. This improved version logs errors effectively and prevents abrupt program termination.