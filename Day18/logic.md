## Logic Flow
The calculation is performed using a single SQL query without a Common Table Expression (CTE) for compatibility with older SQL engines:

1. Profit Calculation: `(collection_in_cr - budget_in_cr)` is calculated as an alias named `profit`.
2. Tax Calculation: A `CASE` statement evaluates the profit and applies the appropriate multiplier:
    - Tier 1: `profit * 0.1` (10%)
    - Tier 2: `profit * 0.15` (15%)
    - Tier 3: `profit * 0.18` (18%)
3. Selection: Retrieves `id`, `name`, `profit`, and the derived `tax_amount`.
