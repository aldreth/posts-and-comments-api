require 'ffaker'

(1 .. 200).each do
  Post.create(title: FFaker::Lorem.phrase, body: FFaker::Lorem.paragraphs.join(' '))
end
