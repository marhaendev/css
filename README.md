# CSS

This extension provides a convenient way to style Flutter widgets using CSS-like properties. It offers options for setting padding, margin, colors, fonts, events, icons, borders, and more.

## Usage

To use this extension, simply import it and apply it to your widget using the `css` method. Here's an example:

```
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_package_name/css_extension.dart'; // Import the extension

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello, World!',
          ).css( // Apply the CSS extension
            fontSize: 24,
            fontFamily: 'Poppins',
            ct: 'blue', // Text color
            p: 16, // Padding
            m: 8, // Margin
            r: 8, // Border radius
            onPressed: () {
              // Button press event
              print('Button pressed!');
            },
          ),
        ),
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