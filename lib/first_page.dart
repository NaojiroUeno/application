import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<Map> _list = List.generate(
  //   2,
  //   (index) => {
  //     'check': false,
  //     'name': 'Product $index',
  //     'credit': 2,
  //   },
  // );
  List<Map> _list = [
    {'check': false, 'name': '学問の扉', 'credit': 2},
    {'check': false, 'name': '基盤教養教育科目', 'credit': 2},
    {'check': false, 'name': '基盤教養教育科目', 'credit': 2},
    {'check': false, 'name': '基盤教養教育科目', 'credit': 2},
    {'check': false, 'name': '健康・スポーツ教育科目', 'credit': 1},
    {'check': false, 'name': '健康・スポーツ教育科目', 'credit': 1},
    {'check': false, 'name': '情報教育科目', 'credit': 2},
    {'check': false, 'name': '情報教育科目', 'credit': 2},
    {'check': false, 'name': '高度教養教育科目', 'credit': 1},
    {'check': false, 'name': '高度教養教育科目', 'credit': 1},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2},
    {'check': false, 'name': 'マルチリンガル教育科目（第一外国語）', 'credit': 1},
    {'check': false, 'name': 'マルチリンガル教育科目（第一外国語）', 'credit': 1},
    {'check': false, 'name': 'マルチリンガル教育科目（第一外国語）', 'credit': 1},
    {'check': false, 'name': 'マルチリンガル教育科目（第一外国語）', 'credit': 1},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: SingleChildScrollView(
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text('授業名'),
                  ),
                  DataColumn(
                    label: Text('単位'),
                  ),
                ],
                rows: _list
                    .map(
                      (e) => DataRow(
                        selected: e['check'],
                        onSelectChanged: (bool? selected) {
                          setState(() {
                            e['check'] = selected;
                          });
                        },
                        cells: [
                          DataCell(
                            Text('${e['name']}'),
                          ),
                          DataCell(
                            Text('${e['credit']}'),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
