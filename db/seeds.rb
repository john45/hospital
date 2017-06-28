# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  Post.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(2, false, 4))
end

# glavrach = Doctor.new(first_name: Faker::Name.first_name,
#                          last_name: Faker::Name.last_name,
#                          middle_name: Faker::Name.first_name,
#                          born: (rand(25..55).year.ago),
#                          about: Faker::Lorem.paragraph(2, false, 4))
# glavrach.manager = glavrach
# glavrach.save

50.times do |i|
  doctor = Doctor.new(email: "mangamen45#{i}@gmail.com", password: '123456')
  doctor.save
  puts doctor
  doctor_details = DoctorDetail.new(first_name: Faker::Name.first_name,
                         last_name: Faker::Name.last_name,
                         middle_name: Faker::Name.first_name,
                         born: rand(25..55).year.ago,
                         insurance_id: rand(11111111..22222222),
                         doctor_id: doctor.id)
  puts doctor_details
  doctor_details.save
end


# create specialization and positions
spec_list = ['ЛОР', 'Окулист', 'Хирург', 'Терапевт', 'Педиатр', 'Массажист']
spec_list.each do |spec|
  sp = Specialization.create(title: spec, description: Faker::StarWars.quote)
end

Doctor.all.each do |doctor|
  dw = DoctorWorktime.new(duration: 1)
  doctor.doctor_worktime = dw
  sp = Specialization.all.map { |spec| spec.id }
  Position.create(doctor: doctor, specialization_id: sp.sample)
end
