import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter(int credit) {
    setState(() {
      _counter += credit;
      //print(_counter);
    });
  }

  void _decrementCounter(int credit) {
    setState(() {
      _counter -= credit;
      //print(_counter);
    });
  }

  List<Map> _list = [
    {'check': false, 'name': '学問の扉', 'credit': 2, 'type': 'education'},
    {'check': false, 'name': '基盤教養教育科目', 'credit': 2, 'type': 'education'},
    {'check': false, 'name': '基盤教養教育科目', 'credit': 2, 'type': 'education'},
    {'check': false, 'name': '基盤教養教育科目', 'credit': 2, 'type': 'education'},
    {'check': false, 'name': '健康・スポーツ教育科目', 'credit': 1, 'type': 'education'},
    {'check': false, 'name': '健康・スポーツ教育科目', 'credit': 1, 'type': 'education'},
    {'check': false, 'name': '情報教育科目', 'credit': 2, 'type': 'education'},
    {
      'check': false,
      'name': '高度教養教育科目（基礎工学の量子物理学1）',
      'credit': 1,
      'type': 'education'
    },
    {
      'check': false,
      'name': '高度教養教育科目（基礎工学の量子物理学2）',
      'credit': 1,
      'type': 'education'
    },
    {
      'check': false,
      'name': '高度教養教育科目（基礎工学の化学1）',
      'credit': 1,
      'type': 'education'
    },
    {
      'check': false,
      'name': '高度教養教育科目（基礎工学の化学2）',
      'credit': 1,
      'type': 'education'
    },
    {
      'check': false,
      'name': '高度教養教育科目（基礎工学の力学）',
      'credit': 2,
      'type': 'education'
    },
    {
      'check': false,
      'name': '高度教養教育科目（基礎工学の知能システム学）',
      'credit': 2,
      'type': 'education'
    },
    {
      'check': false,
      'name': '高度教養教育科目（基礎工学の生命科学）',
      'credit': 2,
      'type': 'education'
    },
    {
      'check': false,
      'name': '高度教養教育科目（基礎工学のサイバネティックス）',
      'credit': 2,
      'type': 'education'
    }, // ここまで教養科目
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門基礎教育科目', 'credit': 2, 'type': 'specialty'},
    {
      'check': false,
      'name': '専門基礎教育科目',
      'credit': 2,
      'type': 'specialty'
    }, // ここまで専門基礎科目
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '専門教育科目（選択）', 'credit': 2, 'type': 'specialty'},
    {
      'check': false,
      'name': '専門教育科目（選択）',
      'credit': 2,
      'type': 'specialty'
    }, // ここまで選択必修
    {'check': false, 'name': '情報科学序説', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '情報科学基礎', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': 'プログラミングA', 'credit': 3, 'type': 'specialty'},
    {'check': false, 'name': 'プログラミングB', 'credit': 3, 'type': 'specialty'},
    {'check': false, 'name': 'プログラミングC', 'credit': 3, 'type': 'specialty'},
    {'check': false, 'name': 'プログラミングD', 'credit': 3, 'type': 'specialty'},
    {'check': false, 'name': '情報数学基礎', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '電子回路', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '情報解析A', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': 'データ構造とアルゴリズム', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '情報技術者と社会', 'credit': 2, 'type': 'specialty'},
    {
      'check': false,
      'name': '基礎工学PBL（情報工学A）',
      'credit': 2,
      'type': 'specialty'
    },
    {
      'check': false,
      'name': '基礎工学PBL（情報工学B）',
      'credit': 2,
      'type': 'specialty'
    },
    {'check': false, 'name': '情報科学演習C', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '情報科学演習D', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '情報科学実験A', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '情報科学実験B', 'credit': 1, 'type': 'specialty'},
    {'check': false, 'name': '情報科学実験C', 'credit': 1, 'type': 'specialty'},
    {'check': false, 'name': '情報科学ゼミナールA', 'credit': 1, 'type': 'specialty'},
    {'check': false, 'name': '論理設計', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '計算機言語', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '計算機アーキテクチャ', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': 'オペレーティングシステム', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': 'データベース', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '情報ネットワーク', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '言語処理工学A', 'credit': 2, 'type': 'specialty'},
    {'check': false, 'name': '防災特論', 'credit': 1, 'type': 'specialty'},
    {
      'check': false,
      'name': '特別研究（卒業研究）',
      'credit': 8,
      'type': 'specialty'
    }, // ここまで必修
    {'check': false, 'name': 'ディジタル回路', 'credit': 2, 'type': 'A'},
    {'check': false, 'name': '情報解析B', 'credit': 2, 'type': 'A'},
    {'check': false, 'name': '情報論理学', 'credit': 2, 'type': 'A'},
    {'check': false, 'name': 'プログラム設計', 'credit': 2, 'type': 'A'},
    {'check': false, 'name': '情報論A', 'credit': 2, 'type': 'A'},
    {'check': false, 'name': '情報論B', 'credit': 2, 'type': 'A'},
    {'check': false, 'name': '計算理論', 'credit': 2, 'type': 'A'},
    {'check': false, 'name': 'ソフトウェア構成論', 'credit': 2, 'type': 'A'},
    {'check': false, 'name': '計算機援用工学A', 'credit': 2, 'type': 'A'}, // ここまで選択群A
    {'check': false, 'name': '数学A', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '数学B', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '数学C', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '数学D', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '計画数学', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '統計数学A', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '統計数学B', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '応用数理A', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '応用数理B', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '応用数理C', 'credit': 2, 'type': 'B'},
    {'check': false, 'name': '応用数理D', 'credit': 2, 'type': 'B'}, // ここまで選択群B
    {'check': false, 'name': 'ヒューマン・コンピュータ・インタラクション', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': '言語処理工学B', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': '知識工学', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': '計算機援用工学B', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': '実践PBL', 'credit': 3, 'type': 'C'},
    {'check': false, 'name': '情報科学特論A', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': '情報科学特論B', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': '数値計算', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': 'データ科学', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': '技術経営学', 'credit': 2, 'type': 'C'},
    {'check': false, 'name': '科学特論 A1', 'credit': 1, 'type': 'C'},
    {'check': false, 'name': '科学特論 A2', 'credit': 1, 'type': 'C'},
    {'check': false, 'name': '科学特論 B1', 'credit': 1, 'type': 'C'},
    {'check': false, 'name': '科学特論 B2', 'credit': 1, 'type': 'C'}, // ここまで選択群C
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第一外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第一外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第一外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第一外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第一外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第一外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第一外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第一外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第二外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第二外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（第二外国語）',
      'credit': 1,
      'type': 'international'
    },
    {
      'check': false,
      'name': 'マルチリンガル教育科目（グローバル理解）',
      'credit': 2,
      'type': 'international'
    },
    {
      'check': false,
      'name': '高度国際性涵養教育科目（情報ゼミナールB）',
      'credit': 1,
      'type': 'international'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("取得単位数: $_counter/122"),
        ),
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
                            if (selected == true) {
                              _incrementCounter(e['credit']);
                              //print(e['credit']);
                            } else {
                              _decrementCounter(e['credit']);
                            }
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
