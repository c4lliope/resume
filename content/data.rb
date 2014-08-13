require_relative 'education'
require_relative 'skill'

Education::Topic.new('Michigan State University', 3.85, 'summary').save
Education::Topic.new('Security', 4.0).save
Education::Topic.new('Networks', 4.0).save
Education::Topic.new('Databases', 4.0).save
Education::Topic.new('Algorithms', 4.0).save
Education::Topic.new('Design Patterns', 4.0).save
Education::Topic.new('Artificial Intelligence', 3.5).save
Education::Topic.new('Compilers', 4.0).save
Education::Topic.new('Media Processing', 4.0).save
Education::Topic.new('Computer Graphics', 4.0).save
Education::Topic.new('Operating Systems', 4.0).save

Skill.new('Ruby', 5).save
Skill.new('HTML & CSS', 5, 'html').save
Skill.new('Testing', 5).save
Skill.new('Design Patterns', 4, 'flowchart').save
Skill.new('C++', 4, 'plus').save
Skill.new('Command Line', 4, 'terminal').save
Skill.new('Design', 3).save
Skill.new('Javascript', 3, 'script').save
