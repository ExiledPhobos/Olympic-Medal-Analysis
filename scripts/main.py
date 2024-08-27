import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.express as px

# Define the file paths
unified_medal_table_path = r'C:\Users\exile\Downloads\unified_medal_table.csv'
total_medals_by_country_path = r'C:\Users\exile\Downloads\total_medals_by_country.csv'

# Load the CSV files into Pandas dataframes
unified_medal_df = pd.read_csv(unified_medal_table_path)
total_medals_df = pd.read_csv(total_medals_by_country_path)

# Display the first few rows of each dataframe to check the data
print("Unified Medal Table - First 5 Rows")
print(unified_medal_df.head())

print("\nTotal Medals by Country - First 5 Rows")
print(total_medals_df.head())

# Check for missing values in both dataframes
print("\nMissing Values in Unified Medal Table:")
print(unified_medal_df.isnull().sum())

print("\nMissing Values in Total Medals by Country:")
print(total_medals_df.isnull().sum())

# Check the data types of each column to ensure they are correct
print("\nData Types in Unified Medal Table:")
print(unified_medal_df.dtypes)

print("\nData Types in Total Medals by Country:")
print(total_medals_df.dtypes)

# Verify that 'Total' columns in Unified Medal Table are consistent with the sum of Gold, Silver, and Bronze columns
for column in unified_medal_df.columns:
    if "Total_" in column:
        year = column.split("_")[1]
        gold_col = f"Gold_{year}"
        silver_col = f"Silver_{year}"
        bronze_col = f"Bronze_{year}"
        total_col = column
        unified_medal_df[f'Check_{total_col}'] = unified_medal_df[gold_col] + unified_medal_df[silver_col] + unified_medal_df[bronze_col]
        if not unified_medal_df[total_col].equals(unified_medal_df[f'Check_{total_col}']):
            print(f"Inconsistency found in {total_col}")

# Drop the check columns after verification
unified_medal_df.drop([col for col in unified_medal_df.columns if 'Check_' in col], axis=1, inplace=True)

print("\nData Check Complete. Dataframes are ready for analysis!")

# Define colors for each NOC based on national colors
color_dict = {
    'USA': '#B22234',  # Red
    'CHN': '#FFDE00',  # Yellow
    'RUS': '#0033A0',  # Blue
    'GBR': '#00247D',  # Blue
    'GER': '#000000',  # Black
    'JPN': '#BC002D',  # Red
    'FRA': '#0055A4',  # Blue
    'GRE': '#0D5EAF',  # Blue
    'AUS': '#FFCD00',  # Yellow
    'BRA': '#009C3B',  # Green
    'CAN': '#FF0000',  # Red
    'ITA': '#009246',  # Green
    'KOR': '#C60C30',  # Red
    'ESP': '#AA151B',  # Red
    'NED': '#FF6600',  # Orange
    'NOR': '#EF2B2D',  # Red
    'CUB': '#002A8F',  # Blue
    'UKR': '#FFD700',  # Yellow
    'AUT': '#ED2939',  # Red
    'SWE': '#005BAC',  # Blue
    'SUI': '#D52B1E',  # Red
    'HUN': '#008751',  # Green
    'POL': '#DC143C',  # Crimson
    'CZE': '#11457E',  # Blue
    'BLR': '#CE1126',  # Red
    'NZL': '#000000',  # Black
    'ROU': '#FFD700',  # Yellow
    'KAZ': '#00AEEF',  # Blue
    'KEN': '#006600',  # Green
    'FIN': '#003580',  # Blue
    'DEN': '#C60C30',  # Red
    'JAM': '#1E4D2B',  # Green
    'BUL': '#D62612',  # Red
    'TUR': '#E30A17',  # Red
    'CRO': '#001489',  # Blue
    'AZE': '#00B9E4',  # Blue
    'IRI': '#239F40',  # Green
    'SLO': '#0056A3',  # Blue
    'UZB': '#1EB53A',  # Green
    'ETH': '#DA121A',  # Red
    'GEO': '#E30613',  # Red
    'BEL': '#FFD700',  # Yellow
    'SVK': '#0B4EA2',  # Blue
    'RSA': '#007749',  # Green
    'PRK': '#024FA2',  # Blue
    'TPE': '#0052A5',  # Blue
    'THA': '#A51931',  # Red
    'MEX': '#006341',  # Green
    'INA': '#EF3340',  # Red
    'ARG': '#74ACDF',  # Blue
    'LTU': '#FDB913',  # Yellow
    'IRL': '#169B62',  # Green
    'IND': '#FF9933',  # Saffron
    'LAT': '#A4343A',  # Red
    'ARM': '#0033A0',  # Blue
    'POR': '#FF0000',  # Red
    'NGR': '#008751',  # Green
    'MGL': '#C60C30',  # Red
    'MAR': '#C1272D',  # Red
    'ALG': '#006233',  # Green
    'MAS': '#010066',  # Blue
    'HKG': '#EE1C25',  # Red
    'BAH': '#1F75FE',  # Blue
    'TUN': '#E70013',  # Red
    'TTO': '#ED1C24',  # Red
    'ECU': '#FFD100',  # Yellow
    'PHI': '#0038A8',  # Blue
    'MDA': '#0033A0',  # Blue
    'UGA': '#FFCD00',  # Yellow
    'YUG': '#0048BA',  # Blue
    'PUR': '#00205B',  # Blue
    'NAM': '#EF3340',  # Red
    'SYR': '#D7101E',  # Red
    'CRC': '#002B7F',  # Blue
    'ZAM': '#198A00',  # Green
    'BDI': '#CE1126',  # Red
    'MOZ': '#00A859',  # Green
    'TGA': '#C8102E',  # Red
}

