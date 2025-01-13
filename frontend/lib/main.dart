import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_graphql_app/student_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter(); // Initialize Hive for caching

  // Setup the GraphQL client
  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: HttpLink('http://192.168.2.16:9000/graphql'), // Replace with your GraphQL endpoint
      cache: GraphQLCache(store: HiveStore()), // Cache configuration
    ),
  );

  runApp(
    GraphQLProvider(
      client: client,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GraphQL Example',
      home: StudentsPage(), // Switch to CollegesPage for college data
    );
  }
}
