    
require 'redis'

REDIS = Redis.new
#Jonathan Canfield cpsc 473 home work 3

#The 1st step in the tutorial
REDIS.set "server:name", "fido"

#The 2nd step in the tutorial
puts REDIS.get "server:name"

#The 3rd step in the tutorial
REDIS.SET "connections", 10
puts REDIS.INCR "connections"
puts REDIS.INCR "connections"
REDIS.DEL "connections"
puts REDIS.INCR "connections"

#the 4th step in the tutorial
REDIS.SET "resource:lock", "Redis Demo"
REDIS.EXPIRE "resource:lock", 120

#the 5th step in the tutorial
puts REDIS.TTL "resource:lock"
puts REDIS.TTL "count"

#the 6th step in the tutorial
REDIS.SET "resource:lock", "Redis Demo 1"
REDIS.EXPIRE "resource:lock", 120
puts REDIS.TTL "resource:lock"
REDIS.SET "resource:lock", "Redis Demo 2"
puts REDIS.TTL "resource:lock"

#the 7th step in the tutorial
REDIS.RPUSH "friends", "Tom"
REDIS.RPUSH "friends", "Bob"


#The 8th step in the tutorial
REDIS.LPUSH "friends", "Sam"

#the 9th step in the tutorial
puts REDIS.LRANGE "friends", 0, -1
puts REDIS.LRANGE "friends", 0, 1
puts REDIS.LRANGE "friends", 1, 2

#the 10th step in the tutorial
puts REDIS.LLEN "friends"

#The 11th step in the tutorial
puts REDIS.LPOP "friends"

#The 12th step in the tutorial
puts REDIS.RPOP "friends"

#the 13th step in the tutorial
puts REDIS.LLEN "friends"
puts REDIS.LRANGE "friends", 0, -1

#the 14th step in the tutorial
REDIS.SADD "superpowers", "flight"
REDIS.SADD "superpowers", "x-ray vision"
REDIS.SADD "superpowers", "reflexes"

#The 15th step in the tutorial
REDIS.SREM "superpowers", "reflexes"

#The 16th step in the tutorial
puts REDIS.SISMEMBER "superpowers", "flight"
puts REDIS.SISMEMBER "superpowers", "reflexes"


#The 17th step in the tutorial
puts REDIS.SMEMBERS "superpowers"

#The 18th step in the tutorial
REDIS.SADD "birdpowers", "pecking"
REDIS.SADD "birdpowers", "flight"
puts REDIS.SUNION "superpowers", "birdpowers"


#The 19th step in the tutorial
REDIS.ZADD "hackers", 1940, "Alan Kay"
REDIS.ZADD "hackers", 1953, "Richard Stallman"
REDIS.ZADD "hackers", 1965, "Yukihiro Matsumoto"
REDIS.ZADD "hackers", 1916, "Claude Shannon"
REDIS.ZADD "hackers", 1969, "Linus Torvalds"
REDIS.ZADD "hackers", 1912, "Alan Turing"


#The last step in the tutorial!!
puts REDIS.ZRANGE "hackers", 2, 4
  