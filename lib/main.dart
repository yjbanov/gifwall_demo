// Copyright 2013 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

const List<String> urls = <String>[
  'https://media4.giphy.com/media/Ve1cBYXUmh6iyuYSnF/giphy.webp',
  'https://media3.giphy.com/media/fZ31GBoN4EOUb83rIt/giphy.webp',
  'https://media4.giphy.com/media/wP4T2q2sb9vqgz4GZ1/giphy.webp',
  'https://media1.giphy.com/media/RgGfMHu2HLKLwGeGFb/giphy.webp',
  'https://media0.giphy.com/media/3o7TKtpfZ3e8rwww7K/giphy.webp',
  'https://media1.giphy.com/media/4nKnhZsY9mNX9n928r/giphy.webp',
  'https://media4.giphy.com/media/8Rqk3cKgw799pM8U1a/giphy.webp',
  'https://media3.giphy.com/media/3ov9jSfDqguXOoLfhu/giphy.webp',
  'https://media4.giphy.com/media/yh4Q1Hft8zzUgzOybI/giphy.webp',
  'https://media4.giphy.com/media/SF9v8zMYhyvLn9GTTH/giphy.webp',
  'https://media0.giphy.com/media/BwPYESM1eTKgozrKnT/giphy.webp',
  'https://media2.giphy.com/media/Gx9iROMAiZmFtAopIJ/giphy.webp',
  'https://media1.giphy.com/media/wyyqRSqoWGSiP66G6a/giphy.webp',
  'https://media2.giphy.com/media/SWUneSnAJCgy1qSfNG/giphy.webp',
  'https://media0.giphy.com/media/l6oX5SS8vA5n7GSXG2/giphy.webp',
  'https://media2.giphy.com/media/QBpi7TeiDCgQ59VH1O/giphy.webp',
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated image stress test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated image stress test'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: <Widget>[
          if (_show)
            for (int i = 0; i < 50; i++)
              for (String url in urls)
                Image.network(url),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(_show ? 'Hide' : 'Show'),
        onPressed: () {
          setState(() {
            _show = !_show;
          });
        },
      ),
    );
  }
}
