# Praktikum Modul 2 Row and Column

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

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

