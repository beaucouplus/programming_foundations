# considering a loan amount, an APR (annual percentage rate) and a loan duration

# START
# SET loan_amount = ""
# WHILE loan_amount is not an integer
#   prompt "What is the loant amount?"
#   loan_amount = ask for loan amount
#   validate if loan_amount is an integer
#   IF loan_amount is an integer
#     break


# SET loan_duration = ""
# WHILE loan_duration is not an integer
#   prompt "What is the loant duration?"
#   loan_amount = ask for loan duration
#   validate if loan_duration is an integer
#   IF loan_duration is an integer
#     break

# SET apr = ""
# WHILE apr is not a float 0 < apr < 1
#   prompt "What is the apr ?"
#   apr = ask for apr (either in % or 0.xx)
#
#   validate if apr is a number
#   IF loan_duration is a number
#   IF if apr > 1 divide apr by 100
#     break

# SET YEAR_IN_MONTHS = 12
# SET duration_in_months = LOAN_DURATION * YEAR_IN_MONTHS
# SET mpr = APR / YEAR_IN_MONTHS
# SET monthly_paiement = LOAN_AMOUNT * (mpr / (1- (1 + mpr)**(-duration_in_months)))
# PRINT monthly_paiement rounded
# END


YEAR_IN_MONTHS = 12

def prompt(message)
  Kernel.puts("=> #{message}")
end

def validate_integer?(num)
  Integer(num) rescue false
end

def validate_float?(num)
  Float(num) rescue false
end

def validate_number?(num)
  validate_float?(num) || validate_integer?(num)
end

def monthly_payment(loan_amount, loan_duration, apr)
  duration_in_months = loan_duration * YEAR_IN_MONTHS
  mpr = apr / YEAR_IN_MONTHS
  monthly_payment = loan_amount * (mpr / (1- (1 + mpr)**(-duration_in_months)))
  "Your monthly paiement is #{monthly_payment.round(2)} $"
end

def mortgage
  loan_amount = ""
  loop do
    prompt("What is the loan amount?")
    loan_amount = gets.chomp
    if validate_integer?(loan_amount) && !loan_amount.empty?
      loan_amount = loan_amount.to_i
      break
    else
      prompt("Please provider an integer superior to 0")
    end
  end

  loan_duration = ""
  loop do
    prompt("What is the loan duration in years ?")
    loan_duration = gets.chomp
    if validate_integer?(loan_duration) && !loan_duration.empty?
      loan_duration = loan_duration.to_i
      break
    else
      prompt("Please provider an integer superior to 0")
    end
  end


  apr = ""
  loop do
    prompt("What is Annual Percentage Rate ? (In \% or as a decimal value)")
    apr = gets.chomp
    if validate_number?(apr) && !apr.empty?
      apr = apr.to_f
      apr = apr / 100 if apr > 1
      break
    else
      prompt("Please provider a valid number")
    end
  end

  monthly_payment(loan_amount, loan_duration, apr)
end

puts mortgage
