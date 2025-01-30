```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! 
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print(jsonData);
    } else {
      // Error handling
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Error handling
    print('Error fetching data: $e');
    rethrow; //Re-throw to handle the error in a higher level
  }
}

void main() async {
  await fetchData();
}
```