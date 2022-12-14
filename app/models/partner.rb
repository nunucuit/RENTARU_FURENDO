class Partner < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments
  has_one_attached :photo_url

  # has_one_attached :photo
  GENDER = ["Female", "Male", "Other"]
  validates :gender, presence: true, inclusion: { in: GENDER }
  TEMPERAMENT = ["Extrovert", "Neutral", "Shy"]
  validates :temperament, presence: true, inclusion: { in: TEMPERAMENT }
  INTEREST = ["Nature", "Sport", "Reading", "Music", "Gaming", "Traveling"]
  validates :interest, presence: true, inclusion: { in: INTEREST }
end
