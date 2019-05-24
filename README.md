# Bitcoin-Price-Prediction
Predicts the next day price of Bitcoin to be High or Low based on the previous month's data.

## Data Manipulation 

To fit the data into a logistic regression model we first have to arrange the data in a suitable format. <br>
The data is available as a series of rows which we need to convert into columns and rows. <br>
I chose the number of colums to be 30 (for predicting the price for a month only) , we can chose this to be 7 or 120 to <br>
manipulate our research for a week or quarterly based prediction.

### Arranging Rows and Columns

Row numbers 1-31 is fitted in Row 1, Column 1-31 <br>
Row numbers 2-32 is fitted in Row 2, Column 1-31 <br>
... <br>
Row numbers (n-31) - 'n' is fitted in Row (n-31), Colums 1-31 <br>

#### Column 31 is our 'y' parameter, we need to predict the value for the 31st column 

## Now we have 30 attributes to predict from in our logistic regression model.
