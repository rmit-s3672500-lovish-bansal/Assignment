module CourseHelper
    def gravatar_for(course)
    gravatar_id = Digest::MD5::hexdigest(course.name)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: course.name, class: "gravatar")
  end
end
