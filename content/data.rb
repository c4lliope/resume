require_relative 'education'
require_relative 'skill'

Data = OpenStruct.new

Data.education = []
Data.skills = []

Topic = Education::Topic

Data.education << Topic.new('Michigan State University', 3.85, 'summary')
Data.education << Topic.new('Security', 4.0)
Data.education << Topic.new('Networks', 4.0)
Data.education << Topic.new('Databases', 4.0)
Data.education << Topic.new('Algorithms', 4.0)
Data.education << Topic.new('Design Patterns', 4.0)
Data.education << Topic.new('Artificial Intelligence', 3.5)
Data.education << Topic.new('Compilers', 4.0)
Data.education << Topic.new('Media Processing', 4.0)
Data.education << Topic.new('Computer Graphics', 4.0)
Data.education << Topic.new('Operating Systems', 4.0)
Data.education.sort_by!(&:level).reverse!

Data.skills << Skill.new('Ruby', 5)
Data.skills << Skill.new('HTML & CSS', 5, 'html')
Data.skills << Skill.new('Testing', 5)
Data.skills << Skill.new('Design Patterns', 4, 'flowchart')
Data.skills << Skill.new('C++', 4, 'plus')
Data.skills << Skill.new('Command Line', 4, 'terminal')
Data.skills << Skill.new('Design', 3)
Data.skills << Skill.new('Javascript', 3, 'script')
