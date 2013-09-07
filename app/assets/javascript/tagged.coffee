tagged = document.getElementById window.tagged
tags = document.getElementById 'tags'

for i in [1..50]
  tag = document.createElement 'div'
  tag.setAttribute 'class', 'tag'
  tag.innerHTML = 'test' + i

  tags.appendChild tag

  tag.addEventListener 'click', ->
    cur = tagged.selectionStart

    val = tagged.value
    val = val.slice(0, cur) + '[[' + this.innerHTML + ']]' + val.slice(cur, val.length)
    tagged.value = val
    tagged.focus()

    tagged.selectionStart = tagged.selectionEnd = cur + this.innerHTML.length + 4
