-- 3. Create a collection or a table called “movies”.
    db.createCollection(movies, { movies_title: string,
                                  movie_minutes: number,
                                  movie_author: string,
                                  movie_year: number})

-- 4. Add 10 movies into the “movies” collection or table.
    db.movies.insertMany({
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    },
    {
        movies_title: string,
        movie_minutes: number,
        movie_author: string,
        movie_year: number
    })

-- 5. Retrieve data from the collection or a table about a movie with a title of your choosing.
    db.movies.find( { "movie_title": "your movie title" } )

-- 6. Alter the movie that you chose in step 5 and change title to “Harry Potter and the Goblet of Fire”, author to “J.K Rowling”, minutes to 125 and year to 2005.
    db.movies.update(
    {"movie_title" : "your movie title"},
    {$set: { "movie_title" : "Harry Potter and the Goblet of fire",
             "movie_author": "J.K Rowling",
             "movie_minnutes": 125}});

-- 7. Delete a movie that you like the least from this movie list.
    db.movies.deleteOne( { "movie_title": "your movie title" })

-- 8. Add a new column to this document or table and call it “movie_price”.
    db.movies.updateMany({}, {$set:{"movie_price": number}})

-- 9. Add prices to all movies.
    -- You can repeat this 10 times or use updateMany method.

    db.movies.update({"movie_title": "your movie title"},
                     {$set:{"movie_price": 10}})

-- 10. Retrieve data about movies that cost less than $5
    -- $lt - less than
        db.movies.find({movie_price: {$lt:5}})

-- 11. Delete the “movies” document or table and then delete the database itself.
    -- Delete collection
        db.movies.drop()

    -- Delete Database
        db.dropDatabase()

