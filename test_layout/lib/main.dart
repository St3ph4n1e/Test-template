import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'VETERINAIRE NAC',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 26, 8, 107)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = const Color.fromARGB(255, 49, 189, 179);

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'VUADENS, SUISSE',
            style: TextStyle(color: Color.fromARGB(255, 26, 8, 107)),
          ),
          Text(
            '''\n
        CDI ou CDD
        URGENCE NUITS 
        DES QUE POSSIBLE''',
            softWrap: true,
            style: TextStyle(color: Color.fromARGB(255, 26, 8, 107)),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Template Veto Test'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'images/snake.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headlineMedium!.fontSize! *
                              1.0 +
                          17.0,
                ),
                padding: const EdgeInsets.only(top: 8.0),
                margin: const EdgeInsets.only(left: 40, right: 40),
                color: const Color.fromRGBO(199, 235, 232, 0.7),
                alignment: Alignment.center,
                transform: Matrix4.skewY(-0.1),
                child: Text('CLINIQUE DES ROSIERS',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.blue.shade900)),
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headlineMedium!.fontSize! *
                              1.0 +
                          17.0,
                ),
                padding: const EdgeInsets.only(top: 8.0),
                margin: const EdgeInsets.only(left: 40, right: 40),
                color: const Color.fromRGBO(132, 216, 190, 0.3),
                alignment: Alignment.center,
                transform: Matrix4.skewY(-0.08),
                child: Text('RECRUTE',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.blue.shade900)),
              ),
              titleSection,
              textSection,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 49, 189, 179),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  print('button pressed!');
                },
                child: const Text('Plus d\'informations'),
              ),
              const SizedBox(height: 30),
              buttonSection,
            ],
          ),
        ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class BigCard extends StatelessWidget {
  final String string;

  const BigCard({
    super.key,
    required this.string,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.titleLarge!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      margin: const EdgeInsets.only(left: 40, right: 40),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          string,
          style: style,
          semanticsLabel: "",
        ),
      ),
    );
  }
}
