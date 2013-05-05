class Event < ActiveRecord::Base
  attr_accessible :calendar_id, :description, :end_date, :start_date, :title
end
