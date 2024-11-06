import 'package:flutter/material.dart';

// Entry point of the application
void main() {
  runApp(const MyApp());
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fuudiui : Food di UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

// MyHomePage as a StatelessWidget
class MyHomePage extends StatelessWidget {
  final String npm = '2306275172'; // NPM
  final String name = 'Patricia Gloria Sujatmoko Silaban'; // Nama
  final String className = 'PBP A'; // Kelas

  MyHomePage({super.key});

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.mood,Color(0xFFF6AE39)),
    ItemHomepage("Tambah Produk", Icons.add,Color(0xFF409065)),
    ItemHomepage("Logout", Icons.logout, Color(0XFF374061)),
  ]; // Fixed: Added closing bracket and semicolon

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic material design visual layout structure
    return Scaffold(
      backgroundColor: Color(0xFFFBE6D2),
      appBar: AppBar(
        title: const Text(
          'Fuudiui : Food di UI', // Using hard-coded title
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Column to arrange widgets vertically
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row to display InfoCards horizontally
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Vertical spacing
            const SizedBox(height: 16.0),

            // Center widget to center its child
            Center(
              child: Column(
                children: [
                  // Welcome text
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Fuudiui!😋',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // GridView to display ItemCards
                  GridView.count(
                    primary: false, // Changed to false to prevent scrolling issues
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true, // Ensures GridView takes only needed space
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Optional: Remove FloatingActionButton if not needed
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle button press
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      */
    );
  }
}

// InfoCard widget to display information
class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

// ItemHomepage model class
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // New property for button color


  ItemHomepage(this.name, this.icon, this.color);
}

// ItemCard widget to display each item
class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          // Display a SnackBar when the card is tapped
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
            );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
