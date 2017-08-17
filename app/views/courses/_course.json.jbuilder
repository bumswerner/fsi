json.extract! course, :id, :name, :symbol, :description, :faculty_id, :coursetype_id, :created_at, :updated_at
json.url course_url(course, format: :json)
