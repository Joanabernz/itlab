function validateForm(){
    let user = document.getElementById("username").value;
    let pass = document.getElementById("password").value;
    if (user === " " || pass === " "){
        alert("Both frields are required"); 
        return false;
    }
    return true;
}