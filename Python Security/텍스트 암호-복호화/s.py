h= open('plain.txt','rt')
content=h.read()
h.close()

h= open('result.txt','wt+')
h.write(content)
h.close()
