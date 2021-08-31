const sliderValue = document.getElementById("slider-value");

function hideValue() {
  sliderValue.style.opacity = "0";
  sliderValue.style.transition = "opacity 0.4s";
}

function initSlider() {
  const range = document.getElementById("products_filter_average_rating");
  range.addEventListener('click', (event) => {
    range.addEventListener('mousemove', (event) => {
      sliderValue.innerHTML = range.value;
      const sliderDiv = document.querySelector(".filter-rating");
      sliderValue.style.marginLeft = `${range.value * (sliderDiv.clientWidth - 22) / 100}px`;
      sliderValue.style.opacity = "1";
    });
  });

  range.addEventListener('keydown', (event) => {
    document.getElementById("slider-value").innerHTML = "<span>" + range.value + "</span>"
  });

  range.addEventListener('touchend', (event) => {
    document.getElementById("slider-value").innerHTML = "<span>" + range.value + "</span>"
  });

  range.addEventListener('mouseup', (event) => {
    hideValue()
  });
}


export { initSlider };
