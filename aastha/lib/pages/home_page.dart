import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aastha Companion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF2F8F2),
        fontFamily: 'Arial',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                  children: [
                    const SizedBox(width: 16),
                    const Text(
                    "Aastha",
                    style: TextStyle(
                      color: Color(0xFF00bd13),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const Spacer(),
                    const Text(
                    "Good Morning, Farmer",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                    ),
                    const SizedBox(width: 16),
                  ],
                  ),
                ),
                ),

              const SizedBox(height: 16),

              // Weather Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.lightBlue[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Today's Weather",
                            style: TextStyle(color: Colors.white, fontSize: 16)),
                        Text("Perfect for farming",
                            style: TextStyle(color: Colors.white70)),
                        SizedBox(height: 8),
                        Text("30°C",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(height: 4),
                        Text("Humidity: 65%   Wind: 3 km/h",
                            style: TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                    const Icon(Icons.wb_sunny, color: Colors.white, size: 40),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Manage Farm Section
              const Text("Manage Your Farm",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: _bigActionCard(
                        color: Colors.green,
                        icon: Icons.camera_alt,
                        label: "Scan Crop"),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _bigActionCard(
                        color: Colors.orange,
                        icon: Icons.mic,
                        label: "Ask Aastha"),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // My Farm Data
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 3))
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("My Farm Data",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          const Text("Track your progress",
                              style: TextStyle(color: Colors.black54)),
                          const SizedBox(height: 12),
                          ElevatedButton.icon(
                            onPressed: null, // TODO
                            icon: const Icon(Icons.bar_chart),
                            label: const Text("View Data"),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/farmer_icon.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Stats Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _smallStatCard("12", "Scans", Colors.green),
                  _smallStatCard("3", "Issues", Colors.orange),
                  _smallStatCard("85%", "Health", Colors.teal),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bigActionCard({required Color color, required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 32),
          const SizedBox(height: 12),
          Text(label,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _smallStatCard(String value, String label, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3))
          ],
        ),
        child: Column(
          children: [
            Text(value,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: color)),
            const SizedBox(height: 4),
            Text(label, style: const TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}
