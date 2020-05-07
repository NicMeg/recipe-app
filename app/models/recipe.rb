class Recipe < ApplicationRecord
    belongs_to :user
    # validates :user_id, required: true
end
