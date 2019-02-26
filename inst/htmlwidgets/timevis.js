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
      renderValue: function(input) { 
		timeline.setItems(input.items); 
		timeline.setOptions(input.options);
	  },
      resize : function(width, height) { }// not yet 
    };
  }
});