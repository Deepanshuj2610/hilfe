import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hilfe/manga.dart';
import 'package:hilfe/helper.dart';

class HealthFacts extends StatefulWidget {

  @override
  _HealthFacts createState() => _HealthFacts();
}

class _HealthFacts extends State<HealthFacts> {
  Helper _helper = Helper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Facts"),
      ),
      body: FutureBuilder<List<Manga>>(
        initialData: List<Manga>(),
        future: _helper.getAllManga(),
        builder: (BuildContext context, AsyncSnapshot<List<Manga>> snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: RefreshProgressIndicator(),
              );
            case ConnectionState.none:
              return Center(
                child: Text('Tidak ada koneksi'),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text('Data yang diterima salah'),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.book),
                    title: Text(snapshot.data[index].title),
                    onTap: () async {
                      if (await canLaunch(snapshot.data[index].url)) {
                        await launch(snapshot.data[index].url);
                      }
                    },
                  );
                },
              );
          }
        },
      ),
    );
  }
}

