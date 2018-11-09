# Скрипт приймає таймзону в виді тексту та виводить поточний час в заданій таймзоні
# Input example: ruby yourscript.rb UTC
# Скрипт не повинен використовувати сторонніх гемів Скрипт повинен підтримувати 3-5 таймзон.

require 'date'

class Timezones
  def initialize(one)
    @first_number = one
  end

  def eet
    @first_number = `zdump EET`
  end

  def cet
    @first_number = `zdump CET`
  end

  def msk
    @first_number = `zdump MSK`
  end

  def gmt
    @first_number = `zdump GMT`
  end

  def acst
    @first_number = `zdump ACST`
  end
end

timezona = Timezones.new(ARGV[0])

if ARGV.length != 1
  puts 'We need exactly 1 arguments!'
  exit
end
if timezona.respond_to?(ARGV[0])
  puts timezona.send(ARGV[0])
else
  p 'Available timezones is: EET, CET, MSK, GMT, ACST.'
end
