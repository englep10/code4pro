class Task < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: [:slugged, :finders]

  	belongs_to :project

	validates :title, presence: true, length: {maximum: 500}
	validates :note, presence: true, length: {maximum: 500}
	validates :video, presence: true
	validates :title, presence: true, length: {maximum: 500}
	validates :project, presence: true 
end
