# Redesigning Database
Building a framework for database redesign of my family business 

## Overview  
The family business, with over 30 years of history in distributing textile products to the Middle East, operates on a database that's approximately 20 years old. Given the significant changes in our business model, there's an evident need to either redesign or upgrade our database to align with the company's current operations, making this project an essential reference for the forthcoming redevelopment.
While the specifics of the original database creation are unclear, it's presumed to have been developed using SQL. My access is limited to software functionalities that enable queries for orders, items, payments, customers, etc. The limitations of the current system have necessitated the use of separate Excel sheets for managing various aspects, leading to inefficiencies.
For the redesign, I will utilize a relational database model. This approach is suitable due to the presence of numerous attributes that can be effectively grouped and normalized to minimize redundancies. The database will manage tens of thousands of records, which, considering the average of no more than 500 new orders per year, makes scalability a minor concern. However, the design will ensure simplicity in table relationships, allowing for scalability if needed. The primary focus will be on establishing a robust general structure and relationships between entities, acknowledging that the actual database will encompass more tables and fields than this project depicts. MySQL will be used throughout this project.

## Disclaimer
The data used in this project are randomly generated. Since the actual data in our company contains a lot of confidential information, I decided not to use those. Manually making arbitrary changes to the actual data would have been optimal, but I could not find a way that would not be too time-consuming although the random generation also took an unexpectedly long time to make it seem reasonable. Some numbers in this randomly generated data might be unrealistic, but I believe it is in an acceptable range for the queries used in this project.

## Schema
The actual database would be much complicated than what is presented here, but for the purpose of this project, I narrowed it down to the most significant entities and attributes. Please refer to the diagram on the next page for more details.
