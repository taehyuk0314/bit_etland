var app = app||{};
app.path=(()=>{
     var init = x => {
           app.session.init(x);
           onCreate();
           alert(app.$.ctx());
     };
     var onCreate = () =>{
           setContentView();
     };
     var setContentView =()=>{
//    	 $('#header').empty().text('헤더');
//    	 $('#content').empty().text('콘텐트');
//    	 $('#footer').empty().text('푸터');
//    	 $('#header').html('<h1>헤더<h1>');
//    	 $('#content').html('<h1>콘텐트<h1>');
//    	 $('#footer').html('<h1>푸터<h1>');
   
     };
     return{init : init};
})();
app.session=(()=>{
     var init = x =>{
           onCreate(x);
     };
     var onCreate = x =>{
           sessionStorage.setItem('ctx',x);
     };
     return{init : init};
})();
app.$=(()=>{
     return{    
           ctx : ()=>{return sessionStorage.getItem('ctx')}
     };
})();


