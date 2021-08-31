const sliderValue = document.getElementById("slider-value");

function initSlider() {
  const range = document.getElementById("products_filter_average_rating");
  range.addEventListener('mousemove', (event) => {
    sliderValue.innerHTML = range.value;
    const sliderDiv = document.querySelector(".filter-rating");
    sliderValue.style.marginLeft = `${range.value * (sliderDiv.clientWidth - 22) / 100}px`;
    sliderValue.style.visibility = "visible";
  });

  range.addEventListener('keydown', (event) => {
    document.getElementById("slider-value").innerHTML = range.value
  });

  range.addEventListener('touchend', (event) => {
    document.getElementById("slider-value").innerHTML = range.value
    sliderValue.style.visibility = "hidden"
  });
}

export { initSlider };
