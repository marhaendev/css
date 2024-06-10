# CSS

This extension provides a convenient way to style Flutter widgets using CSS-like properties. It offers options for setting padding, margin, colors, fonts, events, icons, borders, and more.

## Usage

To use this extension, simply import it and apply it to your widget using the `css` method. Here's an example:

```
import 'package:flutter/material.dart';
import 'package:css/css.dart';

void main() {
  runApp(MaterialApp(home: Main(), debugShowCheckedModeBanner: false));
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('css Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(),
          Text("text").css(
            w: double.infinity,
            p: 0,
            my: 10,
            r: 0,
            borderColor: Colors.teal,
            borderWidth: 1,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            icon: Icon(Icons.dashboard_rounded),
            onPressed: () => print("onPressed"),
            onLongPress: () => print("onLongPress"),
            onHover: (bool) {
              if (bool) print("onHover $bool");
              if (!bool) print("onHover $bool");
            },
          )
        ],
      ),
    );
  }
}
```
## Supported Properties
### Padding and Margin
- w: Width
- h: Height
- p: Padding (all sides)
- px: Horizontal padding
- py: Vertical padding
- pt: Top padding
- pr: Right padding
- pb: Bottom padding
- pl: Left padding
- m: Margin (all sides)
- mx: Horizontal margin
- my: Vertical margin
- mt: Top margin
- mr: Right margin
- mb: Bottom margin
- ml: Left margin

### Colors
- cb: Background color
- ct: Text color

### Fonts
- fontSize: Font size
- fontFamily: Font family
- fontWeight: Font weight

### Events
- onPressed: On press event
- onLongPress: On long press event
- onHover: On hover event

### Icon
- icon: Icon widget

### Borders
- borderColor: Border color
- borderWidth: Border width
- r: Border radius

### Notes
- If a color is provided as a string (e.g., 'blue'), it will be converted to the corresponding Color object.
- The default font used is 'Poppins', but you can override it by specifying a different font family.
- The extension also includes a private method _colorFromString to convert color strings to Color objects.