10.times do |blog|
  Blog.create!(
    title: "my sample blog post #{blog +1}",
    body: "cat ipsum"
  )
end

5.times do |skill|
    Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15
    )
end
 puts "5 skills created"

9.times do |item|
  Portfolio.create!(
    title: "holy shit #{item}",
    subtitle: "sub holy",
    body: "lorem ipsum cats delight",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

 puts "9 portfolio items created"
