# flutter_custom_cards

New Flutter package which helps developers to create beautiful custom cards.

## Getting Started

To import the widget:

```dart
import 'package:flutter_custom_cards/flutter_custom_card.dart'
```

### ScreenShots

<img src="https://raw.githubusercontent.com/pktintali/flutter_custom_cards/main/example/screenshots/image1.jpg" width="400">

Make a widget _Card_:

### TextCard

```dart
TextCard(
text: 'Custom Card',
childPadding: 12,
fontSize: 28,
color: Colors.red,
textColor: Colors.white,
elevation: 4,
shadowColor: Colors.green,
)
```

### ImageCard

```dart
ImageCard(
elevation: 8,
shadowColor: Colors.red,
childPadding: 10,
color: Colors.yellow,
image: Image.network('[URL]'),
),
```

### WidgetCard

```dart
WidgetCard(
widgetPadding: 20,
widget: Column(
  children: [
    Text('Card with custom widget'),
    Icon(
    Icons.favorite_outline,
    color: Colors.red,
    size: 30,
    ),
   ],
  ),
),
```

#### Example

```dart
TextCard(
text: 'Custom Card',
childPadding: 12,
fontSize: 28,
color: Colors.red,
textColor: Colors.white,
elevation: 4,
shadowColor: Colors.green,
)
```

## Author

Pradeep Tintali (4gpradeep@gmail.com)
