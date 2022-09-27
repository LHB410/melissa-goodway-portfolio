class AddPriceToArts < ActiveRecord::Migration[6.1]
  def change
    add_monetize :arts, :price, currency: { present: false }
  end
end
