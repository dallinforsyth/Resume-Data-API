education1 = Education.create!(start_date: "04/04/04", end_date: "08/08/08", degree: "High School", university_name: "Mizzou", details: "The school is fluent in japanese, and allows everyone to eat bagel bites")
education2 = Education.create!(start_date: "05/05/05", end_date: "10/10/10", degree: "Batcholers", university_name: "louisiana state", details: "The school is fluent in japanese, and allows everyone to eat bagel bites
  ;0")

Experience.create!(start_date: "01/23/12", end_date: "04/13/16", job_title: "Taxi Driver", company_name: "Relaxi-Cab", details: "Drove a taxicab for mobile massages")
Experience.create!(start_date: "05/04/17", end_date: "12/12/19", job_title: "Buyer", company_name: "Ralph Lauren", details: "Bought clothing for Raplh Lauren")
Experience.create!(start_date: "08/25/22", end_date: "present", job_title: "Paleontologist", company_name: "A University", details: "do dino thangs and teach")

capstone1 = Capstone.create!(name: "Bill & Teds phonebooth", description: "allows user to transed time & visit other timelines", url: "https://cubicallbooth.com/wp-content/uploads/2020/01/Cubicall_Bill_Ted_PhoneBooth_a-closed.jpg", screenshot: "https://s3.crackedcdn.com/phpimages/article/3/2/4/739324.jpg?v=2")
capstone2 = Capstone.create!(name: "Taco catcher", description: "Helps user catch any taco droppings for a new taco", url: "https://external-preview.redd.it/HaB7phxR5dRUEs6UciHT4zWgEtiwR0yVmgHf0WySbpU.png?format=pjpg&auto=webp&s=0572eb54ce74731d3d1d10767941f2f0d5110ccd", screenshot: "https://i.ytimg.com/vi/4uRYAjCPE90/maxresdefault.jpg")
