# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
#   Post.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(2, false, 4))
# end

# Table name: doctors
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  middle_name :string
#  born        :date
#  manager_id  :integer
#  about       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null

  # has_many :subordinates, class_name: 'Doctor', foreign_key: 'manager_id'
  # belongs_to :manager, class_name: 'Doctor'

  # has_one :avatar, as: :imageable

  # has_many :records
  # has_many :patients, through: :records

  # has_one :specialization
  # has_one :doctor_worktime

# Table name: specializations
#
#  id          :integer          not null, primary key
#  doctor_id   :integer
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Table name: doctor_worktimes
#
#  id             :integer          not null, primary key
#  doctor_id      :integer
#  days           :string           default("[monday, tuesday, wednesday, thurteday, friday]")
glavrach = Doctor.new(first_name: Faker::Name.first_name,
                         last_name: Faker::Name.last_name,
                         middle_name: Faker::Name.first_name,
                         born: (rand(25..55).year.ago),
                         about: Faker::Lorem.paragraph(2, false, 4))
glavrach.manager = glavrach
glavrach.save
glav_spec = Specialization.create(doctor_id: glavrach,
                                  title: Faker::StarWars.specie,
                                  description: Faker::StarWars.quote)

50.times do
  doctor = Doctor.new(first_name: Faker::Name.first_name,
                         last_name: Faker::Name.last_name,
                         middle_name: Faker::Name.first_name,
                         manager_id: rand(1..10),
                         born: rand(25..55).year.ago,
                         about: Faker::Lorem.paragraph(2, false, 4))
  doctor.save
  spec = Specialization.create(doctor_id: doctor,
                               title: Faker::StarWars.specie,
                               description: Faker::StarWars.quote)
end
