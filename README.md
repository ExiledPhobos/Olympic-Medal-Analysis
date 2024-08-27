# Olympic Medal Analysis

This project provides an in-depth analysis of Olympic medal data from various games, focusing on trends, country performances, and medal distributions. The analysis spans multiple decades and both Summer and Winter Olympic Games.

## Project Structure

```
|   .gitignore
|   LICENSE
|   README.md
|   
+---data
|   |   total_medals_by_country.csv
|   |   unified_medal_table.csv
|   |   
|   \---table csv files
|           athens_2004.csv
|           atlanta_1996.csv
|           beijing_2008.csv
|           beijing_2022.csv
|           lillehammer_1994.csv
|           london_2012.csv
|           nagano_1998.csv
|           paris_2024.csv
|           pyeongchang_2018.csv
|           rio_2016.csv
|           saltlakecity_2002.csv
|           sochi_2014.csv
|           sydney_2000.csv
|           tokyo_2020.csv
|           torino_2006.csv
|           vancouver_2010.csv
|           
+---database
|       olympics.sql
|       
+---images
|       correlation_medals.png
|       country_performance_over_time.png
|       heatmap_medal_distribution.png
|       interactive_scatterplot.html
|       medal_share_comparison.png
|       pie_chart_medal_share_2024.png
|       seasonal_analysis_country.png
|       top_performing_countries.png
|       trend_medal_counts.png
|       yearly_performance.png
|       
\---scripts
        main.py
        olympic_medal_analysis.sql
```

## Getting Started

### Prerequisites

To replicate this analysis, you will need:
- A relational database management system (RDBMS) like MySQL or PostgreSQL.
- Python 3.x installed on your machine.
- Required Python libraries: `pandas`, `matplotlib`, `seaborn`, and `plotly`.

You can install the necessary Python packages by running:
```sh
pip install pandas matplotlib seaborn plotly
```

### 1. Database Setup

1. **Create the Database**:
   - Create a new database in your preferred RDBMS. Name it `olympics_db` or any other name you prefer.

2. **Run the SQL Script**:
   - Navigate to the `database/` folder and run the `olympics.sql` script in your database. This script will create the necessary tables and populate them with data.
   
   For MySQL:
   ```sql
   source /path/to/database/olympics.sql;
   ```

### 2. Extract Views

After setting up the database:

1. **Extract the `total_medals_by_country` View**:
   - Use your SQL client or command line to extract the `total_medals_by_country` view as a CSV file and save it in the `data/` folder.
   
   Example:
   ```sql
   SELECT * FROM total_medals_by_country INTO OUTFILE '/path/to/data/total_medals_by_country.csv'
   FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
   ```

2. **Extract the `unified_medal_table` View**:
   - Similarly, extract the `unified_medal_table` view as a CSV file and save it in the `data/` folder.
   
   Example:
   ```sql
   SELECT * FROM unified_medal_table INTO OUTFILE '/path/to/data/unified_medal_table.csv'
   FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
   ```

3. **Optional: Individual Table CSV Files**:
   - If you prefer to work with individual tables, you can find them in the `table_csv_files/` subfolder in the `data/` directory. These files are not required if you run the `olympics.sql` script.

### 3. Running the Python Script

1. **Navigate to the `scripts/` folder**:
   - Open your terminal or command line and navigate to the `scripts/` folder where the `main.py` script is located.

2. **Run the Analysis**:
   - Execute the `main.py` script to perform the data analysis and generate the visualizations.
   
   ```sh
   python main.py
   ```

### 4. Reviewing the Results

1. **Generated Visualizations**:
   - The visualizations created by the `main.py` script will be saved in the `images/` folder. These include various charts such as trend analysis, top-performing countries, heatmaps, pie charts, and more.

2. **Interactive Visualization**:
   - The interactive scatterplot created using Plotly will be saved as an HTML file (`interactive_scatterplot.html`) in the `images/` folder. You can open this file in a web browser to explore the data interactively.

## Project Overview

This project explores multiple dimensions of Olympic medal data, including:

- **Trends in Medal Counts**: Analyzing how medal counts for selected countries have evolved over the years.
- **Top Performing Countries**: Identifying the countries that have consistently performed well across various Olympic Games.
- **Correlation Analysis**: Understanding the relationships between gold, silver, and bronze medal counts.
- **Seasonal Performance**: Comparing performances in Summer vs. Winter Olympics for selected countries.
- **Medal Share Analysis**: Examining how the distribution of medals has changed over time, comparing countries side by side.
- **Country Performance Over Time**: Analyzing how a specific country's performance has changed over the years.

## Contributing

If you wish to contribute to this project, please fork the repository and create a pull request with your changes.

## License

This project is open-source and available under the [MIT License](LICENSE).