import 'package:base_project/pages/build_layout/column.dart';
import 'package:base_project/pages/build_layout/grid_view.dart';
import 'package:base_project/pages/build_layout/list_view.dart';
import 'package:base_project/pages/build_layout/row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Viti Students Information')),
      ),
      body: _chooseLayout(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Grid View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List View Builder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_column),
            label: 'Column',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_rows),
            label: 'Row',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/first');
        },
        label: const Text('Page 1'),
        icon: const Icon(Icons.navigate_next),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      resizeToAvoidBottomInset: false,
    );
  }
}

 Widget _chooseLayout(_currentIndex) {
  switch(_currentIndex) {
    case 0:
      return BuildGridView();
    case 1:
      return BuildListViewLayout();
    case 2:
      return BuildListViewBuilderLayout();
    case 3:
      return BuildColumnLayout();
    case 4:
      return BuildRowLayout();
    default:
      return BuildGridView();
  }
}
