# frozen_string_literal: true

class Users < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :github_token, :string
    add_column :users, :github_name, :string
  end
end
