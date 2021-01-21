class InitTables < ActiveRecord::Migration[6.0]
  # NOTE: I like to have one migration per PR
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth

      t.timestamps
    end

    create_table :state_ids do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :number
      t.string :state
      t.date :expiration_date
      t.string :image_path

      t.timestamps
    end

    create_table :medical_recommendations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :number
      t.string :issuer
      t.string :state
      t.date :expiration_date
      t.string :image_path

      t.timestamps
    end
  end
end