# 1. Trend Analysis of Medal Counts

# Select a few countries for trend analysis
countries_to_analyze = ['USA', 'CHN', 'RUS', 'GBR', 'GER', 'JPN']

# Extract the relevant columns for analysis
medal_trends = unified_medal_df[unified_medal_df['NOC'].isin(countries_to_analyze)]
years = sorted(set(col.split('_')[1] for col in unified_medal_df.columns if 'Total_' in col))

# Plotting the trend of total medals over the years for selected countries
plt.figure(figsize=(12, 8))
for country in countries_to_analyze:
    country_data = medal_trends[medal_trends['NOC'] == country]
    medal_counts = [country_data[f'Total_{year}'].values[0] if f'Total_{year}' in country_data else 0 for year in years]
    plt.plot(years, medal_counts, marker='o', label=country, color=color_dict.get(country))

plt.title('Trend of Total Medals Over the Years for Selected Countries')
plt.xlabel('Year')
plt.ylabel('Total Medals')
plt.legend(title='Country')
plt.grid(True)
plt.savefig('trend_medal_counts.png')
plt.show()

# 2. Top Performing Countries

# Sort the total medals dataframe to get the top performing countries
top_countries = total_medals_df.sort_values(by='Grand_Total', ascending=False).head(10)

# Plotting the top performing countries in terms of total medals won
plt.figure(figsize=(10, 6))
sns.barplot(x='Grand_Total', y='NOC', data=top_countries, hue='NOC', palette={noc: color_dict.get(noc) for noc in top_countries['NOC']}, dodge=False)
plt.title('Top 10 Performing Countries (Total Medals)')
plt.xlabel('Total Medals')
plt.ylabel('Country')
plt.legend([], [], frameon=False)  # Hide legend as hue is set to y-axis
plt.savefig('top_performing_countries.png')
plt.show()

# 3. Correlation Analysis

# Plotting the correlation between Gold, Silver, and Bronze medals
plt.figure(figsize=(8, 6))
sns.heatmap(total_medals_df[['Total_Gold', 'Total_Silver', 'Total_Bronze']].corr(), annot=True, cmap='coolwarm')
plt.title('Correlation Between Gold, Silver, and Bronze Medals')
plt.savefig('correlation_medals.png')
plt.show()

