class Appointment < ActiveRecord::Base
	belongs_to :doctor
  belongs_to :patient
  @@months={
		1=>	"January" ,
		2=>	"February" ,
		3=>	"March"   ,
		4=>	"April"  ,
		5=>	"May"  ,
		6=>	"June" ,
		7=>	"July"  ,
		8=>	"August" ,
		9=>	"September" ,
 		10=>"October"  ,
		11=>"November" ,
		12=>"December" 
		}
    def readable_time
		date=self.appointment_datetime.to_a #[0, 20, 20, 11, 1, 2016, 1, 11, false, "UTC"]
 
		"#{@@months[date[4]]} #{date[3]}, #{date[5]} at #{date[2]}:#{date[1]}"
	end
end
