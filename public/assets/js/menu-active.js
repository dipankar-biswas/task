let currentLocation = window.location.pathname;
const hrefs = document.querySelectorAll('body nav .navbar-nav li a.nav-link');
// console.log(currentLocation);
// console.log(hrefs);
for(let i = 0; i < hrefs.length; i++){
    if(currentLocation === hrefs[i].pathname){
    hrefs[i].closest("li.nav-item").classList.add("active");
    hrefs[i].classList.add("active");
    if(hrefs[i].closest('li.nav-item ul')){
        hrefs[i].closest('li.nav-item ul').classList.add('in');
    }
    }
}