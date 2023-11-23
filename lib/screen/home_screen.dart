import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers = [1, 2, 3, 4, 5];
  String minSum = '';
  String maxSum = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mini-Max Sum'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _calculateMinMaxSum(numbers);
                },
                child: const Text('Calculate Mini-Max Sum'),
              ),
              const SizedBox(height: 20),
              Text('Minimum Sum: $minSum'),
              Text('Maximum Sum: $maxSum'),
            ],
          ),
        ),
      ),
    );
  }

  void _calculateMinMaxSum(List<int> numbers) {
    if (numbers.length == 5) {
      _quicksort(numbers, 0, numbers.length - 1);

      int minSumValue = numbers[0] + numbers[1] + numbers[2] + numbers[3];
      int maxSumValue = numbers[1] + numbers[2] + numbers[3] + numbers[4];

      setState(() {
        minSum = minSumValue.toString();
        maxSum = maxSumValue.toString();
      });
    } else {
      const Text(
          'Please provide exactly five numbers.',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20
        ),
      );
    }
  }

  void _quicksort(List<int> arr, int low, int high) {
    // If the array part has more than one element
    if (low < high) {
      // Find the pivot index, the array is sorted based on this pivot
      int pivotIndex = _partition(arr, low, high);
      // Call recursively to sort the left and right subsections of the pivot
      _quicksort(arr, low, pivotIndex - 1);
      _quicksort(arr, pivotIndex + 1, high);
    }
  }

  int _partition(List<int> arr, int low, int high) {
    // Select pivot, here select the element at the end of the array
    int pivot = arr[high];
    int i = low - 1; // Index of the smallest element
    // Browse through each element from low to high - 1
    for (int j = low; j < high; j++) {
      if (arr[j] <= pivot) {
        i++;
        _swap(arr, i, j);
      }
    }
    _swap(arr, i + 1, high);
    return i + 1;
  }

  void _swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}
