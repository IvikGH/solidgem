def fact(num)
  if num == 0
    1
  else
    num * fact(num-1)
  end
end

def test
  p 'Задача z1 вычисление факториала ( через рекурсию ).'
  p "fact(3) должен равняться #{test_fact(3)} результат #{fact(3)}"
  p "fact(4) должен равняться #{test_fact(4)} результат #{fact(4)}"
  p "fact(5) должен равняться #{test_fact(5)} результат #{fact(5)}"
  p "fact(1) должен равняться #{test_fact(1)} результат #{fact(1)}"
    "fact(0) должен равняться #{test_fact(0)} результат #{fact(0)}"
end

def test_fact(num)
  (1..num).inject(:*) || 1
end

p test
