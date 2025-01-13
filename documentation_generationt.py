import openai
import os
from dotenv import load_dotenv

load_dotenv()

openai.api_key = os.environ['OPENAI_API_KEY']

op_schema = os.listdir('opDB')
DWH_schema = os.listdir('output')

all_op_schemas = {}
all_dwh_schemas = {}


for file in op_schema:
    opened_file = open('opDB/' + file, 'r')
    all_op_schemas[file] = opened_file.read()

for file in DWH_schema:
    opened_file = open('output/' + file, 'r')
    all_dwh_schemas[file] = opened_file.read()



system_prompt = """You are a data engineer looking to create documentation for a newly created DWH."""

user_prompt = f"""
Using the following operational database schemas:
{all_op_schemas}

Using the following DWH schemas:
{all_dwh_schemas}


Explain how this data is modeled in the DWH, and document the column names with descriptions.

Make sure to:
- Include example queries that extract meaningful reports.
- Document any types or transformations created during the ETL process.
- Ensure all columns are explained with comments that describe their purpose in both the operational and DWH contexts.
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

if not os.path.exists('Docs'):
    os.mkdir('Docs')
with open('Docs/documentation.md', 'w') as file:
    file.write(answer)


