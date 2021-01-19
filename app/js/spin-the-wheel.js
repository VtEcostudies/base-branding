/*
func_proc = function() {
	setTimeout(function() {
	    $("#animation").attr("src", "https://vtatlasoflife.org/basic-brand-2020/images/spinthewheel_test1.gif");
	},2500);
	var rnd = Math.floor((Math.random() * 5000000) + 1000000);
	var URL="https://biocache-ws.biodiversityatlas.at/occurrences/taxon/" + rnd;
	for(var it_0 = 0; it_0 <= 600; it_0++) {
	    if(func_rnd(URL, rnd) === 1) {
	        break;
	    } else {
	        rnd = Math.floor((Math.random() * 5000000) + 1000000);
	        URL = "https://biocache-ws.vtatlasoflife.org/occurrences/taxon/" + rnd;
	    }
	}
    }
func_rnd = function(URL, rnd) {
	$.ajax({
	    url: URL,
	    type: 'GET',
	    success: function (resp) {
	       if (resp["totalRecords"] > 0) {
	            location.href = "https://bie.vtatlasoflife.org/species/" + rnd;
	            return 1;
	        } else {
	            return 0;
	        }
	    },
	    error: function(e) {
	        //alert('Error: '+e);
	    }
	});
}
*/
