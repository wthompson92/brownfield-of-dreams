# frozen_string_literal: true

class CreateTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :tokens do |t|
      t.string :token_string
      t.string :uid
      t.string :nickname
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
