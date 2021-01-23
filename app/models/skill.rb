class Skill < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_skill,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end
