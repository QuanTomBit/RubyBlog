class Comment < ApplicationRecord
  belongs_to :article # This sets up an association.

  validates :commenter, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
