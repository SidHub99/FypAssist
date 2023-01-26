//import from packages
const express=require('express');
const mongoose=require('mongoose');
//const DB="mongodb+srv://fypassist:fypassist@cluster0.ui8qqh0.mongodb.net/?retryWrites=true&w=majority";
const DB="mongodb+srv://fyp123:admin@cluster0.99tb5s0.mongodb.net/?retryWrites=true&w=majority";
//import from other files
const authRouter=require("./routes/auth.js");
//init
const PORT=3000;
const app=express();

//middleware
app.use(express.json());
app.use(authRouter);


//Connectipons
mongoose.connect(DB).then(()=>{
console.log("Connection Successfully");

})


app.listen(PORT, ()=>{
console.log("connected at port"+PORT);
}


)