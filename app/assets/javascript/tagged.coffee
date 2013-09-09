tagged = document.getElementById window.tagged
tags = document.getElementById 'tags'
params_parsed = JSON.parse params.split("&quot;").join('"')

if is_ckeditor == 'true'
  tagged.setAttribute 'data-options', "{\"jspath\":\"/assets/ckeditor/ckeditor.js\",\"base_location\":\"/assets/ckeditor/\",\"options\":{\"customConfig\":\"/assets/ckeditor/config.js\"}}"
  tagged.setAttribute 'data-richtext', 'ckeditor'

  setCKEditor = ->
    try
      eval 'editor = CKEDITOR.instances.' + window.tagged
    catch
      setTimeout setCKEditor, 300
  setCKEditor()

for i in [0...params_parsed.length]
  tag = document.createElement 'div'
  tag.setAttribute 'class', 'tag'
  tag.innerHTML = params_parsed[i]

  tags.appendChild tag

  tag.addEventListener 'click', ->
    if is_ckeditor == 'true'
      editor.insertText '[[' + this.innerHTML + ']]'
    else
      cur = tagged.selectionStart

      val = tagged.value
      val = val.slice(0, cur) + '[[' + this.innerHTML + ']]' + val.slice(cur, val.length)
      tagged.value = val
      tagged.focus()

      tagged.selectionStart = tagged.selectionEnd = cur + this.innerHTML.length + 4
