function goTo(url) {
  console.log("going to " + url);
  $("<a>").attr("href", url).attr("target", "_blank")[0].click();
}
