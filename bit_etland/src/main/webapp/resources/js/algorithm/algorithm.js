var alg = alg||{};
alg=(()=>{
	let init = x=>{
		alg.$.init(x);
	};
	let onCreate=()=>{
		setContentView();
	};
	let setContentView=()=>{
		$.when(
				$.getScript($.js()+'/component/compo.js'),
				$.getScript($.js()+'/algorithm/sequence.js')
			  ).done(
					()=>{			
						sequence();
					}					
			  );
	};

	
	return {init : init,
		onCreate : onCreate};
	})();

alg.$ ={
		init :(x)=>{
			$.getScript(x+'/resources/js/router.js',()=>{
			$.extend(new Session(x));
			alg.onCreate();
		})
	}
};