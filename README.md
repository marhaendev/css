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

### Width and Height
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| w              | double  | Width                         | w: double.infinity     |
| h              | double  | Height                        | h: 100                 |

### Padding and Margin
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| p              | double  | Padding (all sides)           | p: 16                  |
| px             | double  | Horizontal padding            | px: 10                 |
| py             | double  | Vertical padding              | py: 20                 |
| pt             | double  | Top padding                   | pt: 8                  |
| pr             | double  | Right padding                 | pr: 12                 |
| pb             | double  | Bottom padding                | pb: 8                  |
| pl             | double  | Left padding                  | pl: 12                 |
| m              | double  | Margin (all sides)            | m: 16                  |
| mx             | double  | Horizontal margin             | mx: 10                 |
| my             | double  | Vertical margin               | my: 20                 |
| mt             | double  | Top margin                    | mt: 8                  |
| mr             | double  | Right margin                  | mr: 12                 |
| mb             | double  | Bottom margin                 | mb: 8                  |
| ml             | double  | Left margin                   | ml: 12                 |

### Colors
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| cb             | string  | Background color              | cb: "#ffffff"          |
| ct             | string  | Text color                    | ct: "black"            |

### Fonts
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| fontSize       | double  | Font size                     | fontSize: 16           |
| fontFamily     | string  | Font family                   | fontFamily: "Arial"    |
| fontWeight     | string  | Font weight                   | fontWeight: "bold"     |

### Events
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| onPressed      | function| On press event                | onPressed: myFunction  |
| onLongPress    | function| On long press event           | onLongPress: myFunction|
| onHover        | function| On hover event                | onHover: myFunction    |

### Icon
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| icon           | widget  | Icon widget                   | icon: Icon(Icons.add) |

### Borders
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| borderColor    | string  | Border color                  | borderColor: "black"   |
| borderWidth    | double  | Border width                  | borderWidth: 1.5       |
| r              | double  | Border radius                 | r: 8                   |


### Notes
- If a color is provided as a string (e.g., 'blue'), it will be converted to the corresponding Color object.
- The default font used is 'Poppins', but you can override it by specifying a different font family.
- The extension also includes a private method _colorFromString to convert color strings to Color objects.

