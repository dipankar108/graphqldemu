import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphqldemu/main.dart';

class API {
  void main() {
    final HttpLink httpLink =
        HttpLink(uri: "https://countries.trevorblades.com/");
    final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        link: httpLink,
        cache: InMemoryCache(),
      ),
    );
  }
}
