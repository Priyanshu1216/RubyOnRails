Polymorphic association

Polymorphic association is an association through which a model can belongs(associated) to more than one model through a single association.



rails g model Post title:string
rails g model Article title:string
rails g model Event title:string


rails g model PolyComment commentable:references {polymorhic}


now---------------------------------------------------------------------------------------------------------------------------------------


in models, define association like this-

class Post < ApplicationRecord
  has_many :poly_comments, as: :commentable
end

class Article < ApplicationRecord
  has_many :poly_comments, as: :commentable
end

class Event < ApplicationRecord
  has_many :poly_comments, as: :commentable
end

class PolyComment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
end


# follow this approach to create data


# p = Post.create(name: "first post")
# p.poly_comments.create(title:"first comment on post")

# e = Event.create(name: "first event")
# e.poly_comments.create(title:"first comment on event")



Here in this example a model PolyComment belongs to more than one model(Post, Event and Article) through a single association.

Also one thing to keep in mind that in the poly_comments table

create_table "poly_comments", force: :cascade do |t|
  t.text "title"
  t.string "commentable_type", null: false
  t.integer "commentable_id", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.index ["commentable_type", "commentable_id"], name: "index_poly_comments_on_commentable"
end


there are two columns (commentable_type and commentable_id)

commentable_type is used to store the class name of associated model(event,post,article) when a new record is created.
For example, if the Polycomment belongs to a Post model, commentable_type would store the string "Post".


commentable_id is used to store the id of associated record.
For example, if the Polycomment belongs to the Post model and the associated post has an ID of 123, commentable_id would store 123.

