# irb

10.class # Integer
10.class.superclass # Numeric
10.class.superclass.superclass # Object
10.class.superclass.superclass.superclass # BasicObject
10.class.superclass.superclass.superclass.superclass # nil

# У nil можно узнать class - NilClass. Но у nil нельзя вызвать superclass. Почему?
