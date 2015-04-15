def brakets(str)
  return " строка НЕвалидна так как начинается с закрывающейся скобки" if str[0] == ")"
  temp = 0
  str.chars.each do |char| # прохождение по строке
    temp += ( char == "(" ? 1 : -1 ) # анализ "равновесия" скобок
    return " строка невалидна " if temp < 0 # выход, если закрывающих больше, даже в середине строки
  end
  temp == 0 ? "все нормально - строка валидна" : " строка НЕвалидна "
end

def test_brakets()
  print "Задача z2 валидация строки."
  p ""
  n = "((()())())"
  p n
  p "Строка должна быть валидна"
  p brakets(n)
  p "      ====================================="
  n = "((()())"
  p n
  p "Строка должна быть НЕвалидна"
  p brakets(n)
  p "      ====================================="
  n = "()))(("
  p n
  p "Строка должна быть НЕвалидна"
  p brakets(n)
  p "      ====================================="
  n = ")())()()()()()()()()()()()()()()()()()()(()))(("
  p n
  p "Строка должна быть НЕвалидна"
  p brakets(n)
end

test_brakets
