# MIDPS LAB #3

# Set up Work Process

At Laboratory Work #3 I have developed Android mobile application using `Android Studio` IDE, `Retrofit` library in order to provide transfer of data to server, and `SQLite` build in Android database for storring data.

I have developed mobile App named `Lexicon` which is an interactive tool for learning new languages, this app provides a list of user input words/sentences translated in selected language, also app provides pop-up notification independent from network connection, this means app send notification by itself without `google cloud`. At cliking word from list user can see information related to word/sentences, usually a picture and other information.

Work at this project I acctually started a few months and basic location of this project is [here](https://github.com/ASV44/Lexicon)

# Work Experience

At this project is used translation API from Yandex(because it is the only not commercial/free), which provides translate of user input words. After app get translate word is inserted in table with name which corespondes to language from which is translated of database.

![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB3/screens/Screen%20Shot%202017-04-26%20at%2004.17.11.png)
![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB3/screens/Screen%20Shot%202017-04-26%20at%2004.17.40.png) 

After database is updated, the new word in inserted in list of translated words, in order to provide this manipulation of communication with server and database are used a lot of classes with specific methods for every operation. For example `Retrofit` library needs to implement some custome interfaces and also custom class which represent object which is returned from server, database also used custom class for representing object from database tables.

In order to manage pop-up notification with out using connection to `google cloud` is used `Service` class from Android SDK, which provides some work remote from base app, this means that when app is closed `Service` will still running and working.

In this way user recive notification in specific period of time even if app is closed, with outh beibg connected to network. Notification represents some word from current selected list of languages, in this way user have possibility to interact with new words when he/she is doing something else

![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB3/screens/Screen%20Shot%202017-04-26%20at%2004.19.57.png) 

Also in this project I work a lot of with UI, even if it look simple it have taken a lot of time to implement View and several menus, and different actions at buttons pressed at simple and long.

![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB3/screens/Screen%20Shot%202017-04-26%20at%2004.18.06.png) 
![alt tag](https://github.com/ASV44/MIDPS_LABS/blob/master/LAB3/screens/Screen%20Shot%202017-04-26%20at%2004.18.45.png) 

# IDE used features

In this project tried to use as many as posiblle features of Android Studio, and I have used such features like VCS, and all what is refers to it, pull, push, commit, merge, solving conflicts, also I have used debugger and debugging console.
