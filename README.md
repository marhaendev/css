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
| cb             | dynamic | Background color              | cb: Colors.yellow      |
| ct             | dynamic | Text color                    | ct: Colors.blue        |

### Fonts
| Property       | Type    | Description                   | Example                        |
|----------------|---------|-------------------------------|--------------------------------|
| fontSize       | double  | Font size                     | fontSize: 16                   |
| fontFamily     | string  | Font family                   | fontFamily: "Poppins"          |
| fontWeight     | dynamic | Font weight                   | fontWeight: FontWeight.bold    |

- see all font family here: [[https://fonts.google.com](https://fonts.google.com/)]

### Events
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| onPressed      | function| On press event                | onPressed: ()=>print("onPressed")  |
| onLongPress    | function| On long press event           | onLongPress: ()=>print("onLongPress")  |
| onHover        | function| On hover event                | onHover: (bool)=>bool? print("onHover $bool"):print("onHover $bool") |

### Icon
| Property       | Type    | Description                   | Example                |
|----------------|---------|-------------------------------|------------------------|
| icon           | widget  | Icon widget                   | icon: Icon(Icons.add) |

### Borders
| Property       | Type    | Description                   | Example                    |
|----------------|---------|-------------------------------|----------------------------|
| borderColor    | dynamic | Border color                  | borderColor: Colors.teal   |
| borderWidth    | double  | Border width                  | borderWidth: 2             |
| r              | double  | Border radius                 | r: 8                       |


### Notes


