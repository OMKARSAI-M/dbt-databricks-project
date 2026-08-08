{# {{ "Hello World"}}#}
{# this is a comment#}
{% set var1 = 'Hello World' -%}

{{var1}}

{% set var2-%}
    Hello Omkar
{% endset -%}
{{var2}}
{% set var3 = ['Hi','omkar','All is Well'] -%}
{{var3}}
{% set temperature = 20 -%}
{% if temperature > 20%}
{{'It is hot'}}
{%elif temperature < 0%}
{{'It is freezeing'}}
{%else%}
{{'It is not hot'}}
{%endif%}
{# for loops #}
{% set names= ['id','quantity','unitprice'] -%}
{{names}}
{% for name in names %}
{{name}}
{%endfor%}
{# dbt functions#}
{# we can also use python modules as per the dbt functions to write jinja functions#}
{% set now = modules.datetime.datetime.now() %}
{{ now }}

{% set date_today = modules.datetime.date.today() %}
{{date_today}}



