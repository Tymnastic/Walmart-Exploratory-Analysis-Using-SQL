# Walmart-Exploratory-Analysis-Using-SQL

### Introduction

#### Overview
Welcome to the Walmart Sales Analysis project! This project aims to analyze sales data from Walmart using SQL queries to uncover insights into various aspects of the business, including sales performance, customer behavior, and product trends.

#### Objectives and Goals
1. **Total Sales Revenue for Each Branch**: Analyze the total sales revenue for each branch to understand the contribution of each location to overall revenue.
2. **Popular Product Line Generating Highest Revenue**: Identify the popular product lines generating the highest revenue to inform inventory management and marketing strategies.
3. **Distribution of Customer Types Across Branches**: Explore the distribution of customer types (Member vs. Normal) across branches to understand customer demographics.
4. **Most Commonly Used Payment Method**: Determine the most commonly used payment method to optimize payment processing systems.
5. **Sales Performance Variation Over Different Months or Days**: Investigate sales performance variation over different months or days to identify trends and patterns.
6. **Tax Contribution by Each Branch**: Determine the tax contribution by each branch to ensure compliance and financial transparency.
7. **Top Selling Products in Each Branch**: Identify the top selling products in each branch to focus on high-performing items.
8. **Gender Distribution of Customers Across Branches**: Explore the gender distribution of customers across branches to understand market segmentation.
9. **Peak and Dip Times of Sales Throughout the Day**: Analyze peak and dip times of sales throughout the day to optimize staffing and resource allocation.
10. **Product Lines with Highest Gross Margin Percentage**: Identify product lines with the highest gross margin percentage to prioritize high-profit items.
11. **Frequency of Purchases for Members vs. Regular Customers**: Compare the frequency of purchases for members vs. regular customers to understand customer loyalty and retention.


### Data Exploration

#### Description of the Dataset
The dataset contains sales data from Walmart, including information such as invoice ID, branch, city, customer type, gender, product line, unit price, quantity, tax, total, date, time, payment method, cost of goods sold (COGS), gross margin percentage, gross income, and rating.

#### SQL Queries

1. **Total Sales Revenue for Each Branch**: This query calculates the total sales revenue for each branch, providing insights into the contribution of each location to overall revenue.

2. **Popular Product Line Generating Highest Revenue**: Identifies the popular product lines generating the highest revenue, helping to inform inventory management and marketing strategies.

3. **Distribution of Customer Types Across Branches**: Explores the distribution of customer types (Member vs. Normal) across branches, providing insights into customer demographics.

4. **Most Commonly Used Payment Method**: Determines the most commonly used payment method, which can optimize payment processing systems.

5. **Sales Performance Variation Over Different Months or Days**: Investigates sales performance variation over different months or days to identify trends and patterns in sales.
   
6. **Tax Contribution by Each Branch**: Determines the tax contribution by each branch, ensuring compliance and financial transparency.

7. **Top Selling Products in Each Branch**: Identifies the top-selling products in each branch, focusing on high-performing items.

8. **Gender Distribution of Customers Across Branches**: Explores the gender distribution of customers across branches, aiding in market segmentation analysis.

9. **Peak and Dip Times of Sales Throughout the Day**: Analyzes peak and dip times of sales throughout the day to optimize staffing and resource allocation.

10. **Product Lines with Highest Gross Margin Percentage**: Identifies product lines with the highest gross margin percentage, prioritizing high-profit items.

11. **Frequency of Purchases for Members vs. Regular Customers**: Compares the frequency of purchases for members vs. regular customers, providing insights into customer loyalty and retention.

Excellent! Let's continue with the Results and Insights section:

### Results and Insights

After executing the SQL queries outlined earlier, the following results and insights were obtained:

1. **Total Sales Revenue for Each Branch**:
   - Insights: Branch C contributes the highest to the overall sales revenue with a contribution of $110568.71 .
   - 
     
      ![Total Revenue by Branch](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20071350.png)

2. **Popular Product Line Generating Highest Revenue**:
   - Insights: While the Food and Beverage product lines emerge as the primary revenue drivers, there exists a relatively narrower margin in revenue generation across other product lines.
   - 

     ![Product line Revenue](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20071736.png)
   
  
