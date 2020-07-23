import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphqldemu/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final HttpLink httpLink =
      HttpLink(uri: 'https://countries.trevorblades.com/');
  ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
    GraphQLClient(
      link: httpLink,
      cache: InMemoryCache(),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      child: HomePage(),
      client: client,
    );
  }
}
