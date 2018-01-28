User.destroy_all

u1 = User.create email: 'sahankmr32@gmail.com' , name: 'sahana' , password: 'saanvi'
u2 = User.create email: 'deepuhassan@gmail.com' , name: 'sandeep' , password: 'saanvi'
u3 = User.create email: 'saanvi@gmail.com' , name: 'saanvi' , password: 'sannvi'
u4 = User.create email: 'sachin@gmail.com' , name: 'sachin' , password: 'saanvi'

puts "Created #{  User.all.length } users."

Customer.destroy_all

c1 = Customer.create first_name: 'Sahana' , last_name: 'Vajrakumar' , address: '22  miller street NorthSydney' , phone_number: 434789345
c2 = Customer.create first_name: 'Sandeep' , last_name: 'Rangegowda' , address: '12  River Road Woolstencraft' , phone_number: 458278456
c3 = Customer.create first_name: 'Saanvi' , last_name: 'Sandeep' , address: '22  miller street NorthSydney' , phone_number: 456983472
c4 = Customer.create first_name: 'Sachin' , last_name: 'Vajrakumar' , address: '22  miller street NorthSydney' , phone_number: 489124673

puts "Created #{  Customer.all.length } customers."

Account.destroy_all

a1 = Account.create balance: 100.11 , account_type: 'check' , accountnumber: 'b1023j34', date_opened: '12/01/2012 09:46:33'
a2 = Account.create balance: 200.22 , account_type: 'savings' , accountnumber: 'h45kn545', date_opened: '05/12/2005 10:46:33'
a3 = Account.create balance: 300.33 , account_type: 'credit' , accountnumber: 'b434k434', date_opened: '02/05/2002 08:46:33'
a4 = Account.create balance: 500.55 , account_type: 'credit' , accountnumber: 'ke32434k', date_opened: '03/01/2000 07:46:33'
a5 = Account.create balance: 600.66 , account_type: 'check' , accountnumber: 'i434j545', date_opened: '01/01/2000 09:46:33'
a6 = Account.create balance: 700.77 , account_type: 'savings' , accountnumber: 'j4554k54' , date_opened: '08/11/2001 06:46:33'

# binding.pry

puts "Created #{  Account.all.length } accounts."

Transaction.destroy_all

t1 = Transaction.create date_opened: '22/02/2007 01:46:33' , description: "Withdraw for shopping" , ammount: 20
t2 = Transaction.create date_opened: '02/02/2008 09:00:33' , description: "Deposite" , ammount: 30
t3 = Transaction.create date_opened: '02/01/2009 11:30:12' , description: "Credit" , ammount: 100
t4 = Transaction.create date_opened: '08/01/2010 02:46:33' , description: "Withdraw" , ammount: 50
t5 = Transaction.create date_opened: '15/01/2018 10:46:33' , description: "savings" , ammount: 25
t6 = Transaction.create date_opened: '18/01/2011 05:46:33' , description: "Paying for bills" , ammount: 33
t7 = Transaction.create date_opened: '22/01/2012 04:46:33' , description: "bills" , ammount: 56
t8 = Transaction.create date_opened: '23/01/2013 03:46:33' , description: "Withdraw for shopping" , ammount: 72
t9 = Transaction.create date_opened: '25/01/2014 02:46:33' , description: "Withdraw for holiday" , ammount: 82

# binding.pry

puts "Created #{  Transaction.all.length } transactions."

u1.accounts << a1
u2.accounts << a2
u3.accounts << a3
u4.accounts << a4
u1.accounts << a5
u2.accounts << a6

u1.customer = c1
u1.save
u2.customer = c2
u2.save
u3.customer = c3
u3.save
u4.customer = c4
u4.save



t1.from_account = a1
t1.to_account = a2
t1.save
t2.from_account = a2
t2.to_account = a4
t2.save
t3.from_account = a1
t3.to_account = a2
t3.save
t4.from_account = a2
t4.to_account = a6
t4.save
t5.from_account = a3
t5.to_account = a5
t5.save
t6.from_account = a2
t6.to_account = a4
t6.save
t7.from_account = a2
t7.to_account = a3
t7.save
t8.from_account = a2
t8.to_account = a1
t8.save
t9.from_account = a2
t9.to_account = a6
t9.save
