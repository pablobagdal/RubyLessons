# оператор select выбирает значения и возвращает массив
p %w{a b c d e f g 1 2 3 4 0}.select { |char| char.match(/[a-z]/) }
# противоположный ему оператор reject
p %w{a b c d e f g 1 2 3 4 0}.reject { |char| char.match(/[a-z]/) }
