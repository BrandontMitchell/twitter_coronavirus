# Coronavirus analysis

This repo analyzes the activity of coronavirus hashtags on twitter. We have pulled a large collection of coronavirus-related tweets that were tweeted during the year of 2020, stemming from when covid first hit the United States. An interesting thing here is that this is a global set of data, which is highly important to this analysis. Though the majority of these tweets are in english, we do include other language tweets as well, and can easily be expaned to incorporate different languages covering the same hashtag. This data set includes over 1 billion tweets, layed out in 365 zip files, for each day of the year, with a subset containing each hour of the day. The twitter coronavirus tweet project was insightful and helped my first time working with large datasets, multilingual text parsing, and divide-and-conquer to optimize code duration / efficiency.

The first task was to map all the zip files, which processes all tweets within a zip file (1 day of tweets). This `map.py` file iterates through the tweets and creates (if not exists) an output folder with the file `geoTwitter20-XX-XX.zip.lang` with XX-XX being the month and day of that specific set. We created a bash script with `nohup` and `&`to run in parallel, since we are on a shared server and this is a large set of data.

Next, we reduced the mapping files. This `reduce.py` helped merges all outputs created by `map.py`to combine into files that can be visualized later. Merging all files into two separate files: one for `country`and one for `language`. We measure the metadata of tweets based on country, and language. 

Lastly, we used `visualize.py` along with our bash script, `create_visuals.sh` to iterate through the outputs of our reduced files, create a new directory and analyze each separate tweet. Some of these tweets included hashtags such as coronavirus, covid19, cough, etc. 

This project was really cool to see how much we can do with large datasets. This is a very small portion of analysis, and there are multiple routes that can stem from this cycle of map, reduce, and visual within big data. 
