class Meeting < ActiveRecord::Base
    validates :name, :start_time, :end_time, presence:true
    validate :end_time_after_start_time
    belongs_to :location
    belongs_to :event
    
    def end_time_after_start_time
        errors.add(:end_time, "must be after the start time") if end_time <= start_time
    end
end
