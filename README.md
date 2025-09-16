# Praktikum 1 Row and Column

A new Flutter project.

## Documentation: lib/main.dart

### Overview

This app demonstrates basic layout using Column and Row to display four colored boxes (KotakWarna) centered on the screen in a 2x2 arrangement.

- Column (centered) contains two Rows.
- Each Row (centered) contains two KotakWarna widgets separated by SizedBox spacing.
- KotakWarna shows a heart icon and a label over a colored background with rounded corners and border.

### Widget tree

```
MaterialApp
└─ Scaffold
   └─ Center
      └─ Column (mainAxisAlignment: center)
         ├─ Row (mainAxisAlignment: center)
         │  ├─ KotakWarna(warna: Colors.blue,   label: 'Blue')
         │  ├─ SizedBox(width: 20)
         │  └─ KotakWarna(warna: Colors.green,  label: 'Green')
         ├─ SizedBox(height: 20)
         └─ Row (mainAxisAlignment: center)
            ├─ KotakWarna(warna: Colors.orange, label: 'Orange')
            ├─ SizedBox(width: 20)
            └─ KotakWarna(warna: Colors.purple, label: 'Purple')
```

### KotakWarna component

- Type: StatelessWidget
- Props:
  - warna (Color, required): background color.
  - label (String, required): text displayed below the icon.
- Layout:
  - Container: width 100, height 130, rounded corners, 2px black border.
  - Child Column: centered Icon(Icons.favorite, red, size 50) and label text (white, bold).

### Customize

- Change colors/labels: update KotakWarna(warna: ..., label: ...).
- Adjust spacing: SizedBox(width: 20) between boxes, SizedBox(height: 20) between rows.
- Alignment: tweak mainAxisAlignment in Row/Column.
- Size/style: modify Container width/height, border, or Text style inside KotakWarna.

## Project Output (Screenshots)

Screenshots are stored in assets/screenshots.

- Output 1: Single thumbs icon.  
  <img src="assets/screenshots/output_1.jpg" alt="Single thumbs up icon" width="300" height="auto" />

- Output 2: Three thumbs icons arranged using Row and Column.  
  <img src="assets/screenshots/output_2.jpg" alt="Three thumbs icons in Row and Column layout" width="300" height="auto" />

- Output 3: Favorites (heart) icon.  
  <img src="assets/screenshots/output_3.jpg" alt="Favorites heart icon" width="300" height="auto" />

# Praktikum 2 Layout Row and Column

## Documentation: lib/main.dart

1. Make a class for each weather type you want to create a widget for.
   - Example: SunnyWeather, RainWeather, CloudyWeather
2. Each class have custructor with required parameters for day and temperature.

```
class SunnyWheter extends StatelessWidget {
  final String day;
  final String temp;

  const SunnyWheter({super.key, required this.day, required this.temp});
```

3. Each class build method return a Container and have each icon like sunny, cloudy, cloudy_snowing

```
          Icon(Icons.cloudy_snowing, color: Colors.black, size: 20),
          Icon(Icons.sunny, color: Colors.black, size: 20),
          Icon(Icons.cloud, color: Colors.black, size: 20),
```

4. Reconfigure the main.dart to display the weather widgets in a Row and Column layout.

- Use Column to arrange the city name, current temperature, and a Row of weather widgets vertically.
- call the weather widgets inside the Row and fill in the day and temperature parameters.

```
children: [
              Text(
                'Malang',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80),
              Text(
                '28\u00B0C',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SunnyWheter(day: 'Minggu', temp: '20\u00B0C'),
                  RainWheter(day: 'Senin', temp: '22\u00B0C'),
                  CloudyWheter(day: 'Selasa', temp: '18\u00B0C'),
                ], // or RainWheter(), CloudyWheter()
              ),
            ],
```

## Project Output (Screenshots)

1. Output 1: Temperature UI.  
   <img src="assets/screenshots/prak_2_1.jpg" alt="Weather icon" width="100" height="auto" />

2. Ouput 1: Wheater UI.  
   <img src="assets/screenshots/prak_2.jpg" alt="Weather icon" width="100" height="auto" />
