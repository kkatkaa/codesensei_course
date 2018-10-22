# Twoim zadaniem jest zaimplementowanie metody find_index tak aby wypisywała indeks
# (liczbę), pod którym znajduje się wartość value w tablicy array . Jeśli elementu nie ma w
# tablicy metoda powinna wypisać “not found”. Jeśli elementów o danej wartości jest
# więcej niż jeden funkcja powinna wypisać indeks pierwszego z nich.

def find_index(array, value)
    if array.include?(value)
       puts value
    else
     puts "Not found"
    end
end

find_index([1, 2, 3, 4, 5], 3)
find_index([5, 8, 6, 2, 2, 10], 2)
find_index([10, 20, 30], 100)
find_index([], 0)
