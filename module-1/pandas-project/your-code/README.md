## Read me file Daygina for the pandas project.
Download the CSV file from the https://www.kaggle.com/. Corrected utf-8 to the format to "latin".
Initial state: 5992 rows × 24 columns

#ANALYSIS.
    1)simple check of null values per column
            Country                     43
            Area                       402
            Location                   496
            Activity                   527
            Name                       200
            Sex                        567
            Age                       2681
            Injury                      27
            Fatal (Y/N)                 19
            Time                      3213
            Species                   2934
            Investigator or Source      15
            href formula                 1
            href                         3
            Unnamed: 22               5991
            Unnamed: 23               5990
            
           5992 rows total, but both Unnamed #23 and #23 have majority of NaN values.

           DROP those two Unnamed columns with this piece of code:
               drop_cols = list(null_cols[null_cols > 5000].index)
               data = data.drop(drop_cols, axis=1)
       
           Output 5992 rows × 22 columns
            
    2) Couldn't not Compare three columnes with Case Number Name
    #data.loc[:,case_col]
    
    case_col=['Case Number', 'Case Number.1', 'Case Number.2']
    data[case_col]
    
    From first view the data look similar in the table
    
    DECISION 2: Drop 'Case Number.1', 'Case Number.2' columns
            data1=data.drop(columns=['Case Number.1', 'Case Number.2'])
            
            Output data1 datafframe with 5992 rows × 20 columns
     3) Date table contains different formats, texts
         Created different regex in order to sort out the Rows

        "DD-MMM-YY"

        format1=df.Date.str.match('[0-9]{1,2}-[A-Z]\w{2}-[0-9]{1,2}')

        #Format2.Between 1765 & 1985
        format2=df.Date.str.match('(Between)\s\d*\s&\s\d*')

        #Format3. ANY char chain 'Reported 'or 'before' DD-MMM-YY
        format3=df.Date.str.match('[A-Z][a-z]+\s\d{1,2}-[A-Z]\w{2}-[0-9]{1,2}')

        #Format4. Before 1987
        format4=df.Date.str.match('(Before)\s\d*')


4) Wanted to change the coluln date to one same format, from string object to date object
created the df with Format1 columns with true and false values.

Not finished - Would like to change some values to Year (remove reported, early) 

5) NOt finished to clean up the Age table with Regex rules


6) replaced 'Boating' by' Boat' in Type


7) exported data1.to_csv    'Result_Project1.csv'
