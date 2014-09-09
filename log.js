module.exports = {
    log:function(err){
        console.log(new Date());
        console.trace(JSON.stringify(err));
    }
};

