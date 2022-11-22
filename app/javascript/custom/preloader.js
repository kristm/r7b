class Preloader {
  constructor() {
    this.element = document.querySelector("#loader");
    this.hide();
  }

  hide() {
    setTimeout(() => {
      this.element.style.display = 'none'
    }, 1000)
  }
}

export default Preloader