# 4. Interactive Scatter Plot with Plotly for Winter vs Summer Games Performance Analysis

# Check which years are in the unified dataset for summer and winter
available_years = [col.split('_')[1] for col in unified_medal_df.columns if 'Total_' in col]
summer_years = [year for year in available_years if int(year) % 4 == 0 and int(year) >= 1996]
winter_years = [year for year in available_years if int(year) % 4 == 2 or int(year) == 1994]

# Ensure columns for each year exist before calculating totals
summer_medal_columns = [f'Total_{year}' for year in summer_years if f'Total_{year}' in unified_medal_df.columns]
winter_medal_columns = [f'Total_{year}' for year in winter_years if f'Total_{year}' in unified_medal_df.columns]

# Calculate total medals won in Summer and Winter Games using unified_medal_df
total_medals_df['Total_Summer_Medals'] = unified_medal_df[summer_medal_columns].sum(axis=1) if summer_medal_columns else 0
total_medals_df['Total_Winter_Medals'] = unified_medal_df[winter_medal_columns].sum(axis=1) if winter_medal_columns else 0

# Plotting the interactive scatter plot with Plotly
fig = px.scatter(total_medals_df, x='Total_Summer_Medals', y='Total_Winter_Medals',
                 hover_name='NOC', size='Grand_Total', color='NOC',
                 labels={'Total_Summer_Medals': 'Total Summer Medals', 'Total_Winter_Medals': 'Total Winter Medals'},
                 title='Performance in Summer vs Winter Games')
fig.write_html('interactive_scatterplot.html')
fig.show()

# 5. Seasonal Analysis by Country

# Choose a country to analyze (e.g., 'USA')
country_to_analyze = 'USA'

# Filter data for the selected country
country_data = unified_medal_df[unified_medal_df['NOC'] == country_to_analyze]

# Calculate total medals for each season
country_summer_medals = country_data[summer_medal_columns].sum(axis=1).values[0]
country_winter_medals = country_data[winter_medal_columns].sum(axis=1).values[0]

# Plotting the performance in Summer vs Winter Games for the selected country
plt.figure(figsize=(6, 6))
plt.bar(['Summer', 'Winter'], [country_summer_medals, country_winter_medals], color=['gold', 'silver'])
plt.title(f'Performance in Summer vs Winter Games: {country_to_analyze}')
plt.xlabel('Season')
plt.ylabel('Total Medals')
plt.savefig('seasonal_analysis_country.png')
plt.show()

# 6. Year-by-Year Breakdown

# Select countries or regions to analyze (e.g., 'USA', 'CHN', 'RUS')
countries_to_analyze = ['USA', 'CHN', 'RUS']

# Plotting year-by-year performance for selected countries
plt.figure(figsize=(14, 8))
for country in countries_to_analyze:
    country_data = unified_medal_df[unified_medal_df['NOC'] == country]
    yearly_medals = [country_data[f'Total_{year}'].values[0] if f'Total_{year}' in country_data else 0 for year in years]
    plt.plot(years, yearly_medals, marker='o', label=country, color=color_dict.get(country))

plt.title('Year-by-Year Medal Performance by Country')
plt.xlabel('Year')
plt.ylabel('Total Medals')
plt.legend(title='Country')
plt.grid(True)
plt.savefig('yearly_performance.png')
plt.show()

# 7. Heatmaps for Medal Distribution

# Define years from the dataframe columns
years = sorted(set(col.split('_')[1] for col in unified_medal_df.columns if 'Total_' in col))

# Create the medal distribution dataframe
medal_distribution = unified_medal_df.set_index('NOC')[['Total_' + year for year in years]].fillna(0)

# Calculate total medals for sorting and limit to top 15 countries
top_countries = medal_distribution.sum(axis=1).sort_values(ascending=False).head(15).index
medal_distribution_top = medal_distribution.loc[top_countries]

