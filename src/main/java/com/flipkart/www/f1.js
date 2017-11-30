function firstfocus()
  {
  var id = document.form.id.focus();
  return true;
  }
function call()
 {
	 var scname=document.form.id;
	 var letters = /^[A-Za-z]+$/;
	 if(scname.value.match(letters))
	 {
		 if(scname.value.length <5 || scname.value.length >20)
		 {
			 alert('The User name length between 5 to 20 characters');
			 scname.focus();
			 return false;
		 }
		 document.form.pwd.focus();
		 return true;
	 }
	 else
	 {
		 alert('User name shoul not empty / must have alphabet characters only');
	     scname.focus();
	     return false;
	 }
 }
function call1()
 {
	 var upass=document.form.pwd;
	 var cpass=document.form.pwd1;
	 var letters = /^[A-Za-z0-9]+$/;
	 if(upass.value.match(letters))
	 {
		 if(upass.value.length <6 || upass.value.length >12)
		 {
			 alert('Password length between 6 to 12 characters');
			 upass.focus();
			 return false;
		 }
		 return true;
	 }
	 else
	 {
		 alert('Password must have alpha numeric characters only');
	     upass.focus();
	     return false;
	 }
 }
function call2()
 {
	 
	 var upass=document.form.pwd;
	 var cpass=document.form.pwd1;
	 if(upass.value!=cpass.value)
	 {
		 alert('password and confirm password should be match');
		 cpass.focus();
		 return false;
	 }
	 else
	 {
		 return true;
	 }
 }
function call3()
 {
	 var scname=document.form.t5;
	 var letters = /^[0-9]+$/;
	 if(scname.value.match(letters))
	 {
		 if(scname.value.length !=10)
		 {
			 alert('The MobileNumber length must be 10 ');
			 scname.focus();
			 return false;
		 }
		 document.form.t7.focus();
		 return true;
	 }
	 else
	 {
		 alert('MobileNumber must have numeric characters only');
	     scname.focus();
	     return false;
	 }
 }
 function call4()
  {
  		var uemail = document.form.t6;
  		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  		if(uemail.value.match(mailformat))
  		{
		return true;
	}else
		{
  			alert("The Email should not empty / You have entered an invalid email address!");
			uemail.focus();
  			return false;
  		}
  			
  }
 