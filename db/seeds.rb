User.destroy_all

u1 = User.create email: 'sahankmr32@gmail.com' , name: 'sahana' , password: 'saanvi'
u2 = User.create email: 'deepuhassan@gmail.com' , name: 'sandeep' , password: 'saanvi'
u3 = User.create email: 'saanvi@gmail.com' , name: 'saanvi' , password: 'sannvi'
u4 = User.create email: 'sachin@gmail.com' , name: 'sachin' , password: 'saanvi'

puts "Created #{  User.all.length } users."

Account.destroy_all

a1 = Account.create balance: '100' , account_type: 'check'
a2 = Account.create balance: '200' , account_type: 'savings'
a3 = Account.create balance: '300' , account_type: 'credit'
a4 = Account.create balance: '500' , account_type: 'credit'
a5 = Account.create balance: '600' , account_type: 'check'
a6 = Account.create balance: '700' , account_type: 'savings'

# binding.pry

puts "Created #{  Account.all.length } accounts."

Transaction.destroy_all

t1 = Transaction.create description: "Withdraw for shopping" , ammount: 20
t2 = Transaction.create description: "Deposite" , ammount: 30
t3 = Transaction.create description: "Credit" , ammount: 100
t4 = Transaction.create description: "Withdraw" , ammount: 50
t5 = Transaction.create description: "savings" , ammount: 25
t6 = Transaction.create description: "Paying for bills" , ammount: 33
t7 = Transaction.create description: "bills" , ammount: 56
t8 = Transaction.create description: "Withdraw for shopping" , ammount: 72
t9 = Transaction.create description: "Withdraw for holiday" , ammount: 82

# binding.pry

puts "Created #{  Transaction.all.length } transactions."

u1.accounts << a1
u2.accounts << a2
u3.accounts << a3
u4.accounts << a4
u1.accounts << a5
u2.accounts << a6


# a1.transactions << t1
# a2.transactions << t2
# a1.transactions << t6

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
