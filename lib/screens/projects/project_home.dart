import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:trapir/screens/home.dart';
import 'package:trapir/screens/projects/new_project.dart';

class ProjectHome extends StatefulWidget {
  const ProjectHome({Key? key, required this.projectUuid}) : super(key: key);

  final String projectUuid;

  @override
  State<ProjectHome> createState() => _ProjectHomeState();
}

class _ProjectHomeState extends State<ProjectHome> {
  final int _defaultIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project Home"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      // floatingActionButton: SpeedDial(
      //   icon: Icons.add,
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   foregroundColor: Theme.of(context).colorScheme.onInverseSurface,
      //   direction: SpeedDialDirection.down,
      //   children: [
      //     SpeedDialChild(
      //       child: Icon(Icons.image,
      //           color: Theme.of(context).colorScheme.onInverseSurface),
      //       backgroundColor: Theme.of(context).colorScheme.secondary,
      //       label: 'New Notes',
      //       onTap: () {
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => const NewProjectForm()),
      //         // );
      //       },
      //     ),
      //     SpeedDialChild(
      //       child: Icon(Icons.place,
      //           color: Theme.of(context).colorScheme.onInverseSurface),
      //       backgroundColor: Theme.of(context).colorScheme.secondary,
      //       label: 'New Sites',
      //       onTap: () {
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => const NewProjectForm()),
      //         // );
      //       },
      //     ),
      //     SpeedDialChild(
      //       child: Icon(Icons.timeline,
      //           color: Theme.of(context).colorScheme.onInverseSurface),
      //       backgroundColor: Theme.of(context).colorScheme.secondary,
      //       label: 'New CollEvents',
      //       onTap: () {
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => const NewProjectForm()),
      //         // );
      //       },
      //     ),
      //     SpeedDialChild(
      //       child: Icon(Icons.pets,
      //           color: Theme.of(context).colorScheme.onInverseSurface),
      //       backgroundColor: Theme.of(context).colorScheme.secondary,
      //       label: 'New Specimens',
      //       onTap: () {
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => const NewProjectForm()),
      //         // );
      //       },
      //     ),
      //   ],
      // ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              accountName: const Text(
                "Heru Handika",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: const Text(
                "handika@email.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "H",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.create),
              title: const Text('Create a new project'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewProjectForm()),
                );
              },
            ),
            const Divider(color: Colors.grey),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text('Bundle records'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.save),
              title: const Text('Save project as'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.table_view),
              title: const Text('Export to csv/tsv'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.picture_as_pdf),
              title: const Text('Export to pdf'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            const Divider(color: Colors.grey),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              // onTap: () {
              //   // Navigator.of(context).pop();
              // },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Close project'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text(
                'Delete all records',
                style: TextStyle(color: Colors.redAccent),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
          ],
        ),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
          ),
          children: [
            ProjectOverview(
              projectUuid: widget.projectUuid,
            )
          ]),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        style: TabStyle.flip,
        elevation: 10,
        color: Theme.of(context).colorScheme.surface,
        initialActiveIndex: _defaultIndex,
        items: [
          TabItem(
            icon: Icon(
              Icons.home_rounded,
              color: Theme.of(context).colorScheme.surface,
            ),
            title: 'Home',
          ),
          TabItem(
            icon: Icon(
              Icons.image_rounded,
              color: Theme.of(context).colorScheme.surface,
            ),
            title: 'Gallery',
          ),
          TabItem(
            icon: Icon(
              Icons.bar_chart_rounded,
              color: Theme.of(context).colorScheme.surface,
            ),
            title: 'Analyses',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const Notes()),
        // );
        break;
      case 1:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const Sites()),
        // );
        break;
      case 2:
        break;
    }
  }
}

class ProjectOverview extends StatelessWidget {
  const ProjectOverview({Key? key, required this.projectUuid})
      : super(key: key);

  final String projectUuid;

  @override
  Widget build(BuildContext context) {
    // final data = ProjectModel(context: context).getProjectByUuid(
    //   projectUuid,
    // );
    return Card(
        color: Theme.of(context).colorScheme.surface,
        child: const SingleChildScrollView(
          child: Text('Project Overview'),
        ));
    // child: FutureBuilder(
    //     future: data,
    //     builder: (context, AsyncSnapshot<ProjectData> snapshot) {
    //       if (snapshot.hasError) {
    //         return showAlert(context, 'Error: ${snapshot.error}');
    //       } else {
    //         return ListTile(
    //             title: const Text('Project Overview'),
    //             subtitle: ProjectInfo(projectData: snapshot.data));
    //       }
    //     })));
  }

  Widget showAlert(BuildContext context, String error) {
    return AlertDialog(
        title: const Text('ERROR!'),
        content: Column(children: [
          Text(
              'Failed fetching data from the database. Check if the project name exists. $error')
        ]));
  }
}
