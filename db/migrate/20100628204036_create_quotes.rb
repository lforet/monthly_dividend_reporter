class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table "quotes" do |t|
      t.column "ticker", :string
      t.column "name", :string
      t.column "dividend", :float
      t.column "exdate", :date
    end
  end

  def self.down
    drop_table "quotes"
  end
end
