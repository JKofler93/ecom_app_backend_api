# README

Relationships 
User has many Orders & Reviews
Order has many Inventory Orders, belongs to a User
Inventory has many Inventory Orders & Reviews
Inventory Order belongs to Inventory & Order
Review belong to Inventory & User 

User
email: string 
password_digest: string 

Order
user_id: integer
date: date
checked_out: boolean 

Inventory Order 
user_id: integer
inventory_id: integer

Inventory 
name: string
category: string 
price: float
brand: string 
image: string

Review
user_id: integer
inventory_id: integer
comment: text


User Stories (use a color for stretches):
User will be able to:
login/register, 
Confirm password
Filter item by category 
Add item 
Remove item
Check current order 
Cancel order
Submit order
Review item
View item reviews,
See order history 
Filter based on ratings
Search based on name
When user can expect delivery 
