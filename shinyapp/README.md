# Introduction

The application will predict the next word(s) from an incomplete sentence.


# Application description

The prediction is based on n-grams from a corpus documents from twitter, blogs and news and it is part of the Coursera capstone project for Data Science specialization.
The range of the number of prediction is from 1 to 8 and it predicts the next one or two words for the sentence.

To speed-up the prediction process the n-grams calculation were done ijn advanced in Rda files which are attached to application during the execution..
The number of the records from the n-grams table were limited to the n-grams which have a frequency higher than 5.


# Usage

Type an incomplete sentence, select the number of predictions using the sliding bar and click the Submit button.

# Output interpretations

The first tab pannel will display the prediction for the next one word and the second tab panel has the next two words prediction.
It is possible to be soem differences between them because the data used for n-grams calculation was random selected from the initial text files and because the frequency data frames results were truncated to only the high frenequency words combinations.







