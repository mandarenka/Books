# encoding: utf-8

class Category < ActiveRecord::Base
  has_and_belongs_to_many :books, join_table: "books_categories"

  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :name, format: { with: /\A[A-ZŚŁŻŹĆŃ][a-zęóąśłżźćńA-ZŚŁŻŹĆŃ\s\-\/]+/ }
   validates_uniqueness_of :name
end
