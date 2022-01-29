import 'package:flutter/material.dart';
import 'package:portal_talentos_frontend/views/pages/register_candidate_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return const RegisterCandidatePage();
        },
      ),
    );
  }
}
