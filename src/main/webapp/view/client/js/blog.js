
// const readMoreBtn = document.querySelector(".read-more-btn");
// const text = document.querySelector(".text");

// readMoreBtn.addEventListener("click", (e) => {
//   text.classList.toggle("show-more");
//   if (readMoreBtn.innerText === "Đọc thêm") {
//     readMoreBtn.innerText = "Ẩn";
//   } else {
//     readMoreBtn.innerText = "Đọc thêm";
//   }
// });

const parentContainer =  document.querySelector('.read-more-container');

parentContainer.addEventListener('click', event=>{

    const current = event.target;

    const isReadMoreBtn = current.className.includes('read-more-btn');

    if(!isReadMoreBtn) return;

    const currentText = event.target.parentNode.querySelector('.read-more-text');

    currentText.classList.toggle('read-more-text--show');

    current.textContent = current.textContent.includes('Đọc thêm') ? "Ẩn" : "Đọc thêm";

})