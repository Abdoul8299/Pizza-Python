




from tkinter import *


pizza = Tk()
pizza.geometry("600x500")
pizza.title("my pizza ordering app")



name_label = Label (pizza, text= "what is your name? ")
name_label.grid(row=0, column=0)

name_entry = Entry(pizza, width=30)
name_entry.grid(row=0, column=1)

address_label = Label(pizza, text="what is your address? ")
address_label.grid(row=1, column=0)

address_entry = Entry(pizza, width=30)
address_entry.grid(row=1, column=1)

phone_label = Label(pizza, text="what is your phone number? ")
phone_label.grid(row=2, column=0)


phone_entry = Entry(pizza, width=30)
phone_entry.grid(row=2, column=1)


#Create a list
my_pizza_list = ["Pepperoni", "Cheese", "Mushroom", "Steak", "Garlic"]


pizza_list = Listbox(pizza, selectmode=MULTIPLE, bg="black", fg="white" )
pizza_list.grid(row=4, column=1)
for item in my_pizza_list:
    pizza_list.insert(0, item)


def add_pizza():
        result = ""
        for item in pizza_list.curselection():
            result = result + str(pizza_list.get(item)) + "\n"

        add_lbl.config(text = "your pizza selection: " "\n" + result)



add_lbl = Label(pizza, text="")
add_lbl.grid(row=5,column=1)


add_button = Button(pizza, text="add  pizza", command=add_pizza)
add_button.grid(row=5, column=0)






def check():
    text1= name_entry.get()
    new_lbl = Label(pizza, text="Name: " + text1)
    new_lbl.grid(row=5, column=2)

    text2 = address_entry.get()
    new_lbl2 = Label(pizza, text="Address " + text2)
    new_lbl2.grid(row=6, column=2)

    text3 = Phone_entry.get()
    new_lbl3 = Label(pizza, text="Phone number: " + text3)
    new_lbl3.grid(row=7, column=2)

check_button = Button(pizza, text="Checkout", command=check)
check_button.grid(row=6,column=0)





def deleteme():
    pizza_list.delete(0,5)

del_button = Button(pizza, text="delete pizza", command=deleteme)
del_button.grid(row=7, column=0)


drinks = StringVar()
drinks.set("choose a drink")
drink= OptionMenu(pizza, drinks, "Cola", "Fanta", "Sprite", "Mango")
drink.grid(row=8, column=0)



#pizza pic line


def exitme():
    answer = messagebox.askyesno("hi", "are you sure you want to exit? ")
    if answer == 1:
        pizza.destroy()
    else:
        return



exit_button = Button(pizza, text="exit me", command=exitme)
exit_button.grid(row=4, column=7)



pizza.mainloop()