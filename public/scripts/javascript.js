function leftArrowPressed() {
  document.getElementById('A').click();
}

function rightArrowPressed() {
  document.getElementById('B').click();
}

function sPressed(){
  document.getElementById('Skip').click();
}
document.onkeydown = function(evt) {
    evt = evt || window.event;
    switch (evt.keyCode) {
        case 37:
            leftArrowPressed();
            break;
        case 39:
            rightArrowPressed();
            break;
        case 83:
	    sPressed();
	    break;

    }
};


