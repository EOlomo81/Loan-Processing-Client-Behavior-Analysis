# Loan-Processing-Client-Behavior-Analysis
This project analyzes a loan dataset to understand processing timelines and borrower preferences. The original data was stored in a MySQL database, where I exported the table to a CSV file for flexible analysis in Python.

# Project Questions

This project answers the following key questions:

1. Loan Processing Time by Loan Type
   How long does it take different loan types to get approved, disbursed, and eventually due? Are there inefficiencies or delays or biases skewed toward certain loan categories?

2. Loan Preferences by Employment Type
   What kinds of loans are most popular among full-time, part-time, and self-employed individuals? What does that say about borrower needs and financial lifestyles?

3. Loan Preferences by Marital Status
   Do single, married, or divorced clients show different patterns in the types of loans they take?

---

## 📁 Project Structure

```bash
main/Analysis
├── loan_analysis.ipynb              # Analysis (code written in Jupyter Notebook)
├── spread_in_bias.png         # Plot of the difference in time of application. approval, disbursement and due date between the different loan types
├── spread_in_employment_type.png        # Plot of the difference in loan types based on employment types
├── spread_in_marital_status.png        # Plot of the difference in loan types based on marital status
├── spread_in_preferences.png        # Plot of the percentage differences in loan types based on employment types
├── spread_in_preferences_mar.png        # Plot of the percentage differences in loan types based on marital status
├── Cleaning
|    ├── cleaned_finance.csv              # Dataset used for SQL cleaning
|    ├── Project 1 Finance Predictive Analysis-ML.csv         # Raw data
|    ├── cleaned_finance.csv        # Dataset after SQL cleaning
└── README.md