4. **Distribution of Customer Types Across Branches**:
   - Insights: The distribution of customer types across branches shows a slightly higher prevalence of members compared to normal customers. Specifically:

            Branch A has 167 members and 173 normal customers.
            Branch B has 165 members and 167 normal customers.
            Branch C has 169 members and 159 normal customers.
     This indicates a relatively balanced distribution of customer types across branches, with members being slightly more prevalent. This could suggest a potential opportunity for targeted marketing or loyalty             programs aimed at retaining and attracting more members.
  
   - ![Distribution of Customers Across Branch](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20072232.png)

5. **Most Commonly Used Payment Method**:
   - Insights: The most commonly used payment methods across transactions are as follows:
  
   - ![payment Method used](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20072156.png)

6. **Sales Performance Variation Over Different Months or Days**:
   - Monthly Sales: Highest sales in January, lowest in March.
      - The analysis of sales performance across different months reveals the following key insights:
         January emerges as the most profitable month, with total sales revenue amounting to $116,291.87, indicating strong consumer spending and sales activity during this period.
         March follows closely behind January with total sales revenue of $109,455.51, demonstrating continued robust sales performance.
         February exhibits comparatively lower sales revenue compared to January and March, with a total of $97,219.37, suggesting a potential dip in consumer spending or sales activity during this month.
         This analysis can provide valuable insights into seasonal trends and patterns in sales performance, enabling businesses to adjust marketing strategies, inventory levels, and promotional activities to 
         capitalize on peak sales months and address challenges during slower months
        
   - ![Monthly sales](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20072132.png)
   
   - Daily Sales: Peak sales occur on Saturday, followed by Monday.  
     -  Saturday has the highest total sales revenue, amounting to $56,120.81, indicating that it is the most profitable day of the week.
         Tuesday follows closely behind with total sales revenue of $51,482.25, suggesting that it is also a strong sales day.
         Thursday and Sunday exhibit relatively lower sales revenue compared to Saturday and Tuesday, with values of $45,349.25 and $44,457.89 respectively.
         Friday and Wednesday demonstrate similar sales performance, with total sales revenue of $43,926.34 and $43,731.14 respectively, falling slightly below the figures for Tuesday, Thursday, and Sunday.
         Monday shows the lowest total sales revenue among the days, with $37,899.08, indicating that it is the least profitable day of the week
      
    ![Daily sales](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20072109.png)
   

7. **Tax Contribution by Each Branch**:
   - Branch C leads in tax contributions with 34.24%, followed by Branch B and A with 32.88% each. This reflects Branch C's significant sales volume subject to taxation. Branches B and A demonstrate comparable tax          contributions, indicating consistent sales activity. Understanding these patterns aids in strategic resource allocation and tax planning.
   - 
    ![Tax Contribution by Branch](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20072021.png)
     

9. **Top Selling Products in Each Branch**: .
   - Each branch's top-selling product:
      Branch A: Home and Lifestyle, $22,417.20
      Branch B: Sports and Travel, $19,988.20
      Branch C: Food and Beverages, $23,766.85
     
    ![Top selling product in each brand](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20071950.png)


11. **Gender Distribution of Customers Across Branches**:
   - Branch C has the highest proportion of female customers at 54.27%, suggesting potential preferences or marketing effectiveness targeting this demographic.
     Branch A and B show a relatively balanced gender distribution, with slight male predominance in Branch A and female predominance in Branch B.
     Understanding these distributions aids in targeted marketing and product assortment strategies to better serve diverse customer bases.
           
    ![Gender Distribution Across Branch](https://github.com/Tymnastic/Walmart-Exploratory-Analysis-Using-SQL/blob/main/Screenshot%202024-02-18%20071912.png)


11. **Peak and Dip Times of Sales Throughout the Day**:
    - Morning: Highest sales at X AM.
    - Afternoon: Highest sales at X PM.
    - Evening: Highest sales at X PM.
    - Insights: Peak sales occur during morning/afternoon/evening hours, with potential implications for staffing and inventory management.

12. **Product Lines with Highest Gross Margin Percentage**:
    - Product line X: Gross margin percentage is X%.
    - Product line Y: Gross margin percentage is X%.
    - Insights: Product line X/Y has the highest gross margin percentage, indicating potential areas for profit optimization.

13. **Frequency of Purchases for Members vs. Regular Customers**:
    - Members: Average X purchases per month.
    - Regular customers: Average X purchases per month.
    - Insights: Members/regular customers exhibit higher/lower frequency of purchases, indicating customer loyalty.

These results and insights provide valuable information to Walmart stakeholders, enabling data-driven decision-making and strategic planning.

Next, we'll wrap up the project with the Conclusion section. Let me know if you're ready to proceed!

