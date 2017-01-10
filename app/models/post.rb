class Post < ApplicationRecord
  belongs_to :category
  validates_presence_of :title, :description, :category
  enum status: {pending: 0, draft: 1, published: 2, archieved: 3}
end
