class School
  def initialize
    @students = []
  end

  def students(grade)
    return @students if @students.empty?
    rank = @students.find { |h| h[:grade] == grade }
    sort(rank[:students])
  end

  def add(s_name, grade)
    rank = @students.find { |h| h[:grade] == grade }
    rank[:students].push(s_name) unless rank.nil?
    @students.push(grade: grade, students: [s_name]) if rank.nil?
  end

  def sort(students)
    students.sort!
  end

  def students_by_grade
    @students.each do |h|
      sort(h[:students])
    end
    @students.sort_by! { |s| s[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
