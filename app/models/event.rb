class Event < ActiveRecord::Base
	validate :end_date_after_start_date
    validates :name, :start_date, :end_date, presence: true

    has_many :meetings
    has_and_belongs_to_many :sponsors
    has_many :attendees, through: :subscriptions

    def end_date_after_start_date
    	errors.add(:end_date, "must be after the start date") if end_date < start_date
    end
end
