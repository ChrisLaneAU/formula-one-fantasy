$(document).ready(() => {
  $(".team-select-container-label").on("click", e => {
    $(e.target).toggleClass("label-active");
  });
  let seconds = 5;
  const timer = setInterval(() => {
    $(".timer").text(` Start: ${seconds}`);
    seconds--;
    if (seconds === -1) {
      clearInterval(timer);
      $(".timer").text("GO!");
    }
  }, 1000);
});
