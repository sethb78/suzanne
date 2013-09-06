class CreateFunFacts < ActiveRecord::Migration
  def change
    create_table :fun_facts do |t|
      t.string :fact

      t.timestamps
    end
  end
end
