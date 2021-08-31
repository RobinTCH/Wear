const sliderValue = document.getElementById("slider-value");

function hideValue() {
  sliderValue.style.opacity = "0";
  sliderValue.style.transition = "opacity 0.4s";
}

function displayValue() {
  sliderValue.style.opacity = "1";
}

function initSlider() {
  const range = document.getElementById("products_filter_average_rating");
  range.addEventListener('click', (event) => {
    sliderValue.innerHTML = "<div class='value'>" + range.value + "</div>";
    const sliderDiv = document.querySelector(".filter-rating");
    sliderValue.style.marginLeft = `${range.value * (sliderDiv.clientWidth - 22) / 100}px`;
    displayValue()
  });
  range.addEventListener('mousemove', (event) => {
    sliderValue.innerHTML = "<div class='value'>" + range.value + "</div>";
    const sliderDiv = document.querySelector(".filter-rating");
    sliderValue.style.marginLeft = `${range.value * (sliderDiv.clientWidth - 22) / 100}px`;
    displayValue()
  });


  range.addEventListener('keydown', (event) => {
    document.getElementById("slider-value").innerHTML = "<div class='value'>" + range.value + "</div>"
  });

  range.addEventListener('touchend', (event) => {
    document.getElementById("slider-value").innerHTML = "<div class='value'>" + range.value + "</div>"
  });

  range.addEventListener('mouseout', (event) => {
    hideValue()
  });
}


export { initSlider };
