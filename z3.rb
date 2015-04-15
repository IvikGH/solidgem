def sequence(arr)
  result = []
  i = 0
  while i < arr.size-1
    missing = arr[i+1] - arr[i]
    (1..(missing-1)).each { |counter| result << arr[i] + counter } if missing > 1
    i += 1
  end
  result
end

def test_sequence
  p 'Задача z3 проверка последовательности.'
  p ""
  n = [1,3,5]
  p n
  p "Метод должен вернуть числа: 2, 4 "
  p sequence(n)
  p "      ====================================="
  n = [1,2,3,6,7]
  p n
  p "Метод должен вернуть числа: 4, 5 "
  p sequence(n)
  p "      ====================================="
  n = [1, 8]
  p n
  p "Метод должен вернуть числа: 2, 3, 4, 5, 6, 7 "
  p sequence(n)
  p "      ====================================="
  n = [1, 5, 8]
  p n
  p "Метод должен вернуть числа: 2, 3, 4, 6, 7 "
  p sequence(n)
  p "      ====================================="
end

test_sequence
