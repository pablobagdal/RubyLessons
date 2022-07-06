class CreditRequest
  attr_reader :age, :salary, :sex, :request_amount, :credit_history

  def initialize(age, sex, salary, credit_history, request_amount)
    @age = age
    @sex =sex
    @salary = salary
    @credit_history = credit_history
    @request_amount = request_amount
  end

  def calculate_scoring
    scoring = 0
    if @age.between?(21,40)
      scoring += 10
    elsif @age > 40
      scoring += 20
    end

    if @sex == 'w'
      scoring += 10
    end

    if @salary.between?(20_001, 40_000)
      scoring += 10
    elsif @salary > 40_000
      scoring += 20
    end

    if @credit_history == 'y'
      scoring += 20
    end

    if @request_amount < 20_000
      scoring += 20
    elsif @request_amount.between?(20_001, 40_000)
      scoring += 10
    end

    return scoring
  end

  def approve?
    return calculate_scoring >= 50
  end
end
