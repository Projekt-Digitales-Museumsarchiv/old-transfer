UPDATE `category1` SET `category0`= (select category0 from category0 WHERE category1.parent = category0.id)

