var imagen = ['imagenes/nuevo1.jpg', 'imagenes/nuevo2.jpg', 'imagenes/nuevo3.jpg', 'imagenes/nuevo4.jpg'],
        cont = 0;

function carrousel(contenedor){
    contenedor.addEventListener('click', e => {
       let atras = contenedor.querySelector('.atras'),
       adelante = contenedor.querySelector('.adelante'),
       img = contenedor.querySelector('img'),
       tgt = e.target;
       
       if(tgt == atras){
           if(cont > 0){
               img.src = imagen[cont - 1];
               cont--;
           }else{
               img.src = imagen[imagen.length - 1];
               cont = imagen.length - 1;
           }
       }else if(tgt == adelante){
           if(cont < imagen.length - 1){
               img.src = imagen[cont + 1];
               cont++;
           }else{
               img.src = imagen[0];
               cont = 0;
           }
       }
       
    });
}

document.addEventListener("DOMContentLoaded", () => {
    let contenedor = document.querySelector('.contenedor');
    carrousel(contenedor);
});


/*VALIDAR INGRESO*/
const correo = document.getElementById("correo")
const password = document.getElementById("password")
const form = document.getElementById("ingresar")
const parrafo = document.getElementById("warnings")

form.addEventListener("submit", e=>{
    e.preventDefault()
    let warnings = ""
    let entrar = false
    if(correo.value.length<1){
        warnings += 'Debe ingresar correo <br>'
        entrar = true
    }
    if(password.value.length<1){
        warnings += 'Debe ingresar password <br>'
        entrar = true
    }
    
    if(entrar){
        parrafo.innerHTML = warnings
    }
})