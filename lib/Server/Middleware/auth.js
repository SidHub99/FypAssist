const jwt= require("jsonwebtoken");
const auth=async (req,res,next)=>{
try{
const token =req.header('auth-token');
if(!token) return res.status(401).json({msg:"Access denied"});
    const verified=jwt.verify(token,'passwordKey');
    if(!verified) return res.status(401).json({msg:'token verification failed,autherization denied '});
    req.user=verified.id;
    req.token=token;
    next();

}
catch(err)
{
res.status(500).json({error:err.message});
}
};
