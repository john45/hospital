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

# Table name: doctor_worktimes

 # id             :integer          not null, primary key
 # doctor_id      :integer
 # days           :string           default("[monday, tuesday, wednesday, thurteday, friday]")
glavrach = Doctor.new(first_name: Faker::Name.first_name,
                         last_name: Faker::Name.last_name,
                         middle_name: Faker::Name.first_name,
                         born: (rand(25..55).year.ago),
                         about: Faker::Lorem.paragraph(2, false, 4))
glavrach.manager = glavrach
glavrach.save

50.times do
  doctor = Doctor.new(first_name: Faker::Name.first_name,
                         last_name: Faker::Name.last_name,
                         middle_name: Faker::Name.first_name,
                         manager_id: rand(1..10),
                         born: rand(25..55).year.ago,
                         about: Faker::Lorem.paragraph(2, false, 4))
  doctor.save
end


# create specialization and positions
spec_list = ['ЛОР', 'Окулист', 'Хирург', 'Терапевт', 'Педиатр', 'Массажист']
spec_list.each do |spec|
  sp = Specialization.create(title: spec, description: Faker::StarWars.quote)

  Doctor.all.each do |doctor|
    dw = DoctorWorktime.new(duration: 1)
    doctor.doctor_worktime = dw

    Position.new(doctor: doctor, specialization: sp)

  end
end
