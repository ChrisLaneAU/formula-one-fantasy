$(document).ready(() => {
  $(".team-select-container-label").on("click", e => {
    $(e.target).toggleClass("label-active");
  });
  let seconds = 60;
  const timer = setInterval(() => {
    $(".timer").text(` Start: ${seconds}`);
    seconds--;
    if (seconds === -1) {
      clearInterval(timer);
      $(".timer").text("GO!");
    }
  }, 1000);

  $(".create-fantasy-team-label-check").on("click", e => {
    $(e.target).toggleClass("label-active");
  });

  $(".create-fantasy-team-label-radio").on("click", e => {
    const radioLabels = document.querySelectorAll(
      ".create-fantasy-team-label-radio"
    );
    radioLabels.forEach(label => {
      //label.classList.remove("label-active");
    });
    $(e.target).toggleClass("label-active");
  });
});
