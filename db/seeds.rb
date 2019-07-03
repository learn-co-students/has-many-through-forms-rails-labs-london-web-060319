# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    groove = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
    bob = User.create(username: 'CoolGuy5')
    rob = User.create(username: 'CoolGuy6')
    comment1 = Comment.create(content: "Great Post!", user_id: 1, post_id: 1)
    comment2 = Comment.create(content: "Rubbish Post!", user_id: 1, post: 1)
    comment3 = Comment.create(content: "Ok Post!", user_id: 2, post: 1)
    
    comment1 = groove.comments.build(content: "Great Post!", user: bob)
    comment2 = groove.comments.build(content: "Rubbish Post!", user: bob)
    comment3 = groove.comments.build(content: "Ok Post!", user: rob)
    groove.save
