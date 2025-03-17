import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search Places',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildSearchBar(context),
            const SizedBox(height: 20),
            Expanded(
              child: _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), // Dismiss keyboard when tapped outside
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search places...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
        onChanged: (query) {
          // Add search functionality here
          debugPrint('Search query: $query');
        },
      ),
    );
  }

  Widget _buildSearchResults() {
    // This is a placeholder for search results
    // In a real app, you would display search results dynamically here
    return ListView.builder(
      itemCount: 10, // Placeholder count
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Place ${index + 1}'),
          subtitle: Text('Description of Place ${index + 1}'),
        );
      },
    );
  }
}
