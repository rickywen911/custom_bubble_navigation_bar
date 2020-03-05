# custom_navigation_bar

A custom navigation bar with bubble click effect.

## Overview

This project is inspired by this [post from Dribbble](https://dribbble.com/shots/7134849-Simple-Tab-Bar-Animation) and [The Boring Flutter Development Show, Ep. 35](https://www.youtube.com/watch?v=Qk_x9y_wGXQ)

This package gives you a cute bubble effect when you click on the navigation bar.

Dribbble:
<img src="https://cdn.dribbble.com/users/2114584/screenshots/7134849/media/96e4a6002a476bad7bd809ac71e28698.gif">

Implemented:
<img src=screenshot.gif>

## How to install

## Documentation
You can customize these attributes in the navigation bar.
```dart
   ///
  /// height of the [CustomNavigationBar].
  ///
  /// use [defaultHeight] in [DefaultCustomNavigationBarStyle] when height is null.
  ///
  final double height;

  ///
  /// Item data in [CustomNavigationBarItem]
  ///
  final List<CustomNavigationBarItem> items;

  ///
  /// [Color] when [CustomNavigationBarItem] is selected.
  ///
  /// default color is [blueAccent].
  final Color selectedColor;

  ///
  /// [Color] when [CustomNavigationBarItem] is not selected.
  ///
  /// default color is [grey[600]].
  final Color unSelectedColor;

  ///
  /// callback function when item tapped
  ///
  final Function(int) onTap;

  ///
  /// current index of navigation bar.
  ///
  final int currentIndex;

  ///
  /// size of icon.
  /// also represent the max radius of bubble effect animation.
  final double iconSize;

  ///
  /// Background color of [CustomNavigationBar]
  ///
  final Color backgroundColor;

  ///
  /// stroke color.
  /// default is [Colors.blueAccent].
  final Color strokeColor;

  ///
  /// animation curve of bubble effect
  ///
  final Curve bubbleCurve;

  ///
  /// animation curve of scale effect
  ///
  final Curve scaleCurve;
```

And for customize icon in the navigation bar, just put the icons you want in the ```CustomNavigationBarItem``` like this.
```dart
CustomNavigationBar(
        ...
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
        ...
      )
```

## Example
Check example app for more details.

### Future Plans
- [ ] Make it more like native navigation bar in Flutter.
- [ ] Better documentation
- [ ] Code format
- [ ] More customizations!!
- [ ] Support Flame widget maybe?
And more...