class Category < ApplicationRecord
  has_many :questions
  has_many :child_categories, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent_category, class_name: "Category", optional: true
end
