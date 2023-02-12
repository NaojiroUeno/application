import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'チェックリスト',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const CheckList(title: 'チェックリスト'),
    );
  }
}

class CheckList extends StatefulWidget {
  const CheckList({super.key, required this.title});

  final String title;

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  bool _flag = false;

  void _handleCheckbox(bool? e) {
    setState(() {
      _flag = e!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("test button")),
      body: DataTable(
        columns: [
          DataColumn(
            label: Text('名前'),
          ),
          DataColumn(
            label: Text('年齢'),
          ),
          DataColumn(
            label: Text('性別'),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('太郎')),
              DataCell(Text('19')),
              DataCell(Text('男')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('さゆり')),
              DataCell(Text('24')),
              DataCell(Text('女')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('吾郎')),
              DataCell(Text('34')),
              DataCell(Text('男')),
            ],
          ),
        ],
      ),
      // body: Center(
      //     child: Row(
      //   mainAxisSize: MainAxisSize.min,
      //   children: <Widget>[
      //     Checkbox(
      //       activeColor: Colors.blue, // Onになった時の色を指定
      //       value: _flag, // チェックボックスのOn/Offを保持する値
      //       onChanged: _handleCheckbox, // チェックボックスを押下した際に行う処理
      //     ),
      //     Text(
      //       "内容",
      //     ),
      //     Checkbox(
      //       activeColor: Colors.blue, // Onになった時の色を指定
      //       value: _flag, // チェックボックスのOn/Offを保持する値
      //       onChanged: _handleCheckbox, // チェックボックスを押下した際に行う処理
      //     ),
      //     Text(
      //       "内容",
      //     ),
      //   ],
      // )
      // child: TextButton(
      //   child: Text("back"),
      //   // （1） 前の画面に戻る
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      // ),
    );
  }
}
