class CreateCoffeeBeans < ActiveRecord::Migration
  def self.up
    create_table :coffee_beans do |t|
      t.string :variety
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :coffee_beans
  end
end
