dbt Analytics Engineering Demo
A small starter project to learn the core ideas of dbt, analytics engineering workflows, and modern ELT patterns. This repo is not intended to be a production project — it’s a personal sandbox for exploring dbt concepts end‑to‑end using DuckDB as the warehouse.

Project Overview
This project follows the basic structure of the Jaffle Shop tutorial and includes:

Raw data loaded via dbt seeds
Staging models (stg_*) that clean and standardize the raw data
Core models that join and aggregate customer + order data
Data tests for uniqueness, not‑null constraints, relationships, and accepted values
A local DuckDB database for fast iteration and experimentation
The goal is to practice analytics engineering fundamentals such as modeling, documentation, testing, lineage, and environment setup.

What I Learned
This project helped me understand:

How dbt structures transformations using models and macros
How to configure and run dbt with the DuckDB adapter
How seeds create reproducible “raw” datasets
The purpose of staging models for clean, well‑named fields
How to write and fix dbt tests (uniqueness, not‑null, accepted values, relationships)
How to debug model compilation errors and database‑level issues
How to manage schemas, naming conventions, and DAG organization
Project Structure
text
dbt-analytics-engineering-demo/
├── models/
│   ├── stg_customers.sql
│   ├── stg_orders.sql
│   ├── customers.sql
│   └── schema.yml
├── seeds/
│   ├── raw_customers.csv
│   └── raw_orders.csv
├── dbt_project.yml
└── dev.duckdb
How to Run This Project
Install deps

bash
pip install dbt-duckdb
Initialize DuckDB + run seeds

bash
dbt seed
Build the project

bash
dbt run
Run tests

bash
dbt test
Future Improvements
As I continue learning dbt, I'd like to explore:

Snapshots for tracking slowly changing dimensions
Incremental models
Custom macros and Jinja logic
Documentation site generation with dbt docs generate
More complex data modeling patterns
Purpose
This repository exists to document my learning process and show familiarity with dbt workflows, modeling best practices, testing, and the analytics engineering mindset.

