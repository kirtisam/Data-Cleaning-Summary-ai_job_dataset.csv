# Data-Cleaning-Summary-ai_job_dataset.csv
Objective:
To clean and prepare a dataset of over 15,000 AI-related job postings for analysis and dashboard visualization using SQL Server and Power BI.

**🧾 Steps Performed:**
Imported CSV into SQL Server using Import Flat File Wizard.
Removed Nulls and Blanks
Deleted rows with missing job titles, companies, or locations.

**Example SQL:**
sql
Copy
Edit
DELETE FROM ai_job_dataset WHERE JobTitle IS NULL OR JobTitle = '';
Trimmed Whitespaces
Cleaned trailing/leading spaces using LTRIM(RTRIM(...)).
Standardized Text Formatting
Converted job titles and company names to lowercase for consistency.
Removed Duplicates
Applied ROW_NUMBER() with a CTE to delete duplicate entries based on JobTitle + Company.
Corrected Data Types
Converted salary fields to numeric format using TRY_CAST().
Verified Cleaned Data

Ensured total record count aligned with expectations.

Sample queries to validate distribution, salary range, and location spread.

**✅ Result:**
Clean dataset is now ready for:
Exploratory Data Analysis (EDA)
Power BI dashboard creation
Insights generation on AI job trends, salary, and hiring patterns
