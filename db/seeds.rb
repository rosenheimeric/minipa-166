# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.delete_all
Course.delete_all
Student.delete_all

5.times do
  Course.create(
      name: Faker::Educator.course_name, subject: Faker::Educator.subject, code: Faker::Number.between(from: 1000, to: 9999))
end

(1..10).each do
  student = Student.create(name: Faker::Name.name,
    dob: Faker::Date.between(from: 30.years.ago, to: 10.years.ago),
    gender: ['f', 'm'].sample)
end

1.times do
  school = School.create(student_id: Student.all.sample.id, course_id: Course.all.sample.id)
end