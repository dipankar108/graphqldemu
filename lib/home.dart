import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Query(
          options: QueryOptions(documentNode: gql(r"""
query{
  continents{
name
  }
}
  """)),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.data == null) {
              return Text('Data Is Loading');
            } else {
              List datal = result.data['continents'];
              return ListView.builder(
                  itemCount: datal.length,
                  itemBuilder: (context, index) {
                    return Text(datal[index]['name']);
                  });
            }
          }),
    );
  }
}
