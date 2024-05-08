{% macro margin_percent (revenue, Purchase_cost) %}
ROUND(SAFE_DIVIDE(margin,revenue)*100, 2) 
{% endmacro %}