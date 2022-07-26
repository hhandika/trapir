import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trapir/models/project.dart';
import 'package:trapir/providers/projects.dart';

import 'package:uuid/uuid.dart';

import 'project_home.dart';

class NewProjectForm extends ConsumerStatefulWidget {
  const NewProjectForm({Key? key}) : super(key: key);

  @override
  NewProjectFormState createState() => NewProjectFormState();
}

class NewProjectFormState extends ConsumerState<NewProjectForm> {
  final _formKey = GlobalKey<FormState>();
  final _uuidKey = const Uuid().v4();
  final projectNameController = TextEditingController();
  final descriptionController = TextEditingController();
  final piController = TextEditingController();
  final collectorController = TextEditingController();

  bool isInvalid = false;
  dynamic _validationMsg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Create a new project'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Focus(
                            child: ProjectFormField(
                              controller: projectNameController,
                              labelText: 'Project name*',
                              hintText:
                                  'Enter the name of the project (required)',
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(50),
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[a-zA-Z0-9-_]+|\s'),
                                ),
                              ],
                              validator: (value) => _validationMsg,
                            ),
                            onFocusChange: (hasFocus) {
                              // if (!hasFocus) {
                              //   _checkProjectName();
                              // }
                            },
                          ),
                          ProjectFormField(
                            controller: descriptionController,
                            labelText: 'Project description',
                            hintText:
                                'Enter a description of the project (optional)',
                          ),
                          ProjectFormField(
                            controller: piController,
                            labelText: 'Principal Investigator',
                            hintText: 'Enter PI name of the project (optional)',
                          ),
                          ProjectFormField(
                            controller: collectorController,
                            hintText:
                                'Enter the name of the collector (required)',
                            labelText: 'Cataloger*',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Collector name is required';
                              }
                              return null;
                            },
                          ),
                          Wrap(spacing: 10, children: [
                            ElevatedButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  _createProject();
                                  _goToProjectHome();
                                }
                              },
                              child: const Text(
                                'Create',
                              ),
                            )
                          ])
                        ],
                      )))),
        ));
  }

  Future<void> _createProject() async {
    final data = Projects(
      _uuidKey,
      projectNameController.text,
      descriptionController.text,
      '',
      DateTime.now(),
      DateTime.now(),
      piController.text,
      collectorController.text,
    );
    ref.read(realmProvider).addProject(data);
  }

  // Future _checkProjectName() async {
  //   _validationMsg = null;
  //   setState(() {});

  //   if (projectNameController.text.isEmpty) {
  //     _validationMsg = 'Project name is required';
  //     setState(() {});
  //     return;
  //   }

  //   bool isExist = await ProjectModel(context: context)
  //       .isProjectExists(projectNameController.text);
  //   if (isExist) {
  //     _validationMsg = 'Project name already exists';
  //     return;
  //   }
  // }

  Future<void> _goToProjectHome() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProjectHome(projectUuid: _uuidKey)),
    );
  }
}

class ProjectFormField extends StatelessWidget {
  const ProjectFormField(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.controller,
      this.keyboardType,
      this.inputFormatters,
      this.onSaved,
      this.validator})
      : super(key: key);

  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final String? Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
          ),
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          validator: validator,
          onSaved: onSaved,
        ));
  }
}

extension StringValidator on String {
  bool get isValidCatNum {
    final catNumRegex = RegExp(r'^[0-9]+$');
    return catNumRegex.hasMatch(this);
  }

  bool get isValidProjectName {
    final projectNameRegex = RegExp(r'^[a-zA-Z0-9-_ ]+$');
    return projectNameRegex.hasMatch(this);
  }

  bool get isValidEmail {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$');
    return emailRegex.hasMatch(this);
  }
}
