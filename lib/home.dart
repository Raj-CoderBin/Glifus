import 'package:flutter/material.dart';
import 'package:glifus/service/database_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final DatabaseService _databaseService = DatabaseService.instance;

  String? _task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: _addTaskbutton());
  }

  Widget _addTaskbutton() {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Add Task'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _task = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Subscribe',
                  ),
                ),
                MaterialButton(
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    if (_task == null || _task == "") return;
                    _databaseService.addTask(_task!);
                    setState(() {
                      _task == null;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'done',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
