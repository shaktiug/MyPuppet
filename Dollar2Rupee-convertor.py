from tkinter import *

window=Tk()
window.title('Convertor')

def dollar_to_rs():
    rs=float(e1_value.get())*65.31
    t1.insert(END,rs)

b1=Button(window,text="convert",command=dollar_to_rs)
b1.grid(row=0,column=7)

e2=Label(window,text="Enter Value in Dollar")
e2.grid(row=0,column=0)

e3=Label(window,text="Value in Rupees is")
e3.grid(row=0,column=2)

e1_value=StringVar()
e1=Entry(window,textvariable=e1_value)
e1.grid(row=0,column=1)

t1=Text(window,height=1,width=20)
t1.grid(row=0,column=3)

window.mainloop()
