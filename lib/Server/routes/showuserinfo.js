const express=require("express");
const authRouter=express.Router();
const User=require("../Models/user");
const jwt = require("jsonwebtoken");


authRouter.get("/api/users", async (req, res) => {
  try {
    const users = await User.find();
    res.json(users);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});