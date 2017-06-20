def spiral_access(two_d,&block)
  return[[]] if two_d.empty? || two_d[0].empty?
  spiral_order = []

  ((two_d.length+1)/2).times do |count|
    x = count
    y = count

    #Moving to the right
    while y < two_d.length - count
      block.call two_d[x][y]
      y += 1
    end
    y-= 1

    #Moving down
    x += 1
    while x < two_d.length - count
      block.call two_d[x][y]
      x += 1
    end
    x -= 1

    #Moving to the left
    y -= 1
    while y >= 0 + count
      block.call two_d[x][y]
      y -= 1
    end
    y += 1

    #Moving up
    x -= 1
    while x > 0 + count
      block.call two_d[x][y]
      x -= 1
    end
    x += 1

  end
end

two_d = [
    [ 1,  2,  3,  4, 5],
    [16, 17, 18, 19, 6],
    [15, 24, 25, 20, 7],
    [14, 23, 22, 21, 8],
    [13, 12, 11, 10, 9],
  ]
order = []
spiral_access two_d do |i|
  order << i
end
p order
