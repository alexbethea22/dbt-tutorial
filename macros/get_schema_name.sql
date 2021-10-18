{% macro generate_schema_name_for_env(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if target.name == 'dev' and custom_schema_name is not none -%}

        {{ trim | custom_schema_name }}

    {%- else -%}

        {{ default_schema }}

    {%- endif -%}

{%- endmacro %}