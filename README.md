# Unhandled Exception in Asynchronous Dart API Call

This repository demonstrates a common error in Dart asynchronous programming and its solution.

The `bug.dart` file contains code that fetches data from an API.  It lacks proper error handling when accessing nested JSON properties and when handling the HTTP response itself.  This can lead to runtime errors. The `bugSolution.dart` file shows how to improve the code.