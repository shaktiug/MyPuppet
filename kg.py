from tkinter import *

window=Tk()
window.title('Convertor')
#window.geometry('600x500+500+500')
window.configure(background="yellow")

def kg():
    grams=float(e1_value.get())*1000
    t1.insert(END,grams)
    pounds=float(e1_value.get())*2.20462
    t2.insert(END,pounds)
    ounces=float(e1_value.get())*35.274
    t3.insert(END,ounces)

e2=Label(window,text="Enter Value in Kg",font=('bold',40),bg='Yellow')
e2.grid(row=0,column=0)

b1=Button(window,text="Convert",command=kg)
b1.grid(row=0,column=3)

e1_value=StringVar()
e1=Entry(window,textvariable=e1_value)
e1.grid(row=0,column=1)

e3=Label(window,text="Value in grams", font=('italic',25), bg='Yellow')
e3.grid(row=1,column=0)

t1=Text(window,height=1,width=20)
t1.grid(row=1,column=1)

e4=Label(window,text="Value in pounds",font=('italic',25), bg='Yellow')
e4.grid(row=2,column=0)

t2=Text(window,height=1,width=20)
t2.grid(row=2,column=1)

e5=Label(window,text="Value in ounces",font=('italic',25), bg='Yellow')
e5.grid(row=3,column=0)

t3=Text(window,height=1,width=20)
t3.grid(row=3,column=1)

window.mainloop()
