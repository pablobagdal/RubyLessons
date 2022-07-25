# Вы приехали к бабушке на дачу и пошли за покупками.

# Написали два хэша (товар: количество): один для покупок в продуктовом, другой — в хозяйственном. А вышло так, что всё равно в районном сельпо всё продаётся вместе.

# Напишите программку, которая объединяет ваши списки в один и выводит его на экран.

food = {milk: 2, potato: 7, carrot: 14, tomato: 2, cucumber: 2, egg: 10, pasta: 1}
supplies = {glue: 1, paper: 2, soap: 1, hands_cream: 1, toothpaste: 1}

total_shopping_list = food.merge(supplies)

puts total_shopping_list
