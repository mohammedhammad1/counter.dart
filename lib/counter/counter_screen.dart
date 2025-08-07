import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testfaisal/counter/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      builder: (ctrl) {
        return Scaffold(
          backgroundColor: Color(0xFF4E342E),
          appBar: AppBar(
            title: const Text("Counter"),
            titleTextStyle: const TextStyle(
              color: Color(0xFF4E342E),
              fontSize: 30,
            ),

            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 124, 103, 75),
          ),
          body: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Counter Value: ${ctrl.counter}',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 124, 108, 87),
                  ),
                ),
                const Text(
                  'Counter Value',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 123, 108, 88),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: ctrl.increment,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 124, 103, 75),
                    foregroundColor: Color(0xFF4E342E),
                  ),
                  child: const Text('Increment Counter'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: ctrl.decrement,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 124, 103, 75),
                    foregroundColor: Color(0xFF4E342E),
                  ),
                  child: const Text('Decrement Counter'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
