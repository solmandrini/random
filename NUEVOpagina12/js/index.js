const burger = document.querySelector('.nav-toggle'),
      menu = document.querySelector('#menu');

burger.addEventListener('click', (e) => {
 
    // Alternamos estilos para el menú y body
 menu.classList.toggle('active');
 document.body.classList.toggle('opacity');
});


// const navToggle = document.querySelector(".nav-toggle");
// const navMenu = document.querySelector(".hamburguesa");

// navToggle.addEventListener("click", () => {
//   hamburguesa.classList.toggle("hamburguesa_visible");

//   if (hamburguesa.classList.contains("hamburguesa_visible")) {
//     navToggle.setAttribute("aria-label", "Cerrar menú");
//   } else {
//     navToggle.setAttribute("aria-label", "Abrir menú");
//   }
// });



// function burger() {
//  var mostrarBurger = document.getElementsByClassName(".hamburguesa");


// mostrarBurger.classList.remove("no-mostrar");
// mostrarBurger.classList.add("mostrar");
//  }



// const navToggle = document.getElementsByClassName(".nav-toggle");
// const hamburguesamostrar = document.getElementsByClassName(".hamburguesa-mostrar");

// navToggle.addEventListener("click", () => {
//     hamburguesamostrar.classList.toggle("hamburguesa-mostrar_visible");

//   if (hamburguesamostrar.classList.contains("hamburguesa-mostrar_visible")) {
//     navToggle.setAttribute("aria-label", "Cerrar menú");
//   } else {
//     navToggle.setAttribute("aria-label", "Abrir menú");
//   }
// });