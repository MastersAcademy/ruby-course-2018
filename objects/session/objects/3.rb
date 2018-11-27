class Doctor
    define_method("perform_rhinoplasty") do |argument|
          "performing rhinoplasty on #{argument}"
    end
  
    define_method("perform_checkup") do |argument|
          "performing checkup on #{argument}"
    end
    
    define_method("perform_interpretive_dance") do |argument|
      "performing interpretive dance on #{argument}"
    end
end
  
  doctor = Doctor.new
  puts doctor.perform_rhinoplasty("nose")
  puts doctor.perform_checkup("throat")
  puts doctor.perform_interpretive_dance("in da club")