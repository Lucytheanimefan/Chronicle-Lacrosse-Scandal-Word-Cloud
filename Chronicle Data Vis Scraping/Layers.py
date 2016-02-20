'''
Created on Feb 19, 2016
Layers for words, categorizing most important, least important, etc.
@author: lucy
'''
layer1dict={}
layer1words=[];
layer1nums=[];
wordFrequency=open('LacrosseWordFrequencyWords.txt')
words=wordFrequency.read()
wordsArr=words.splitlines()

numFrequency=open('LacrosseWordFrequencyNums.txt')
nums=numFrequency.read()
numsArr=nums.splitlines()

commonwords=open('commonwords.txt')
common=commonwords.read()
comm=common.splitlines()
print comm

j=0
for word in wordsArr:
    print j
    for com in comm:
        if word==com:
            layer1words.append(wordsArr[j])
            layer1nums.append(int(numsArr[j]))
            layer1dict[word]=int(numsArr[j])
    j=j+1
    #print j
Layer1Words=open('Layer1words.txt','w')
for word in layer1words:
    Layer1Words.write(word+'\n')
    
Layer1Nums=open('Layer1nums.txt','w')
for num in layer1nums:
    Layer1Nums.write(str(num)+'\n')
