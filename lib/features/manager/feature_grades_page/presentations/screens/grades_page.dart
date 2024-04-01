import 'package:ablexa/core/helper/extentions.dart';
import 'package:flutter/material.dart';
import '../../../../../core/Routing/routers.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../generated/l10n.dart';
import '../widgets/grade_widget.dart';

class GradesPage extends StatefulWidget {
  const GradesPage({Key? key, required this.gradeName}) : super(key: key);
 final String gradeName;
  @override
  _GradesPageState createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  List<String> gradeList = ['Grade 1'];

  void deleteGrade(int index) {
    setState(() {
      gradeList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.mainColor, onPressed: () {
          context.pushNamed(Routes.addGradePage);
      },
        child: const Icon(Icons.add,color: ColorsManager.mainWhite),),
      appBar: AppBar(
        title: Text(S.of(context).grades),
        elevation: 0,
        backgroundColor: ColorsManager.mainWhite,
        foregroundColor: ColorsManager.mainBlack,
      ),
      body: ListView.builder(
        itemCount: gradeList.length,
        itemBuilder: (context, index) => GradeWidget(
          gradeName:widget.gradeName,
          deleteAction: () => deleteGrade(index),
        ),
      ),
    );
  }
}
