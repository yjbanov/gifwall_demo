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

const _urls = <String>{
  'assets/dash0.webp',
  'assets/dash1.webp',
  'assets/dash2.webp',
  'assets/dash3.webp',
  'assets/dash4.webp',
  'assets/dash5.webp',
  'assets/dash6.webp',
  'assets/dash7.webp',
  'assets/Excited.gif',
  'assets/Excited_2.gif',
  'assets/Faintwithhat.gif',
  'assets/Faintwithouthat.gif',
  'assets/Flying.gif',
  'assets/Glasses.gif',
  'assets/Jumping.gif',
  'assets/Lookingaround.gif',
  'assets/Tilthead.gif',
  'assets/Waving.gif',
};

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
              for (String url in _urls) Image.network(url),
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
