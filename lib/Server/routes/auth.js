const express=require("express");
const authRouter=express.Router();
const User=require("../Models/user");
const jwt = require("jsonwebtoken");

authRouter.post("/api/signup",async(req,res)=>{
try{
const {name,email,password,section}=req.body;

     const existingUser=await User.findOne({email});
      if(existingUser){
        return res.status(400).json({msg:'User with same email already exists'});
      }

      let user=new User({
      email,
      password,
      name,
      section
      });

      user=await user.save();
      res.json(user);
}catch(e){
res.status(500).json({error:e.message});
}

});

authRouter.post("/api/signin", async (req, res) => {
  try {
    const { email, password } = req.body;

    const user = await User.findOne({ email });
    if (!user) {
      return res
        .status(400)
        .json({ msg: "User with this email does not exist!" });
    }

    const isMatch = await User.findOne({email,password});
    if (!isMatch) {
      return res.status(400).json({ msg: "Incorrect password." });
    }
    const token = jwt.sign({ id: user._id }, "passwordKey");
    res.json({ token, ...user._doc });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }

});

authRouter.post("/TokenIsValid",async(req,res)=>{
    try{
    const token=req.header('auth-token');
    if(!token){ return res.json(flase);

    }
    const verified=jwt.verify(token,'passwordKey');
    if(!verified) return res.json(flase);

    const user= await User.findById(verified.id);
    if(!user) return res.json(flase);

    res.json(true);
    }catch(e){
    res.status(500).json({error:e.message});
    }

});
//authRouter.get("/",auth,async(req,res))

module.exports=authRouter;