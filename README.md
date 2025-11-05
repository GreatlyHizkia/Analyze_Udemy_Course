# 📈 Udemy Courses Data Analysis: Uncovering E-Learning Success Factors

## 🎯 Project Goal
This project analyzes a rich dataset of Udemy courses (sourced from Kaggle) to identify key metrics driving course popularity, student engagement, and pricing strategies within the global e-learning ecosystem.

**Key Business Questions Addressed:**
1.  Identify key factors influencing course popularity and ratings (subscribers and reviews).
2.  Explore pricing trends across various subject categories and difficulty levels.
3.  Examine student engagement patterns through enrollment numbers and content duration.
4.  Compare free vs. paid courses to understand the impact on accessibility and learner participation.
5.  Determine Monthly Sales Trends (MoM) for popular categories.

## 🛠️ Technology Stack
* **Data Source:** Kaggle (`udemy_courses.csv`)
* **Data Cleaning & Database:** **SQL Server**
* **Analysis:** Advanced SQL (CTE, Window Functions, Aggregation)

## 🧽 Data Wrangling & Preparation (SQL-Driven)
The entire data preparation pipeline was executed end-to-end within SQL Server, demonstrating proficiency in database-level data manipulation:

1.  **Column Removal:** The non-essential **'url'** column was dropped to simplify the data model.
2.  **Duplicate Handling (Key Step!):** Data integrity was ensured by identifying and removing duplicate records based on **'course\_id'**. This was achieved using the **`ROW_NUMBER() OVER (PARTITION BY course_id...)`** Window Function technique.

## 🔍 Key Insights & Findings
*(This section should be filled with your most compelling results from the SQL queries.)*

* **Optimal Engagement Duration:** Courses within the **[X] to [Y] hour** range showed the highest average review-to-subscriber ratio, indicating a 'sweet spot' for content depth and learner completion.
* **Pricing Power:** The **[Subject Name]** category commanded the highest average price, yet maintained a top-tier subscriber count, suggesting inelastic demand in this domain.
* **Free vs. Paid:** While free courses attracted significantly more subscribers, the paid courses generated a higher rate of long-term review engagement, highlighting the correlation between financial commitment and participation.

## 💾 Project Structure & Code
All SQL scripts are organized below, showcasing the analytical progression:

| File | Description |
| :--- | :--- |
| `udemy_courses.csv` | Original raw dataset from Kaggle. |
| `udemy_analysis_queries.sql` | Contains all analytical queries (e.g., MoM trends, pricing distribution, subscriber ratios) using **CTE** and **Window Functions**. |

## 🚀 View the Full Analysis
Full project code and detailed SQL scripts are available in the repository folders. I'm open to connect and discuss this project! 👇

LinkedIn: [(https://www.linkedin.com/in/greatlyhizkiamanua/)]
email: greatlyhizkia@outlook.com

***

\#DataAnalysis \#SQLServer \#DataWrangling \#ProjectPortfolio \#AdvancedSQL \#Kaggle




