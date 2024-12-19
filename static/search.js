let search = document.getElementById('wiki-search')
let articles = document.querySelectorAll(".article-item")
let bigList = document.querySelector('ul')
// console.log(articles)

search.addEventListener('input', function() {
  bigList.innerHTML = ''
  for (var article of articles) {
    if (article.id.toLowerCase().includes(search.value.toLowerCase())) {
      bigList.appendChild(article)
    }
  }
  // console.log(filteredArticles)
})
