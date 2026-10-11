-- PRIME DXF: synthetic sales CRM dataset, not actual employer/customer data.
-- Import sales_demo.csv as sales_demo before running.
SELECT region, quarter,
 COUNT(*) AS opportunities,
 SUM(CASE WHEN stage NOT IN ('Won','Lost') THEN deal_value_usd ELSE 0 END) AS open_pipeline,
 SUM(CASE WHEN stage = 'Won' THEN deal_value_usd ELSE 0 END) AS closed_won,
 SUM(deal_value_usd * CASE stage
 WHEN 'Discovery' THEN 0.10 WHEN 'Qualified' THEN 0.25
 WHEN 'Proposal' THEN 0.50 WHEN 'Negotiation' THEN 0.75
 WHEN 'Won' THEN 1.00 ELSE 0 END) AS weighted_value
FROM sales_demo GROUP BY region, quarter ORDER BY quarter, region;
-- Win rate denominator: only closed deals (Won + Lost), not open opportunities.
