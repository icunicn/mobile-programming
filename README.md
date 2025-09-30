# Praktikum Modul 7 Navigation Beetwen Pages Using MaterialPageRoute and Named Route

A new Flutter project.

## Project Output (Screenshots)

Screenshots are stored in assets/screenshots.

- Output 1: Using Navigator.push() and MaterialPageRoute() to go to a new page
```
onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Tujuan()),
  );
},
```
  <img src="assets/screenshots/1.jpg" alt="Single thumbs up icon" width="200" height="auto" />

- Output 2: Using Navigator.pop() to return to the previous page
```
onPressed: () {
    Navigator.pop(context);
},
```
  <img src="assets/screenshots/2.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />

- Output 3: Using initial routes and named routes
```
initialRoute: '/',
routes: {
    '/': (context) => const HomePage(),
    '/second': (context) => const TujuanPage(),
},
```
  <img src="assets/screenshots/3.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />

- Output 4: Using Navigator.pushNamed() to navigate to a named route
```
onPressed: () {
    Navigator.pushNamed(context, '/tujuan');
},
```
  <img src="assets/screenshots/4.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />

- Output 5: Task 1 to display Home Page with a button to navigate to Second Page

  <img src="assets/screenshots/5.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />

- Output 6: Task 2 to display Second Page with a button to navigate back to Home Page

  <img src="assets/screenshots/5.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />
