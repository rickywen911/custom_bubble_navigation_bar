// Copyright (c) 2020 Ricky Wen
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: <Widget>[
            _buildOriginDesign(),
            _buildLightDesign(),
            _buildNoElevation(),
            _buildCustomIconDesign(),
          ],
        ),
      ),
    );
  }

  Widget _buildOriginDesign() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        Text('Dribbble'),
        SizedBox(
          height: 8.0,
        ),
        CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: Colors.white,
          strokeColor: Colors.white,
          unSelectedColor: Color(0xff6c788a),
          backgroundColor: Color(0xff040307),
          items: [
            CustomNavigationBarItem(
              icon: Icons.home,
            ),
            CustomNavigationBarItem(
              icon: Icons.shopping_cart,
            ),
            CustomNavigationBarItem(
              icon: Icons.lightbulb_outline,
            ),
            CustomNavigationBarItem(
              icon: Icons.search,
            ),
            CustomNavigationBarItem(
              icon: Icons.account_circle,
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    );
  }

  Widget _buildLightDesign() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        Text('Light'),
        SizedBox(
          height: 8.0,
        ),
        CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: Color(0xff040307),
          strokeColor: Color(0x90040307),
          unSelectedColor: Color(0xffacacac),
          backgroundColor: Colors.white,
          items: [
            CustomNavigationBarItem(
              icon: Icons.home,
            ),
            CustomNavigationBarItem(
              icon: Icons.shopping_cart,
            ),
            CustomNavigationBarItem(
              icon: Icons.lightbulb_outline,
            ),
            CustomNavigationBarItem(
              icon: Icons.search,
            ),
            CustomNavigationBarItem(
              icon: Icons.account_circle,
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    );
  }

  Widget _buildNoElevation() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        Text('No elevation'),
        SizedBox(
          height: 8.0,
        ),
        CustomNavigationBar(
          elevation: 0.0,
          iconSize: 30.0,
          selectedColor: Color(0xff625aff),
          strokeColor: Color(0xff625aff),
          unSelectedColor: Colors.white,
          backgroundColor: Color(0xffa9a5f2),
          items: [
            CustomNavigationBarItem(
              icon: Icons.home,
            ),
            CustomNavigationBarItem(
              icon: Icons.shopping_cart,
            ),
            CustomNavigationBarItem(
              icon: Icons.lightbulb_outline,
            ),
            CustomNavigationBarItem(
              icon: Icons.search,
            ),
            CustomNavigationBarItem(
              icon: Icons.account_circle,
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    );
  }

  Widget _buildCustomIconDesign() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        Text('Custom Icon from Ant Design'),
        SizedBox(
          height: 8.0,
        ),
        CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: Color(0xff0c18fb),
          strokeColor: Colors.grey[200],
          unSelectedColor: Colors.grey[600],
          backgroundColor: Colors.white,
          items: [
            CustomNavigationBarItem(
              icon: AntDesign.getIconData('home'),
            ),
            CustomNavigationBarItem(
              icon: AntDesign.getIconData('shoppingcart'),
            ),
            CustomNavigationBarItem(
              icon: AntDesign.getIconData("cloudo"),
            ),
            CustomNavigationBarItem(
              icon: AntDesign.getIconData('search1'),
            ),
            CustomNavigationBarItem(
              icon: AntDesign.getIconData("user"),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    );
  }
}
