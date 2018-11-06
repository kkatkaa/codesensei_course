def queue_time(clients, checkouts)
  checkouts_state = Array.new(checkouts, 0)
  sum_time = 0

  while clients.length > 0 || checkouts_busy(checkouts_state)
    checkouts.times do |checkout|
      if checkouts_state[checkout] == 0 && clients.length > 0
        checkouts_state[checkout] = clients.shift
      end
      checkouts_state[checkout] -= 1
    end
    sum_time += 1
  end
  sum_time
end

def checkouts_busy(checkouts_state)
  checkouts_state.map do |checkout|
    if checkout > 0
      true
    else
      false
    end
  end.any?
end

puts queue_time([5, 3, 4], 1)
puts queue_time([10, 2, 3, 3], 2)
puts queue_time([2, 3, 10], 2)
