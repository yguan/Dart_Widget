// Widget Embedder
// Appends widgets into the dom

(function() {
	var portalElement = $('[data-portal="project"]');
	var projectId = portalElement.attr('data-project');
	
	// Test Code
	var server = sinon.fakeServer.create();
	server.respondWith([200, { "Content-Type": "text/html" },
                                 '<h1>My Awesome Project</h1>']);
	server.autoRespond = true;
	// End Test Code
	
	$.get('my.fake.server', function(portalData){
		portalElement.append(portalData);	
	});
})();