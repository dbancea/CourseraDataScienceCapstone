Predicting next word(s)
Coursera Data Science Capstone project
========================================================
author: Danut Bancea
date: Sun Aug 23 11:07:17 2015 

Introduction
========================================================

The project scope is to design and implement an application which will predict next word(s) based on a incomplete sentence. There were provided three files with text data from twitter, blog and news which are used to create the prediction data based on words frequencies. 
The application, data product, is developed in R using shiny package.

Because of limitation regarding the computation resources the words frequencies were calculated outside of shiny presentation and saved in Rda files which are loaded when the application is executed.


Algorithm and application description
========================================================

The algorithm used for word(s) prediction is back-off algorithm and n-grams. The n-grams are build with 1 to 4 words grams and are saved in different files based on the n-grams level.

If a word and/or a combination of words are not found in the highest n-gram data, the next lower n-gram set is used while the initial first word is drop from the search condition. If there is no match found, than the most frequents words from 1-grams are displayed.

For performance reasons all the data preparation and n-grams calculation are done outside of the shiny application and the n-grams results are saved in Rda files which are loaded when the shiny application is executed.

The application predict next one word and the next two words based on the input text.

Application usage
========================================================

The application is started with the "thank" default value for the input text. To start the prediction type the incomplete sentence in the input text box, select the number of prediction using the bar slider and click on the Submit button.

There are two tab menu displayed related to one word and two words prediction. Selected each of them it will display the number of the predictions based on the value select from the sliding bar.

The source code it is also displayed and it can be moved bellow the aplication selecting "show below" button.



References and additional information
========================================================

- The source code and all the files are available on github at 

- Link for the shiny application  [https://bancea.shinyapps.io/DataScienceCapstone]

- Coursera natural language processing
  [https://www.coursera.org/course/nlp]

- Coursera Data Science Specialization
  [https://www.coursera.org/specialization/jhudatascience/1]

- Data mining resources 
  [http://handsondatascience.com/]
  [http://datamining.togaware.com/]

