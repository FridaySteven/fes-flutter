# fes_flutter

A new Flutter project.

## Getting Started

- Main branch project is simulated the behaviour of our current app.
We had set the orientation using SystemChrome.setPreferredOrientations in Main.dart
After running the program, you may test play with the orientation on the main screen. 
The orientation is working as what as you set using the action buttton Portrait/Landscape/Free Orientation.
There are 2 action button on bottom of the main screen for redirect to static Portrait page and Landscape page.

- feature/fes-branch project is implement the FES on top of main branch.
We didn't apply any external plugin except FES application.
After running the program, you may test play with the orientation on the main screen. 
The orientation behaviour is not working as main branch main screen perform after using the action buttton Portrait/Landscape/Free Orientation although we didn't apply FES on main screen.
FES had been apply to static Portrait page which can be redirect using the action button on bottom of the main screen.
You can try adding your own FES widget to the page that you want to see the results. See the example in (Page 1 Portrait).