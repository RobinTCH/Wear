
function hideValue(bubble) {
  bubble.style.opacity = "0";
  bubble.style.transition = "opacity 0.4s";
}

function displayValue(slider) {
  slider.style.opacity = "1";
}

function initSlider() {
  const range = document.getElementById("products_filter_average_rating");
  if (range) {
  //  range.addEventListener('mouseover', (event) => {
  //    console.log('mouseover')
  //    bubble.innerHTML = "<div class='value'>" + range.value + "</div>";
  //    const sliderDiv = document.querySelector(".filter-rating");
  //    bubble.style.marginLeft = `${range.value * (sliderDiv.clientWidth - 22) / 100}px`;
  //    displayValue()
  //  });

  //  range.addEventListener('touchmove', (event) => {
  //    console.log('touchmove')
  //    let bubble = document.getElementById("slider-value");
  //    bubble.innerHTML = "<div class='value'>" + range.value + "</div>";
  //    const sliderDiv = document.querySelector(".filter-rating");
  //    bubble.style.marginLeft = `${range.value * (sliderDiv.clientWidth - 22) / 100}px`;
  //    displayValue()
  //  });

    range.addEventListener('touchmove', (event) => {
      let bubble = document.getElementById("slider-value");
      const inputValue = document.getElementById("products_filter_average_rating").value;
      const sliderDiv = document.querySelector(".filter-rating");
      bubble.style.marginLeft = `${range.value * (sliderDiv.clientWidth - 22) / 100}px`;
      bubble.innerHTML = "<div class='value'>" + range.value + "</div>";
      displayValue(bubble)
    });

    range.addEventListener('touchend', (event) => {
      let bubble = document.getElementById("slider-value");
      const inputValue = document.getElementById("products_filter_average_rating").value;
      document.getElementById("slider-value").innerHTML = "<div class='value'>" + range.value + "</div>"
      const sliderDiv = document.querySelector(".filter-rating");
      bubble.style.marginLeft = `${range.value * (sliderDiv.clientWidth - 22) / 100}px`;
      hideValue(bubble)
    });
  }
}


export { initSlider };
