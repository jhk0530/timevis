HTMLWidgets.widget({

  name:'timevis',
  type:'output',

  factory : function(el, width, height) {

	// initialize parameters
    var container = document.getElementById(el.id);
	var items = [];
	var options = {};

    var timeline = new vis.Timeline(container, items, options);

    return {
      renderValue: function(x) { 
		timeline.setItems(x.items); 
		timeline.setOptions(x.options);
	  },
      resize : function(width, height) { }// not yet 
    };
  }
});