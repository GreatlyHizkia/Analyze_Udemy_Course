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

* **Pricing Power:** The **Web Development** and **Business Finance** category commanded the highest average price, yet maintained a top-tier subscriber count, suggesting inelastic demand in this domain.
* **Content Duration vs. Subscribers:** Analysis reveals a clear *Sweet Spot* for course length, demonstrating that content **under 5 hours** and content **over 15 hours** attract lower average subscriber numbers. The most successful duration range is **10 to 15 hours**, where courses yield the highest average subscriber count at **~6,746 subscribers** per course. This suggests that learners on the platform value comprehensive content that is still manageable and goal-oriented, avoiding both overly brief tutorials and extensive, multi-semester commitments.
* **Free vs. Paid:** While free courses attracted significantly more subscribers, the paid courses generated a higher rate of long-term review engagement, highlighting the correlation between financial commitment and participation.
* **Markets Based on Difficulty Level:** Analysis of course levels reveals that the vast majority of the market is concentrated in foundational learning. The "All Levels" and "Beginner Level" categories collectively account for 93.2% of the total subscriber base (over 10.9 million subscribers).

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




