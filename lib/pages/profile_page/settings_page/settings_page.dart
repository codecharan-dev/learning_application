import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/pages/profile_page/settings_page/bloc/settings_bloc.dart';
import 'package:learning_app/pages/profile_page/settings_page/widgets/settings_page_widgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: settingsAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Container(
              margin: const EdgeInsets.only(),
              child: Column(
                children: [
                  logOutButton(context),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
