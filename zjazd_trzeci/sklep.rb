class Product
  attr_accessor :name, :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end
end

class Shop
  attr_accessor :name, :products
  def initialize(name)
    self.name = name
    self.products = []
  end

  def put_product(product, amount = 1)
    amount.times { products << product }
  end

  def take_product(product_name)
    index = products.index { |product| product.name == product_name}
    return products.delete_at(index) if index
  end
end

class Client
  attr_accessor :cash, :shopping_bag, :shopping_list
  def initialize(cash, list = [])
    self.cash = cash
    self.shopping_bag = []
    self.shopping_list = list
  end

  def perform_shopping(shop)
    omitted = []
    while product_name = shopping_list.pop
      product = shop.take_product(product_name)
      if (self.cash - product.price) > 0
        self.cash = self.cash - product.price
        shopping_bag << product
      else
      shop.put_product(product)
      omitted.push(product_name)
     end
  end
      if omitted.size != 0
        self.shopping_list = omitted
        return false
      else
        return true
      end
    end
end

# puts Product.new("chleb", 5)
# puts Product.new("masło", 6)
# puts Product.new("piwo", 4)
# puts Product.new("papierosy", 10)

puts shop = Shop.new('Zabka')
shop.put_product(Product.new('pomidor', 3), 4)
shop.put_product(Product.new('ogorek', 7), 5)
shop.put_product(Product.new('ser', 9), 3)

janusz = Client.new(7)
janusz.shopping_list = ['ogorek','ser','pomidor', 'pomidor']
puts "janusz"
puts janusz.inspect
puts "shop"
puts shop.inspect

janusz.perform_shopping(shop)
