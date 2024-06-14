-- trigger to decrease quantity of items after inserting new orders
CREATE TRIGGER after_order
AFTER INSERT ON orders
FOR EACH ROW
UPDATE items
SET quantity = quantity - NEW.number
WHERE name = new.item_name;
