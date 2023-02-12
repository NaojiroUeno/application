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
      body: Container(
        child: DataTable(
          columns: [
            DataColumn(
              label: Text(''),
            ),
            DataColumn(
              label: Text('授業名'),
            ),
            DataColumn(
              label: Text('区分'),
            ),
            DataColumn(
              label: Text('単位数'),
            ),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  Checkbox(
                    activeColor: Colors.blue, // Onになった時の色を指定
                    value: _flag, // チェックボックスのOn/Offを保持する値
                    onChanged: _handleCheckbox, // チェックボックスを押下した際に行う処理
                  ),
                ),
                DataCell(Text('学問への扉')),
                DataCell(Text('教養教育科目')),
                DataCell(Text('2')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Checkbox(
                    activeColor: Colors.blue, // Onになった時の色を指定
                    value: _flag, // チェックボックスのOn/Offを保持する値
                    onChanged: _handleCheckbox, // チェックボックスを押下した際に行う処理
                  ),
                ),
                DataCell(Text('基盤教養教育科目')),
                DataCell(Text('教養教育科目')),
                DataCell(Text('2')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Checkbox(
                    activeColor: Colors.blue, // Onになった時の色を指定
                    value: _flag, // チェックボックスのOn/Offを保持する値
                    onChanged: _handleCheckbox, // チェックボックスを押下した際に行う処理
                  ),
                ),
                DataCell(Text('基盤教養教育科目')),
                DataCell(Text('教養教育科目')),
                DataCell(Text('2')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Checkbox(
                    activeColor: Colors.blue, // Onになった時の色を指定
                    value: _flag, // チェックボックスのOn/Offを保持する値
                    onChanged: _handleCheckbox, // チェックボックスを押下した際に行う処理
                  ),
                ),
                DataCell(Text('基盤教養教育科目')),
                DataCell(Text('教養教育科目')),
                DataCell(Text('2')),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        //onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
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
