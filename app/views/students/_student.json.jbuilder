json.id student.id
json.first_name student.first_name
json.last_name student.last_name
json.email student.email
json.phone_number student.phone_number
json.short_bio student.short_bio
json.linkedin_url student.linkedin_url
json.twitter_handle student.twitter_handle
json.personal_blog_website_url student.personal_blog_website_url
json.online_resume_url student.online_resume_url
json.github_url student.github_url
json.photo student.photo
json.experience student.experience.map do |experience|
  json.start_date experience.start_date
  json.end_date experience.end_date
  json.job_title experience.job_title
  json.company_name experience.company_name
  json.details experience.details
end
json.education student.education.map do |education|
  json.start_date education.start_date
  json.end_date education.end_date
  json.degree education.degree
  json.university_name education.university_name
  json.details education.details
end
json.skills student.skills.map do |skills|
  json.skill_name skills.skill_name
end
json.capstone student.capstone.map do |capstone|
  json.name captsone.name
  json.description capstone.description
  json.url capstone.url
  json.screenshot capstone.screenshot
end
json.created_at student.created_at
json.updated_at student.updated_at
