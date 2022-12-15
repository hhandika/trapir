import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:realm/realm.dart';
import 'package:trapir/models/project.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:trapir/providers/projects.dart';

import 'package:trapir/screens/projects/new_project.dart';
import 'package:trapir/screens/projects/project_home.dart';

enum MenuSelection { details, deleteProject }

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends ConsumerState<Home> {
  final Uri _helpUrl = Uri(
      scheme: 'https', host: 'www.github.com', path: 'hhandika/trapir/issues');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("TRAPIR HOME", style: Theme.of(context).textTheme.headline6),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (_) => const Search()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.create),
              title: const Text('Create a new project'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateProjectForm()),
                );
              },
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              // onTap: () {
              //   // Navigator.of(context).pop();
              // },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                return showAboutDialog(
                  context: context,
                  applicationName: 'TRAPIR',
                  applicationVersion: '0.0.1',
                  applicationIcon: const Icon(Icons.info),
                  children: [
                    const Text(
                        'A tool for managing and analyzing camera trap images.'),
                    const Text('It is a work in progress.'),
                    const Text('Please report any bugs or feature requests'),
                  ],
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help and feedback'),
              onTap: () {
                _launchHelpUrl(_helpUrl);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
                width: 600,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                        Text('Existing projects:',
                            style: Theme.of(context).textTheme.headlineSmall),
                      ]),
                      Divider(
                        color: Theme.of(context).colorScheme.onSurface,
                        thickness: 1.5,
                      ),
                      _drawListView(),
                    ]))),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add_outlined,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onInverseSurface,
        children: [
          SpeedDialChild(
            child: Icon(Icons.create_outlined,
                color: Theme.of(context).colorScheme.onInverseSurface),
            backgroundColor: Theme.of(context).colorScheme.primary,
            label: 'New Project',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreateProjectForm()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _drawListView() {
    Future<RealmResults<Projects>> projectList =
        ref.read(realmProvider).getProjects();
    return Expanded(
      child: FutureBuilder<RealmResults<Projects>>(
        future: projectList,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                  leading: Icon(
                    Icons.insert_drive_file_outlined,
                    size: 40,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  title: Text(
                    snapshot.data![index].projectName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Text(
                    snapshot.data![index].uuid,
                    style: const TextStyle(fontSize: 8),
                  ),
                  trailing: PopupMenuButton<MenuSelection>(
                      onSelected: _onPopupMenuSelected,
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<MenuSelection>>[
                            PopupMenuItem<MenuSelection>(
                              value: MenuSelection.details,
                              child: const Text('Info'),
                              onTap: () async {
                                // _getProjectInfo(
                                //     context, snapshot.data![index].uuid);
                              },
                            ),
                            PopupMenuItem<MenuSelection>(
                              value: MenuSelection.deleteProject,
                              onTap: () async {
                                // _deleteProject(
                                //     context, snapshot.data![index].uuid);
                              },
                              child: const Text('Delete',
                                  style: TextStyle(color: Colors.red)),
                            ),
                          ]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProjectHome(
                                projectUuid: snapshot.data![index].uuid,
                              )),
                    );
                  },
                ));
              },
            );
          }
          return const Center(
            child: Text('No projects found.'),
          );
        },
      ),
    );
  }

  void _onPopupMenuSelected(MenuSelection item) {
    switch (item) {
      case MenuSelection.details:
        setState(() {});
        break;
      case MenuSelection.deleteProject:
        setState(() {});
        break;
    }
  }

  // Future<List<ListProjectResult>> _getProjectList() async {
  //   return Provider.of<Database>(context, listen: false).getProjectList();
  // }

  // Future<void> _getProjectInfo(BuildContext context, uuid) async {
  //   final projectData = await ProjectModel(context: context).getProjectByUuid(
  //     uuid,
  //   );

  //   return showDialog<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Project information'),
  //         content: SingleChildScrollView(
  //           child: ProjectInfo(
  //             projectData: projectData,
  //           ),
  //         ),
  //         actions: <Widget>[
  //           ElevatedButton(
  //             child: const Text('Close'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  Future<void> _launchHelpUrl(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}
