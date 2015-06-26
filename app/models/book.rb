# encoding: utf-8

class Book < ActiveRecord::Base
  has_and_belongs_to_many :categories, join_table: "books_categories"
  belongs_to :author
  mount_uploader :photo, PhotoUploader

  validates :title, :presence => true
  validates :title, format: { with: /\A[A-ZŚŁŻŹĆŃ][a-zęóąśłżźćńA-ZŚŁŻŹĆŃ\s\-0-9]*\z/ }
end
