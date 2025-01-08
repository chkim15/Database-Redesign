# Database Redesign using MySQL

Database modernization project for a 30-year-old Middle Eastern textile distribution business, replacing legacy systems with a scalable MySQL solution.

## Business Context

- Replacing 20-year-old database system
- Eliminating reliance on separate Excel sheets
- Handling ~500 orders annually
- Managing multi-currency transactions (USD/KRW)
- Supporting import/export logistics

## Database Design

### Core Features
- Normalized relational schema
- Integrated currency conversion
- Multi-payment order tracking
- Production sequence monitoring
- Logistics management (import/export)

### Key Tables
- Customers
- Orders
- Items
- Payments
- Production
- Import/Export
- Exchange Rates

### Implementation Details
- MySQL backend
- Stored procedures for common queries
- Automated exchange rate handling
- Cost and profit analysis tools
- Comprehensive reporting system

## Sample Queries
1. Order information retrieval
2. Customer balance tracking
3. Monthly/yearly sales analysis 
4. Cost and profit calculations
5. Item specification lookup

## Future Development
- API integration for live exchange rates
- Web interface development
- Shipping system integration
- Automated reporting tools

## Technical Notes
- Schema designed for tens of thousands of records
- Optimized for < 500 new orders/year
- Test data randomly generated
- Scalable table relationships

*Project completed December 2022*
