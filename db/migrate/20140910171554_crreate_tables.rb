class CrreateTables < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :full_name
      t.timestamps
    end

    create_table :questions do |t|
      t.string :question
      t.belongs_to :user
      t.timestamps
    end

    create_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :response
      t.timestamps
    end

    create_table :responses do |t|
      t.string :response
      t.belongs_to :user
      t.timestamps
    end

  end
end
