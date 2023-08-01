const mongoose = require("mongoose");

const url = "mongodb://127.0.0.1:27017/db_Name";    //"mongodb://localhost:27017" instead of "localhost" use "127.0.0.1"

mongoose.connect(url)
  .then(()=> console.log("Connected to DB"))
  .catch((e)=> console.log("Errrrrrrrrrrrr : ",e))

const structure = new mongoose.Schema({
    // key1 : data_type
    // key2 : data_type
    // keyN : data_type
});

const collection_obj = new mongoose.model("collection_name",structure) // name of collection should be singular and in lowercase letters

const instanceOf_collection_obj = new collection_obj ({
    // key1 : value1
    // key2 : value2
    // keyN : valueN
})

instanceOf_collection_obj.save();
collection_obj.find();

 
// const mongoose = require('mongoose');

// mongoose.connect('mongodb://127.0.0.1:27017/test2')
//   .then(() => console.log('Connected!'))
//   .catch((e) => console.log("Errrr : ",e))


// const s_libray = new mongoose.Schema({
//     s_id : Number,    
//     b_id : Number,
//     b_name : String
// });

// const a_libray = new mongoose.Schema({
//     a_name : String,    
//     b_id : Number,
//     b_name : String
// });
// const Book = new mongoose.model("book",s_libray);  // "book" collection
// const Author = new mongoose.model("author",a_libray); // "author" collection


// const book = new Book ({    // instance of book
//     s_id : 1,
//     b_id : 11,
//     b_name : "mongoose"
// });

// const author = new Author({
//     a_name : "abs",    
//     b_id : 11,
//     b_name : "mongoose"
// })

// book.save();         // Save to db
// author.save();

// Book.find();         // collection 
// Author.find();

// // test2  > db
// // libray > structure
// // book > collection





