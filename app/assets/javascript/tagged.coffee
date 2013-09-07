console.log '123123133'

tags = document.getElementById 'tags'

# if is_ckeditor
tagged.setAttribute 'data-options', "{\"jspath\":\"/assets/ckeditor/ckeditor.js\",\"base_location\":\"/assets/ckeditor/\",\"options\":{\"customConfig\":\"/assets/ckeditor/config.js\"}}"
tagged.setAttribute 'data-richtext', 'ckeditor'

setCKEditor = ->
  try
    eval 'editor = CKEDITOR.instances.' + window.tagged
  catch
    setTimeout setCKEditor, 300
setCKEditor()

for i in [1..50]
  tag = document.createElement 'div'
  tag.setAttribute 'class', 'tag'
  tag.innerHTML = 'test' + i

  tags.appendChild tag

  tag.addEventListener 'click', ->
    if is_ckeditor
      editor.insertText '[[' + this.innerHTML + ']]'
    else
      cur = tagged.selectionStart

      val = tagged.value
      val = val.slice(0, cur) + '[[' + this.innerHTML + ']]' + val.slice(cur, val.length)
      tagged.value = val
      tagged.focus()

      tagged.selectionStart = tagged.selectionEnd = cur + this.innerHTML.length + 4


tag = document.createElement 'div'
tag.setAttribute 'class', 'tag'
tag.innerHTML = 'test' + i

tags.appendChild tag
