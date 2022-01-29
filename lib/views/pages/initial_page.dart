import 'package:flutter/material.dart';
import 'package:portal_talentos_frontend/controllers/initial_controller.dart';
import 'package:portal_talentos_frontend/views/pages/register_candidate_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  late InitialController _initialController;

  @override
  void initState() {
    _initialController = InitialController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: _initialController.scaffoldKey,
      body: Stack(
        children: [
          const Center(
            child: Text('Cadastro de Estudantes'),
          ),
          IconButton(
              onPressed: () {
                _initialController.scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Cadastro de Candidatos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterCandidatePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Lista de Candidatos'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
