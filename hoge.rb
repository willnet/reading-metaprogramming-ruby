
class MyClass
  def my_method
    "original my_method"
  end

  def another_method
    my_method
  end
end

module MyClassRefinements
  refine MyClass do
    def my_method
      "refined my_method"
    end
  end
end

using MyClassRefinements # これ以降のMyClass#my_methodは差し替わる

class MyClass
  def my_method
    "original my_method"
  end

  def another_method
    my_method
  end
end

puts MyClass.new.my_method
puts MyClass.new.another_method
