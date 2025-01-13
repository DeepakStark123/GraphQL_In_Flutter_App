import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_graphql_app/query.dart';

class CollegesPage extends StatelessWidget {
  const CollegesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colleges')),
      body: Query(
        options: QueryOptions(
          document: gql(fetchCollegesQuery), // Define the query
        ),
        builder: (QueryResult result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (result.hasException) {
            return Center(child: Text('Error: ${result.exception.toString()}'));
          }

          final colleges = result.data?['colleges'] as List<dynamic>;
          return ListView.builder(
            itemCount: colleges.length,
            itemBuilder: (context, index) {
              final college = colleges[index];
              return ListTile(
                title: Text('${college['name']}'),
                subtitle: Text('Location: ${college['location']}\nRating: ${college['rating']}'),
              );
            },
          );
        },
      ),
    );
  }
}
