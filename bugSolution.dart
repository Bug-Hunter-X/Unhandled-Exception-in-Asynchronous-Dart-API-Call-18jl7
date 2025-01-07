```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData is List) {
        for (var item in jsonData) {
          if (item is Map && item.containsKey('name')) {
            print(item['name']);
          } else {
            print('Invalid data format or missing "name" property');
          }
        }
      } else {
        print('Unexpected data format. Expected a List.');
      }
    } else {
      throw Exception('HTTP request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```