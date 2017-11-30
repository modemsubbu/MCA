 function firstfocus()
  {
  var name = document.f.name.focus();
  return true;
  }
function call(){

var name= document.f.name;
  var letters = /^[a-zA-Z]+$/;
  if(name.value.match(letters))
  {
  document.f.pwd.focus();
  return true;
  }
  else
  {
  alert('Enter your name');
  name.focus();
  return false;
}

}
