# MIDPS LAB #2

# Set up Work Process

At this laboratory work I have worked with [Strainu Dragos](https://github.com/strdr4605) at [common repo](https://github.com/strdr4605/Calculator-OSX).
At this lab. we have developed calculator for Mac OS X, with multiple GUI modules, using `Swift` language and Xcode IDE. 

At this(my) repo is presented a tested version of calculator which i used before the GUI module was develope. When GUI module was develope I
switched to [common repo](https://github.com/strdr4605/Calculator-OSX), and work on it, such strange behavior is due the fact that
we decided to work together later but not at start.

At this project we divided our work of UI and Buissnes Logic modules in 2 branches `master` and `logic`. My part of work was implementation 
of Buissness Logic and Plotting Modules.

We have chosen developing of calculator for Mac OS X, because there are few tutorials about developing desktop app for Mac OS
and it was a challenge for us, to develop desktop app for this platform because it is really unique experience.

# Work Experience

Because my part of work was the Logic module of calculator, I have develope a 'Swift' class wich communicate with GUI module by
string Input / Output. In this class I have provided function `getExpressionValue(expression: String) -> String` which takes as parameter
`expression` a String of math expression which must be calculated, and returns String which contains result.

- ## Implementation of simple calculating

`Swift` language provides a special class `NSExpression` which allow you to analyse and to eval Strings and functions. I have
decide to not reinvent bicycle and to use this implemented tool. In this way by creating of new object of `NSExpression` type
which takes as parameter in constructor String with math expression, and accessing method `expressionValue()` we get calculated value of math expression which is returned to GUI module.

![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB2/screens/Screen%20Shot%202017-04-26%20at%2001.46.04.png) 
![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB2/screens/Screen%20Shot%202017-04-26%20at%2001.46.53.png)

Intersting fact is that using this method of evaluating String with mathematical expression the output of `7 / 2` is `3` which
in terms of Natural Human Logic isn't right, but is absolutely right in terms of Computer Scientist Logic, because devision of
2 integers can't provide a double `3.5` number which is expected by user.

This is the reason I have provided parsing of String from GUI module in order to add `.0` to a integer number in order to get
the right value of calculatio in terms of Natural Human Logic.

- ## Implementation of functional calculating

In our calculator we have provided calculation of some operations which in fact are functions, such as sin, cos, sqrt, and 
`NSExpression` can calculate directly not all of them. For this `NSExpression` provides evalution of function which are present in code. In order to keep integrity of String from GUI module with math expression and to eval directly but not on parts, I have provided a function which replaces substring of functional calculation ,which can not be calculated directly, with string of value of evaluating functions wich perform related calculation, such as trigonometric functions.

![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB2/screens/Screen%20Shot%202017-04-26%20at%2001.51.03.png)
![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB2/screens/Screen%20Shot%202017-04-26%20at%2001.53.01.png) 

Evaluating of functions, with `NSExpression`, presented in your code needs another aproach in comparison with evaluating 
Strings. this is why my Buissnes Logic module is not as simple as you think.

- ## Plotting Module

Also I have worked a little bit with GUI creating graph plots, for this I have used `CorePlot` library, and in order to manage
plot window and graph I have provided `GraphController` class, which manage all process of plotting.

`GraphController` class manage generation of data for ploting also set graph style and dimension, axis position, and other stuff which for future enhancements of our calculator gives posibility of deep graph customization.

![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB2/screens/Screen%20Shot%202017-04-26%20at%2001.55.58.png)
![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB2/screens/Screen%20Shot%202017-04-26%20at%2001.56.07.png)

![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB2/screens/Screen%20Shot%202017-04-26%20at%2001.54.01.png)

- ## IDE used features

Working on this project we used [common repo](https://github.com/strdr4605/Calculator-OSX), with 2 branches, which was direct
"connected" to IDE, which allows us to commit and push to repo direct from IDE, also we periodically merge `master` with  `logic` branches and solve conflicts also directly in IDE.

# Conclusion

This laboratory work, gives better understanding about development of Desktop app and integrated IDE tools which allow you to optimize your work, and personal for me this was a challenge to develop app almoast without examples, only with some documentation. I have dicovered a lot of new things related to `Swift` and Mac OS X desktop development, and I have understand that `Swift` development is easy and intersting.
