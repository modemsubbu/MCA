function firstfocus()
  {
  var accno = document.f1.accno.focus();
  return true;
  }
function call()
 {
	 var scname=document.f1.accno;
	 var letters = /^[0-9]+$/;
	 if(scname.value.match(letters))
	 {
		 if(scname.value.length!=8)
		 {
			 alert('The account no  must contain 8 digits');
			 scname.focus();
			 return false;
		 }
		 document.form.pwd.focus();
		 return true;
	 }
	 else
	 {
		 alert('Account no should not empty / must have numeric values only');
	     scname.focus();
	     return false;
	 }
 }
function call1()
 {
	 var scname=document.f1.name;
	 var letters = /^[A-Za-z]+$/;
	 if(scname.value.match(letters))
	 {
		 if(scname.value.length <5 || scname.value.length >20)
		 {
			 alert('The name length between 5 to 20 characters');
			 scname.focus();
			 return false;
		 }
		 document.f1.cid.focus();
		 return true;
	 }
	 else
	 {
		 alert('The name should not be empty /must have alphabet characters only');
	     scname.focus();
	     return false;
	 }
 }
function call2()
 {
	 var scname=document.f1.cid;
	 var letters = /^[0-9]+$/;
	 if(scname.value.match(letters))
	 {
		 if(scname.value.length !=6)
		 {
			 alert('The CustomerID must be 6 digits');
			 scname.focus();
			 return false;
		 }
		 document.f1.password.focus();
		 return true;
	 }
	 else
	 {
		 alert('The CustomerID should not be empty / must have numeric values only');
	     scname.focus();
	     return false;
	 }
 }
function call3()
 {
	 var upass=document.f1.password;
	 var cpass=document.f1.password1;
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
function call4()
 {
	 
	 var upass=document.f1.password;
	 var cpass=document.f1.password1;
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
function call5()
 {
	 var upass=document.f1.tpassword;
	 var cpass=document.f1.tpassword1;
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
function call6()
 {
	 
	 var upass=document.f1.tpassword;
	 var cpass=document.f1.tpassword1;
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

