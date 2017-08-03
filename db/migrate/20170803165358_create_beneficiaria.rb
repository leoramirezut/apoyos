class CreateBeneficiaria < ActiveRecord::Migration[5.1]
  def change
    create_table :beneficiaria do |t|
      t.string :nombre
      t.float :estatura
      t.string :complexion
      t.string :tez

      t.timestamps
    end
  end
end
