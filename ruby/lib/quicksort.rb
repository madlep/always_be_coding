def quicksort(xs)
  return xs if xs.length <= 1

  pivot = xs.length / 2
  pivot_value = xs[pivot]

  xs1 = xs.select{|x| x < pivot_value}
  xs2 = xs.select{|x| x > pivot_value}

  quicksort(xs1) + [pivot_value] + quicksort(xs2)
end
