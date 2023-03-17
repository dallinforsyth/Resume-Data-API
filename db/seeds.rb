Student.create!(
  id: 1,
  first_name: "Michael",
  last_name: "Scott",
  email: "michael@test.com",
  phone_number: "888-555-5556",
  short_bio: "I sell the best paper at the best paper company in the world",
  linkedin_url: "https://www.linkedin/in/michaelscott",
  twitter_handle: "MichaelScott",
  personal_blog_website_url: "test.com",
  online_resume_url: "test.com",
  github_url: "https://github.com/michaelscott",
  photo: "test.jpg",
  password: "password",
)
Student.create!(
  id: 2,
  first_name: "Ricky",
  last_name: "Bobby",
  email: "ricky@test.com",
  phone_number: "888-555-5555",
  short_bio: "I'm the best nascar driver alive!",
  linkedin_url: "https://www.linkedin/in/rickybobby",
  twitter_handle: "rickybobby",
  personal_blog_website_url: "test.com",
  online_resume_url: "test.com",
  github_url: "https://github.com/rickybobby",
  photo: "test.jpg",
  password: "password",
)
Student.create(
  id: 3,
  first_name: "Dale",
  last_name: "Doback",
  email: "dale@test.com",
  phone_number: "888-555-5557",
  short_bio: "I love to free load off of my father, and play the drums. I also hate Brennan Huff!",
  linkedin_url: "https://www.linkedin/in/daledoback",
  twitter_handle: "DaleDoback",
  personal_blog_website_url: "test.com",
  online_resume_url: "test.com",
  github_url: "https://github.com/daledoback",
  photo: "test.jpg",
  password: "password",
)

student1 = Student.first
student2 = Student.find_by(id: 2)

education1 = Education.create!(start_date: "04/04/04", end_date: "08/08/08", degree: "High School", university_name: "Mizzou", details: "The school is fluent in japanese, and allows everyone to eat bagel bites", student_id: student2.id)
education2 = Education.create!(start_date: "05/05/05", end_date: "10/10/10", degree: "Batcholers", university_name: "louisiana state", details: "The school is fluent in japanese, and allows everyone to eat bagel bites ;0", student_id: student1.id)

Experience.create!(start_date: "01/23/12", end_date: "04/13/16", job_title: "Taxi Driver", company_name: "Relaxi-Cab", details: "Drove a taxicab for mobile massages", student_id: student1.id)
Experience.create!(start_date: "05/04/17", end_date: "12/12/19", job_title: "Buyer", company_name: "Ralph Lauren", details: "Bought clothing for Raplh Lauren", student_id: student1.id)
Experience.create!(start_date: "08/25/22", end_date: "present", job_title: "Paleontologist", company_name: "A University", details: "do dino thangs and teach", student_id: student2.id)

Skill.create!(name: "HTML", student_id: student2.id)

Skill.create!(name: "CSS", student_id: student1.id)

Skill.create!(name: "Ruby", student_id: student2.id)

Skill.create!(name: "JavaScript", student_id: student1.id)

capstone1 = Capstone.create!(name: "Bill & Teds phonebooth", description: "allows user to transed time & visit other timelines", url: "https://cubicallbooth.com/wp-content/uploads/2020/01/Cubicall_Bill_Ted_PhoneBooth_a-closed.jpg", screenshot: "https://s3.crackedcdn.com/phpimages/article/3/2/4/739324.jpg?v=2", student_id: student2.id)
capstone2 = Capstone.create!(name: "Taco catcher", description: "Helps user catch any taco droppings for a new taco", url: "https://external-preview.redd.it/HaB7phxR5dRUEs6UciHT4zWgEtiwR0yVmgHf0WySbpU.png?format=pjpg&auto=webp&s=0572eb54ce74731d3d1d10767941f2f0d5110ccd", screenshot: "https://i.ytimg.com/vi/4uRYAjCPE90/maxresdefault.jpg", student_id: student1.id)
