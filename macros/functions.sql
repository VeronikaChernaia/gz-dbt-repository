{% macro margin_percent (revenue, Purchase_cost) %}
ROUND(SAFE_DIVIDE((revenue-Purchase_cost),revenue)*100, 2) 
{% endmacro %}