RSpec.configure do |config|
  config.before(:all) do
    create_database
  end

  def create_database
    ActiveRecord::Migration.verbose = false
    ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
    ActiveRecord::Schema.define(version: 1) do
      create_table :orders
      create_table :order_items do |t|
        t.string :name
        t.references :order
      end
    end
  end
end

class Order < ActiveRecord::Base
  has_many :order_items, inverse_of: :order
end

class OrderItem < ActiveRecord::Base
  belongs_to :order
  validates :name, dynamic_uniqueness: { parent_association: :order, child_association: :order_items, message: "Its not valid" }
end
