import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphqldemu/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final HttpLink httpLink =
      HttpLink(uri: 'https://countries.trevorblades.com/');
  ValueNotifier<GraphQLClient> _client = ValueNotifier(GraphQLClient(
      link: httpLink,
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject)));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: GraphQLProvider(
          client: _client,
          child: HomePage(),
        ),
      ),
    );
  }
}
