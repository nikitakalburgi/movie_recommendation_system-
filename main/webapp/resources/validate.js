function validateEmail(str) { //0 
	let index = str.indexOf("@"); //index=0 , -1
	if (index <= 0) {
		document.getElementById("s").innerHTML = "invalid email address";
	}
	else {
		let lastIndex = str.lastIndexOf("@");
		let diff = lastIndex - index;
		if (diff > 0) {
			document.getElementById("s").innerHTML = "@ should not repeat";
		}
		else {
			let afterAt = str.slice((index + 1));
			let dotIndex = afterAt.lastIndexOf(".");
			if (!(dotIndex == (afterAt.length - 4) || dotIndex == (afterAt.length - 3))) {
				document.getElementById("s").innerHTML = "invalid email address";
				document.getElementById("s").style.color="pink";
			}
			else {
				document.getElementById("s").innerHTML = "";
			}
		}
	}
}


 function validateNumber(str)
   { let len=str.length;
     let flag=false;
     for(var i=0;i<len;i++)
    { 
       let ascii=str.charCodeAt(i);
        if(!((ascii>=48 && ascii<=57)&&str.length==10)){
              flag=true;
             break;
        }
    }
     if(flag){
       document.getElementById("s").innerHTML="invalid Contact Number";
       document.getElementById("s").style.color="red";
     }
     else{
       document.getElementById("s").innerHTML="";
       }
   }
   
   
   function validateMovieName(str)
   {
	const nameInput = document.getElementById('movieName');
        const messageElement = document.getElementById('s');
        
        // Regular expression to check if the string is entirely digits
        const allDigits = /^\d+$/;

        // Check if the value contains spaces
        if (value.includes(" ")) {
            messageElement.style.color = "red";
            messageElement.textContent = "Movie name should not contain spaces.";
            nameInput.style.borderColor = "red";
        }
        // Check if the value is all digits
        else if (allDigits.test(value)) {
            messageElement.style.color = "red";
            messageElement.textContent = "Movie name should not contain only digits.";
            nameInput.style.borderColor = "red";
        }
        // If both conditions are satisfied
        else {
            messageElement.style.color = "green";
            messageElement.textContent = "Valid movie name.";
            nameInput.style.borderColor = "green";
        }
    
   }



























