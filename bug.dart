```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final List<dynamic> data = jsonDecode(response.body);

      // Process the data
      for (var item in data) {
        print(item['name']); // Accessing a property that might not exist
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e'); // Handle the exception properly 
  }
}
```