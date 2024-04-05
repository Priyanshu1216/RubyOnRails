In Ruby on Rails and ActiveRecord, "eager loading" and "preloading" are both techniques used to optimize database queries by reducing the number of database calls 
made during the retrieval of associated records. However, they operate slightly differently:

Eager Loading:

Eager loading refers to the practice of loading associated records along with the main record in a single query. 
It is achieved using the includes method in ActiveRecord queries.
When we eager load associations, ActiveRecord generates a single SQL query that fetches both the main record and its associated records in one go,
reducing the number of database queries required.



Example :

@posts = Post.includes(:comments)                 # Eager loading using includes

In this example, @posts will contain a collection of Post objects, and each Post object will have its associated Comment objects loaded eagerly.



Preloading:

Preloading, on the other hand, is similar to eager loading but operates at a slightly lower level. 
It loads the associated records separately from the main query but does so more efficiently than lazy loading.
Preloading is useful when you need to access the associated records individually but still want to minimize the number of database queries.

Example:

@posts = Post.all.preload(:comments)              # Preloading using preload

In this example, @posts will contain a collection of Post objects, but the associated Comment objects will not be loaded immediately.
However, when we access the comments association of each Post object, ActiveRecord will have already fetched all the associated Comment records in advance, reducing the need for additional queries.




Lazy loading:

In Ruby on Rails and ActiveRecord, lazy loading refers to the practice of deferring the loading of associated records until they are actually accessed or needed. 
Unlike eager loading, where associated records are fetched in advance along with the main record, lazy loading loads associated records only when they are explicitly requested. 
This helps to minimize unnecessary database queries and optimize performance.

Here is a simple example to illustrate lazy loading:

Consider the same Post and Comment models as before, where Post has many Comments.


Example Models:

class Post < ApplicationRecord
  has_many :comments
end

class Comment < ApplicationRecord
  belongs_to :post
end



Lazy Loading Example:


@post = Post.first                        # Fetch a single post


@comments = @post.comments                # Access associated comments

In this example, when we fetch the @post object using Post.first, ActiveRecord executes a SQL query to retrieve the first post from the database.
However, the associated comments are not fetched immediately. 
Instead, when we later access the @post.comments association, ActiveRecord will execute another SQL query to fetch the comments related to that specific post. 
This behavior is known as lazy loading because the associated records are loaded only when they are needed, not upfront.



the main difference between eargerloading preloading and joins is that

when we do

articles = Article.includes(:comments)        # eargerloading
articles.first.comments.loaded?               # true

because in eager loading and preloading, associated records are fetched and saved into memory and that is why we get true on doing the loaded? thing(articles.first.comments.loaded?


while if we use joins

articles = Article.joins(:comments)
articles.first.comments.loaded?               # false

because although joins fetches the associated records from database tables but it does not save it into memory hence we get false.