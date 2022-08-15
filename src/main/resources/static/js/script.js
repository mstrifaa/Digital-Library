const password = document.getElementById("signUpPassword");
const confirmPassword = document.getElementById("confirmPassword");

const signUpForm = document.getElementById("signUp");

const submitSignUp = document.getElementById("signUpBtn");

const institution = document.getElementById("institution");


signUpForm.addEventListener("submit", (e)=>{

    if(password.value!==confirmPassword.value){
        e.preventDefault();
        document.getElementsByClassName("error-msg")[0].style.visibility = "visible";
    }
    else{
        document.getElementsByClassName("error-msg")[0].style.visibility = "hidden";
    }

    if(institution.value === ""){
        institution.value = "null";
    }

    console.log(institution.value)
})




