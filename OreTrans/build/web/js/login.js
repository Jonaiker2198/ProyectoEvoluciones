
/*VALIDAR INGRESO*/
const correo = document.getElementById("correo")
const password = document.getElementById("password")
const form = document.getElementById("ingresar")
const parrafo = document.getElementById("warning")

form.addEventListener("submit", e=>{
    e.preventDefault()
    let warning = ""
    let entrar = false
    if(correo.value.length<=0){
        warning += 'Debe ingresar correo <br>'
        entrar = true
    }
    if(password.value.length<=0){
        warning += 'Debe ingresar password <br>'
        entrar = true
    }
    
    if(entrar){
        parrafo.innerHTML = warning
    }
})