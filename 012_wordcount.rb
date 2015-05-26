require('clipboard')

puts Clipboard.paste.split(/[\s;,\.\?!]/).length
