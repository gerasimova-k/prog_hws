mylst = ['this', 'is', 'my', 'string']

def capitalize_list(mylst):
    A=[]
    for s in mylst:
        A.append(s.capitalize())
    print(A)


capitalize_list(mylst)