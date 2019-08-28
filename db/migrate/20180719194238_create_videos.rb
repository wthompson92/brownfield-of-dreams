# frozen_string_literal: true

class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title, default: 'No Video here!'
      t.text :description
      t.string :video_id
      t.string :thumbnail
    end
  end
end
