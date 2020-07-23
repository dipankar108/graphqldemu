import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphqldemu/main.dart';

import 'Countries.dart';
import 'countryNameModel.dart';

class API {
  Future<CountryNameModel> getAllcountryName() async {
    const String getCountryName = r"""
   query getAllCountryName{
  continents{name}
}
    """;
    final HttpLink httpLink =
        HttpLink(uri: "https://countries.trevorblades.com/");
    final GraphQLClient client = GraphQLClient(
      link: httpLink,
      cache: InMemoryCache(),
    );
    QueryOptions queryName = QueryOptions(documentNode: gql(getCountryName));
    QueryResult result = await client.query(queryName);
    List<Countries> countries = [];
    result.data['continents'].forEach(
      (d) {
        countries.add(
          Countries(countries: d['name']),
        );
      },
    );
  }
}
