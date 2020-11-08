class Author < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match", if: :password
end
