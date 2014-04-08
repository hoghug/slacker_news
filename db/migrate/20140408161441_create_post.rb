class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.date :date
      t.integer :ranking
      t.belongs_to :user
    end

    create_table :comments do |t|
      t.string :message
      t.belongs_to :post
      t.belongs_to :user
      t.references :commentable, polymorphic: true
    end

    create_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.integer :anarchy
    end

    create_table :users do |t|
      t.string :name
    end
  end
end
