

import '../../features/feature_change_password_page/presentations/screens/feature_change_password_page.dart';
import '../../features/feature_change_profile_page/presentations/screens/change_profile.dart';
import '../../features/feature_forget_password_page/presentations/screens/feature_forget_password_page.dart';

import '../../features/feature_landing_page/presentations/screens/feature_landing_page.dart';
import '../../features/feature_reset_password_page/presentations/screens/reset_password.dart';

import '../../features/feature_verify_code_page/presentations/screens/feature_verify_code_page.dart';
import 'package:flutter/material.dart';
import '../../features/feature_login_page/presentations/screens/feature_login_page.dart';
import '../../features/feature_setting_page/presentations/screens/setting_page.dart';
import '../../features/feature_successfully_page/presentations/screens/feature_successfully_page.dart';
import '../../features/manager/feature_add_grade_page/presentations/screens/add_grade_page.dart';
import '../../features/manager/feature_add_student_page/presentations/screens/feature_add_student_page.dart';
import '../../features/manager/feature_add_teacher_page/presentations/screens/add_teacher_page.dart';
import '../../features/manager/feature_garde_details_page/presentations/screens/grade_details_page.dart';
import '../../features/manager/feature_grades_page/presentations/screens/grades_page.dart';
import '../../features/manager/feature_home_manager_page/presentations/screens/feature_home_manager.dart';
import '../../features/manager/feature_profile_manager_page/presentations/screens/profile_manager.dart';
import '../../features/student/feature_quiz_degree_page/presentations/screens/quiz_degree.dart';
import '../../features/student/feature_student_profile_page/presentations/screens/student_profile_page.dart';
import '../../features/student/feature_students_exams_page/presentations/screens/student_exams.dart';
import '../../features/student/feature_subject_details_page/presentations/screens/subject_details.dart';
import '../../features/teacher/feature_add_exam_page/presentations/screens/add_exam_page.dart';
import '../../features/teacher/feature_profile_teacher_page/presentations/screens/profile_teacher.dart';
import '../../features/teacher/feature_quiz_update_degree_page/presentations/screens/quiz_update_degree_page.dart';
import '../../features/teacher/feature_students_page/presentations/screens/students_page.dart';
import '../../features/teacher/feature_teacher_home_page/presentations/screens/feature_teacher_home.dart';
import 'routers.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //LandingPage
      case Routes.landingPage:
        return MaterialPageRoute(
          builder: (context) => const LandingPage(),
        );
        //LoginPage
      case Routes.loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
        //ForgetPasswordPage
      case Routes.forgetPasswordPage:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordPage(),
        );
        // VerifyCodePage
      case Routes.verifyCodePage:
        return MaterialPageRoute(
          builder: (context) => const VerifyCodePage(),
        );
        //change password
      case Routes.changePasswordPage:
        return MaterialPageRoute(
          builder: (context) => const ChangePasswordPage(),
        );
        //SuccessfullyPage
      case Routes.successfullyPage:
        return MaterialPageRoute(
          builder: (context) => const SuccessfullyPage(),
        );
    //home Manager Page
      case Routes.homeManagerPage:
        return MaterialPageRoute(
          builder: (context) => const HomeManagerPage(),
        );
    // manager profile
      case Routes.managerProfilePage:
        return MaterialPageRoute(
          builder: (context) => const ProfileManagerPage(),
        );
    // student profile
      case Routes.studentProfilePage:
        return MaterialPageRoute(
          builder: (context) => const StudentProfilePage(),
        );
    // student profile
      case Routes.settingPage:
        return MaterialPageRoute(
          builder: (context) => const SettingPage(),
        );
    // add student from manager
      case Routes.addStudentPage:
        return MaterialPageRoute(
          builder: (context) => const AddStudentPage(),
        );
    // add teacher from manager
      case Routes.addTeacherPage:
        return MaterialPageRoute(
          builder: (context) => const AddTeacherPage(),
        );
    // add student from manager
      case Routes.addGradePage:
        return MaterialPageRoute(
          builder: (context) => const AddGradePage(),
        );
    // grade page
      case Routes.gradePage:
        final Map<String, String> args = settings.arguments as Map<String, String>;
        final String gradeName = args['gradeText']!;
        return MaterialPageRoute(
          builder: (context) => GradesPage(gradeName: gradeName),
        );
    // grade Details page
      case Routes.gradeDetailsPage:
        final String gradeName = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) =>  GradeDetailsPage(gradeName: gradeName),
        );
    // teacher home
      case Routes.teacherHomePage:
        return MaterialPageRoute(
          builder: (context) =>  const TeacherHome(),
        );
    // students Page
      case Routes.studentsPage:
        final String gradeName = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) =>  StudentsPage(gradeName: gradeName),
        );
    // teacher profile page
      case Routes.teacherProfilePage:
        return MaterialPageRoute(
          builder: (context) =>  const ProfileTeacherPage(),
        );
    // add Exam page
      case Routes.addExamPage:
        return MaterialPageRoute(
          builder: (context) =>  const AddExamPage(),
        );
    // change profile page
      case Routes.changeProfilePage:
        return MaterialPageRoute(
          builder: (context) =>  const ChangeProfile(),
        );
    // student Exams page
      case Routes.studentExamsPage:
        return MaterialPageRoute(
          builder: (context) =>    const StudentExamsPage(),
        );
    // student Exams page
      case Routes.quizUpdatedDegreePage:
        final String quizName = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) =>   QuizUpdateDegreePage(quizName: quizName),
        );
    // student Exams page
      case Routes.quizDegreePage:
        final String quizName = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) =>   QuizDegree(quizName: quizName),
        );
    // subject details page
      case Routes.subjectDetailsPage:
        final String subjectName = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) =>    SubjectDetailsPage(subjectName: subjectName)
        );
    // student Exams page
      case Routes.resetPasswordPage:
        return MaterialPageRoute(
          builder: (context) =>   const ResetPassword(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text("No route defind ${settings.name}")),
          ),
        );
    }
  }
}
