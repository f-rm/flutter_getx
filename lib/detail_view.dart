import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'zipcode_search_model.dart';

class DetailView extends StatelessWidget {
  ZipCodeSearchResult? searchResult = null;
  DetailView({Key? key, required this.searchResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _pageContents(context, searchResult);
  }
}

Widget _pageContents(BuildContext context, ZipCodeSearchResult? searchResult) {
  return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("詳細画面"),
      ),
      body: Center(
          child: Column(children: [
        SizedBox(height: 100),
        _buildWebView(context, searchResult)
      ])));
}

Widget _buildWebView(BuildContext context, ZipCodeSearchResult? searchResult) {
  if (searchResult == null) {
    return Text("");
  }
  return Text(_getDisplayAddress(searchResult),
      style: TextStyle(color: Colors.black, fontSize: 32.0));
}

String _getDisplayAddress(ZipCodeSearchResult? searchResult) {
  if (searchResult == null) {
    return "";
  }
  return "${searchResult.zipcode}\n${searchResult.address1}${searchResult.address2}${searchResult.address3}";
}
