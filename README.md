# 🛒 E-Commerce Sales & Customer Behavior Analysis (SQL Project)

This SQL project analyzes real-world e-commerce behavioral data from an online multi-category store.  
The dataset includes millions of user interactions such as `view`, `cart`, and `purchase` events.

---

## 📂 Dataset

- Source: [Kaggle - E-Commerce Behavior Data](https://www.kaggle.com/datasets/mkechinov/ecommerce-behavior-data-from-multi-category-store)
- File: `2019-Oct.csv`
- Size: 2M+ rows, includes timestamp, user_id, product, category, and event type

---

## 🔧 Tools Used

- MySQL & MySQL Workbench
- GitHub
- CSV Data (Excel for pre-checks)

---

## 📊 Key Analysis Areas

### 1. 📁 Exploratory Data Analysis (EDA)
- Verified schema and missing values
- Removed corrupted timestamps (year 2106)
- Checked min/max dates, event types

### 2. 🧑‍💻 Customer Behavior
- Total unique users, purchasers, and repeat buyers
- Engagement rate per session
- Insights into user types and behavior patterns

### 3. 💰 Sales & Product Analysis
- Top-selling products by purchase count
- Revenue by brand and category
- Average Order Value (AOV)
- Top spending users

### 4. 📅 Time-Based Analysis
- Sales trends by hour, weekday, and month
- Peak sales periods identified

### 5. 🔁 Funnel Analysis
- Views: ~1,016,814  
- Cart: ~14,762 (1.45% of views)  
- Purchase: ~17,000 (1.67% of views)
- Insight: Most users purchase directly without using the cart — likely due to mobile behavior

---

## 📎 Project Structure

ecommerce-sql-project/
├── queries/
│   ├── eda.sql
│   ├── customer_behavior.sql
│   ├── sales_analysis.sql
│   ├── time_analysis.sql
│   └── funnel_analysis.sql
├── data/
├── README.md
├── LICENSE
└── .gitignore

## 🔍 Insights

- View-to-purchase conversion rate ~1.67%
- Most purchases happen without cart usage
- Evening hours show the highest purchase activity
