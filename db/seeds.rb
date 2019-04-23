# PERMANENT DATA

Constructor.destroy_all
c1 = Constructor.create :name => "Ferrari", :value => 29.0
c2 = Constructor.create :name => "Mercedes", :value => 32.2
c3 = Constructor.create :name => "Renault", :value => 12.4
c4 = Constructor.create :name => "Red Bull", :value => 24.7
c5 = Constructor.create :name => "Haas", :value => 9.4
c6 = Constructor.create :name => "Racing Point", :value => 9.8
c7 = Constructor.create :name => "Alfa Romeo", :value => 9.5
c8 = Constructor.create :name => "McLaren", :value => 7.6
c9 = Constructor.create :name => "Williams", :value => 6.1
c10 = Constructor.create :name => "Toro Rosso", :value => 6.5

Driver.destroy_all
d1 = Driver.create :name => "Sebastian Vettel", :nationality => "German", :value => 27.5
d2 = Driver.create :name => "Charles Leclerc", :nationality => "Monegasque", :value => 24.0
d3 = Driver.create :name => "Lewis Hamilton", :nationality => "British", :value => 30.4
d4 = Driver.create :name => "Valtteri Bottas", :nationality => "Finnish", :value => 21.2
d5 = Driver.create :name => "Daniel Ricciardo", :nationality => "Australian", :value => 12.0
d6 = Driver.create :name => "Nico Hulkenberg", :nationality => "German", :value => 11.9
d7 = Driver.create :name => "Max Verstappen", :nationality => "Dutch", :value => 24.5
d8 = Driver.create :name => "Pierre Gasly", :nationality => "French", :value => 17.0
d9 = Driver.create :name => "Romain Grosjean", :nationality => "French", :value => 8.7
d10 = Driver.create :name => "Kevin Magnussen", :nationality => "Danish", :value => 10.0
d11 = Driver.create :name => "Lance Stroll", :nationality => "Canadian", :value => 7.5
d12 = Driver.create :name => "Sergio Perez", :nationality => "Mexican", :value => 10.8
d13 = Driver.create :name => "Kimi Raikkonen", :nationality => "Finnish", :value => 10.3
d14 = Driver.create :name => "Antonio Giovinazzi", :nationality => "Italian", :value => 6.9
d15 = Driver.create :name => "Carlos Sainz", :nationality => "Spanish", :value => 6.8
d16 = Driver.create :name => "Lando Norris", :nationality => "British", :value => 7.4
d17 = Driver.create :name => "Robert Kubica", :nationality => "Polish", :value => 5.6
d18 = Driver.create :name => "George Russell", :nationality => "British", :value => 6.3
d19 = Driver.create :name => "Alex Albon", :nationality => "Thai", :value => 6.7
d20 = Driver.create :name => "Daniil Kvyat", :nationality => "Russian", :value => 5.7

# TEST DATA

Fantasy.destroy_all
f1 = Fantasy.create :name => "Team One", :points => 0
f2 = Fantasy.create :name => "Team Two", :points => 0

Race.destroy_all
r1 = Race.create :country => "Australia"

Position.destroy_all
p1 = Position.create

User.destroy_all
u1 = User.create :name => "Chris", :email => "chris@ga.co", :password => "chicken"
u2 = User.create :name => "Jane", :email => "jane@ga.co", :password => "chicken"

# ASSOCIATIONS ############################################################
# Constructors and Drivers
c1.drivers << d1 << d2
c2.drivers << d3 << d4
c3.drivers << d5 << d6
c4.drivers << d7 << d8
c5.drivers << d9 << d10
c6.drivers << d11 << d12
c7.drivers << d13 << d14
c8.drivers << d15 << d16
c9.drivers << d17 << d18
c10.drivers << d19 << d20

# Drivers and Fantasies
f1.drivers << d1 << d2 << d3
f2.drivers << d18 << d19 << d20

# Fantasies and Races
r1.fantasies << f1 << f2

# Fantasies and Constructors
c1.fantasies << f1 << f2
c5.fantasies << f2

# Drivers and Positions
p1.drivers << d1 << d2 << d3 << d4 << d5

# Users and Fantasies
u1.fantasies << f1
u2.fantasies << f2

# Races and Positions
p1.races << r1
