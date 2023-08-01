const { log } = require("console");
const express = require("express");
const mongoose = require("mongoose");
const app = express();
const port = 3000;

const url = "mongodb://127.0.0.1:27017/COLLEGE";

mongoose.connect(url).then(()=>console.log("Successfully Connected to Database")).catch((err)=>console.log("Something is wrong !"))

const stud_schema = new mongoose.Schema({
    stud_id : Number,
    stud_sec : String,
    stud_name : String,
    stud_place : String
});

const prof_schema = new mongoose.Schema({
    prof_id : Number,
    prof_sec : String,
    prof_sub : String
});

const Student = new mongoose.model("student",stud_schema);
const Professor = new mongoose.model("professor",prof_schema);

const stud_obj1 = new Student({
    stud_id : 3,
    stud_sec : "A",
    stud_name : "Pranav",
    stud_place : "Dharwad"
});

const prof_obj1 = new Professor({
    prof_id : 3,
    prof_sec : "A",
    prof_sub : "Accounts"  
});


//Use this statements carefully whenever u run the code with same static data 
//that will store the same data 
// stud_obj1.save();
// prof_obj1.save();

/*
//Its better to use this rather than creating obj of that schema and assigning values to it.
Student.insertMany([
    {
        stud_id : 6,    stud_sec : "B",     stud_name : "Gourav",   stud_place : "Dharwad" 
    },
    {
        stud_id : 7,    stud_sec : "B",     stud_name : "Rahul",   stud_place : "Dharwad" 
    }
]);

Professor.insertMany([
    {
        prof_id : 6,    prof_sec : "A",     prof_sub : "Biology"  
    },
    {
        prof_id : 7,    prof_sec : "A",     prof_sub : "Social"  
    }
])

//It's used to update specific Student and Professor schema
Student.updateMany(
    {stud_id:{$gte:4}},
    {stud_sec : "B"}
).then(()=>console.log("Updated Students !"))

Professor.updateMany(
    {prof_id:{$lt:3}},
    {prof_sec : "B"}
).then(()=>console.log("Updated Professors !"))

*/

//It's used to delete specific Student and Professor scheme
Student.deleteMany({stud_id:{$gte:6}}).then(()=>console.log("Deleted Students !"))
Professor.deleteMany({prof_id:{$gte:6}}).then(()=>console.log("Deleted Professors !"))

//It's as same as select * from tab_name;
Student.find()
.then((val)=>{
    val.forEach(function(element){
        // if(element.stud_name === "Ganesh")   //Choosing a specific field
            console.log(element);
    });
});

Professor.find()
.then((val)=>{
    val.forEach(function(element){
    // if(element.prof_sub === "Mathematics")   //Choosing a specific field
        console.log(element);
    });
});

