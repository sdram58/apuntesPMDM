var posicion = 300;
window.addEventListener("load", start);
/*
function start(){
    navigator.clipboard.writeText("<empty clipboard>").then(function() {
        /* clipboard successfully set 
        //alert("ok");
      }, function() {
        /* clipboard write failed 
        alert("ko");
      });
}
*/

function start(){

  const primerEnlace = document.querySelectorAll('a[name]')[0];

// Obtener la posición del elemento en el documento
  posicion = primerEnlace.getBoundingClientRect().bottom;

  window.addEventListener("scroll", mostrarElemento);
}

// Función para mostrar u ocultar el elemento al hacer scroll
function mostrarElemento() {
  const elemento = document.getElementById("menu-lateral");
  const posicionScroll = window.scrollY;
  //const umbral = 200; // Cambia este valor según tus preferencias
  
  if (posicionScroll > posicion) {
    elemento.classList.remove("oculto");
  } else {
    elemento.classList.add("oculto");
  }
}

// Agregar un evento de desplazamiento (scroll) al documento
