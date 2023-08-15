def comp(seq):
    comp_dict={'A':'T','T':'A','C':'G','G':'C'}
    seq_comp = ""
    for char in seq:
        if char in ['A','T','G','C']: #a,t,g,c 안에 있으면
            seq_comp = seq_comp + comp_dict[char] #seq_comp에 추가
        else:
            seq_comp = seq_comp + '?' # a,t,g,c 안에 없으면 seq_comp에 ? 추가 -> a,t,g,c 이외의 값 입력 시 ?가 붙게끔
    return seq_comp

def rev(seq):
    seq_rev="".join(reversed(seq))
    return seq_rev

def rev_comp(seq):
    tmp = comp(seq)
    return rev(tmp)


src=input("Dna sequence : ")
while True:
    cnvt=input("1(comp),2(rev),3(rev_comp),Q(종료): ") # input = 사용자가 입력한 것을 "문자열"타입으로 반환
    if (cnvt=="Q"):
        break
    elif (int(cnvt) >= 1 and int(cnvt) <= 3): # "문자열"로 받은 cnvt를 int로 변형 후 숫자 범위 설정
            int_cnvt = int(cnvt) # 기존의 문자형 cnvt 대신 int 형으로 새롭게 변형했음 -> 새로운 변수 만들어 값 대입해야함.
            if (int_cnvt == 1):
                    rst = comp(src)
            elif (int_cnvt == 2):
                    rst = rev(src)
            else:
                    rst = rev_comp(src)
            print(src,"->",rst) # print가 if와 elif에게 종속되지 않고 레벨을 맞춤으로써 각각 if,elif 구문 속에 일일이 print 적지 않고 1개 프린트 문으로 해결. 저 중에 걸리는 조건이 있으면 해당 구문 내용을 프린트!!
    else:
        print("1(comp),2(rev),3(rev_comp)!!")

