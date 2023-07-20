import 'package:flutter/material.dart';

class TestFreshPage extends StatelessWidget {
  TestFreshPage({super.key});
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('大前端之旅')),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          // Implement StatefulBuilder
          child: StatefulBuilder(
            builder: (context, setInnerState) => Column(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  child: Center(
                    // Display the number
                    child: Text(
                      count.toString(),
                      style: const TextStyle(fontSize: 80, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // This button is used to crease the number
                ElevatedButton.icon(
                    onPressed: () {
                      // Call setInnerState function
                      setInnerState(() => count++);
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Increase By One')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
