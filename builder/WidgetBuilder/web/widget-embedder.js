// Widget Embedder
// Appends widgets into the dom

(function() {
	var portalElement = $('[data-portal="project"]');
	var project = portalElement.attr('data-project');
	portalElement.append("<h1>Hello</h1>"); 
	/*$.get('my.fake.server', function(portalData){
		portalElement.append(portalData);	
	});*/
})();