import openai
import os
from dotenv import load_dotenv

load_dotenv()

openai.api_key = os.environ['OPENAI_API_KEY']
schema_files = os.listdir('opDB') 

all_schemas = {}

for file in schema_files:
    with open('opDB/' + file, 'r') as opened_file:
        all_schemas[file] = opened_file.read()

system_prompt = """
You are a data architect tasked with designing a Data Warehouse (DWH) optimized for analytical queries.
Your goal is to transform normalized operational database schemas into denormalized DWH schemas,
following best practices such as star schema or snowflake schema.
"""

user_prompt = f"""
Using the following operational database schemas:
{all_schemas}

Design a Data Warehouse (DWH) schema to enable reporting and analysis on food donations, 
distributions, and donor trends. Include the following:
1. Star schema design with facts and dimensions.
2. give me the DDLs of the DWH Schema
"""



print(system_prompt)
print(user_prompt)

response = openai.chat.completions.create(
    model="gpt-4",
    messages=[
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": user_prompt}
    ],
    temperature=0
)
answer = response.choices[0].message.content

if not os.path.exists('output'):
    os.mkdir('output')

sql_components = answer.split('---')

for i, sql in enumerate(sql_components):
    sql = sql.strip() 
    if not sql:
        continue  
    file_name = f"table_{i + 1}.sql"  
    file_path = os.path.join(output, file_name)
    with open(file_path, 'w') as file:
        file.write(sql)
    print(f"Saved {file_name}")


