import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'screens/dashboard/dashboard_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assurance App',
      theme: AppTheme.lightTheme,
      home: const DashboardScreen(),
       // Ceci est le thème de votre application.
        //
        // ESSAYEZ CECI : Essayez d’exécuter votre application avec "flutter run".
        // Vous verrez que l’application possède une barre d’outils violette.
        // Ensuite, sans quitter l’application, essayez de changer la seedColor
        // dans le colorScheme ci-dessous en Colors.green puis lancez un "hot reload"
        // (en sauvegardant vos modifications ou en appuyant sur le bouton "hot reload"
        // dans un IDE compatible Flutter, ou en appuyant sur "r" si vous avez utilisé
        // la ligne de commande pour démarrer l’application).
        // Remarquez que le compteur ne revient pas à zéro ; l’état de l’application
        // n’est pas perdu pendant le rechargement. Pour réinitialiser l’état,
        // utilisez plutôt un "hot restart".

        // Cela fonctionne aussi pour le code, pas seulement pour les valeurs :
        // la plupart des modifications de code peuvent être testées simplement
        // avec un hot reload.
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Ce widget est la page d’accueil de votre application. Il est "stateful",
  // ce qui signifie qu’il possède un objet State (défini ci-dessous)
  // contenant des champs qui influencent son apparence.
  //
  // Cette classe est la configuration de l’état. Elle contient les valeurs
  // (dans ce cas, le titre) fournies par le parent (ici le widget App)
  // et utilisées par la méthode build du State.
  // Les champs dans une sous-classe de Widget sont toujours marqués "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Cet appel à setState informe le framework Flutter que quelque chose
      // a changé dans cet état (State), ce qui entraîne la réexécution de
      // la méthode build ci-dessous afin que l’affichage reflète les valeurs mises à jour.
      // Si nous modifions _counter sans appeler setState(), alors la méthode build
      // ne sera pas rappelée, et donc rien ne semblera se produire.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Cette méthode est réexécutée chaque fois que setState est appelé,
    // par exemple comme cela est fait par la méthode _incrementCounter ci-dessus.
    //
    // Le framework Flutter a été optimisé pour rendre la réexécution des méthodes
    // build rapide, afin que vous puissiez simplement reconstruire tout ce qui
    // doit être mis à jour plutôt que de devoir modifier individuellement
    // chaque instance de widget.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column est également un widget de mise en page. Il prend une liste
          // d’enfants (children) et les organise verticalement. Par défaut,
          // il ajuste sa taille horizontalement en fonction de ses enfants,
          // et essaie d’être aussi haut que son parent.
          //
          // Column possède plusieurs propriétés pour contrôler sa taille
          // et la position de ses enfants. Ici, nous utilisons mainAxisAlignment
          // pour centrer les enfants verticalement ; l’axe principal est ici
          // l’axe vertical car les Columns sont verticales (l’axe transversal
          // serait horizontal).
          //
          // ESSAYEZ CECI : Activez le "debug painting" (choisissez l’action
          // "Toggle Debug Paint" dans l’IDE, ou appuyez sur "p" dans la console)
          // pour voir la structure (wireframe) de chaque widget.
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