plt.figure(figsize=(12, 8))
sns.heatmap(medal_distribution_top, annot=True, fmt=".0f", cmap='YlGnBu', linewidths=.5, cbar_kws={'label': 'Total Medals'})
plt.title('Heatmap of Medal Distribution Over Time (Top 15 Countries)')
plt.xlabel('Year')
plt.xticks(rotation=45)  # Rotate x-axis labels for better readability
plt.ylabel('Country')
plt.savefig('heatmap_medal_distribution.png')
plt.show()

# 8. Pie Charts: Share of Total Medals Among Countries for a Specific Year

# Choose a specific year to analyze (e.g., '2024')
year_to_analyze = '2024'
total_medals_year = unified_medal_df[['NOC', f'Total_{year_to_analyze}']].dropna()
total_medals_year = total_medals_year[total_medals_year[f'Total_{year_to_analyze}'] > 0]

# Filter out countries with fewer than a threshold of medals
threshold = 10
main_countries = total_medals_year[total_medals_year[f'Total_{year_to_analyze}'] >= threshold]
others = total_medals_year[total_medals_year[f'Total_{year_to_analyze}'] < threshold].sum()

# Prepare data for pie chart
others_df = pd.DataFrame([['Other', others[f'Total_{year_to_analyze}']]], columns=['NOC', f'Total_{year_to_analyze}'])
main_countries = pd.concat([main_countries, others_df], ignore_index=True)

plt.figure(figsize=(8, 8))
plt.pie(main_countries[f'Total_{year_to_analyze}'], labels=main_countries['NOC'],
        autopct='%1.1f%%', startangle=140, colors=[color_dict.get(noc, '#808080') for noc in main_countries['NOC']])
plt.title(f'Share of Total Medals in {year_to_analyze}')
plt.savefig('pie_chart_medal_share_2024.png')
plt.show()

# 9. Changes in Country Performance Over Time

# Select a country to analyze (e.g., 'GRE')
country_to_analyze = 'GRE'

# Filter data for the selected country
country_data = unified_medal_df[unified_medal_df['NOC'] == country_to_analyze]

# Extract total medals by year for the country using available Total columns
total_columns = [col for col in country_data.columns if 'Total_' in col]
country_performance_over_time = country_data[total_columns].T
country_performance_over_time.columns = ['Total Medals']
country_performance_over_time['Year'] = country_performance_over_time.index.str.split('_').str[1].astype(int)

# Plotting performance over time
plt.figure(figsize=(10, 6))
plt.plot(country_performance_over_time['Year'], country_performance_over_time['Total Medals'], marker='o', linestyle='-', color='b')
plt.title(f'{country_to_analyze} Performance Over Time')
plt.xlabel('Year')
plt.ylabel('Total Medals')
plt.grid(True)
plt.savefig('country_performance_over_time.png')
plt.show()

# 10. Medal Share Comparison Between Two Countries

# Select two countries to compare (e.g., 'FRA' and 'GER')
countries_to_compare = ['FRA', 'GER']

# Filter data for the selected countries
comparison_data = unified_medal_df[unified_medal_df['NOC'].isin(countries_to_compare)]

# Extract total medals by year for each country
comparison_medals = comparison_data[['NOC'] + total_columns].set_index('NOC').T
comparison_medals.columns = countries_to_compare
comparison_medals['Year'] = comparison_medals.index.str.split('_').str[1].astype(int)

# Plotting the comparison over time using pandas plotting
comparison_medals.plot(x='Year', kind='bar', stacked=True, figsize=(14, 8),
                       color=[color_dict.get(country) for country in countries_to_compare])
plt.title(f'Medal Share Comparison Between {countries_to_compare[0]} and {countries_to_compare[1]} Over the Years')
plt.xlabel('Year')
plt.ylabel('Total Medals')
plt.savefig('medal_share_comparison.png')
plt.show()

print("Analysis Complete! All charts have been saved.")