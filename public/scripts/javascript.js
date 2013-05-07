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

function validateEmail() {
   var emailEntered = document.getElementById('email_email').value;
   var emailAddresses = emailEntered.split(',');
   var invalidEmailAddresses =0;
   var emailEntered = document.getElementById('email_email').value;
   var test = emailEntered.replace(/\s+/g,"");
   if( test == null || test.length==0)
   {
      alert('Emails cannot be left blank');
      return false;
   }

  for (var i=0;i<emailAddresses.length;i++)
  {
    var toBeTested = emailAddresses[i].trim();
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(toBeTested))  
    {  
    
    }  
    else
    {
       invalidEmailAddresses = 1;
    }
  }
  
  if(invalidEmailAddresses == 1)
  {
    alert ("invalidEmailAddresses");
    return false;
  }
}

