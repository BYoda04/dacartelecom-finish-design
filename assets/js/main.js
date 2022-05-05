
//select de los roles
const roles = document.getElementById('roles')

//select inputs 
const user = document.getElementById('user')
const password = document.getElementById('password')

//select button
const login = document.getElementById('login')

login.addEventListener("click", e => {
    console.log(e);

    console.log(roles.selectedOptions[0].text);
    console.log(user.value);
    console.log(password.value);
})
