# Sales Data Analysis Pipeline

## 1. Overview  
This project reads sales and customer CSV data, merges the datasets, and computes summary statistics such as total revenue, number of orders, and averages by region and category. It outputs a CSV file and a plot showing revenue by region. The expected result is a cleaned, aggregated dataset and a visualization of sales performance.

---

## 2. Data  
The data is stored in CSV format inside a `datafiles/` folder. The files include `sales_jan.csv` (transaction data) and `customer_lookup.csv` (customer-to-region mapping). Each file is structured in rows and columns, where rows represent records and columns represent features.
---

## 3. Environment Setup  
Run these commands in your terminal to ensure your environment is correct before running analysis

Option 1 (Conda):
```bash
conda env create -f environment.yml -n sales-project
conda activate sales-project
```
Option 2 (UV):
```bash
uv sync
uv run python analysis.py
```

Option 3 (Docker):
```bash
docker build -t sales-project .
```

## 4. Reproduce a Result  

Run one of the following options:

Option 1 (Conda):
```bash
python analysis.py
```

Option 2 (UV):
```bash
uv run python analysis.py
```

Option 3 (Docker)
```bash
docker run --rm sales-project
```

After running the command, a new folder named *outputs/* will be created in the project directory. Inside this folder, you should see: *summary_by_region.csv* and *revenue_by_region.png* and terminal should print __Analysis complete.__ . *summary_by_region* should contain aggregated sales statistics by region and category. *revenue_by_region* should display a bar chart of revenue by region.

## 5. Troubleshooting  

- **File not found error:**  
  Make sure `datafiles/` exists and contains `sales_jan.csv` and `customer_lookup.csv`.

- **Environment not working:**  
  Conda → run `conda activate sales-project`  
  uv → use `uv run python analysis.py`

- **Missing packages error:**  
  Re-run setup:  
  `conda env create -f environment.yml -n sales-project`  
  or  
  `uv sync`

- **No outputs created:**  
  Make sure you ran the script from the project root and check for errors in the terminal.





