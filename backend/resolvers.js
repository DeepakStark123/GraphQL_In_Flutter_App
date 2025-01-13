
  const Query = {
    // Fetch only students
    students: (parent, args, context) => {
      return context.db.students.list(); // Fetch only students from the database
    },
  
    // Fetch only colleges
    colleges: (parent, args, context) => {
      return context.db.colleges.list(); // Fetch only colleges from the database
    },
  
    // Fetch both students and colleges
    studentsAndColleges: (parent, args, context) => {
      const students = context.db.students.list(); // Fetch students
      const colleges = context.db.colleges.list(); // Fetch colleges
      return { students, colleges }; // Return both as a combined object
    },
  };

  const Student = {
    college: (parent, args, context) => {
      // Resolve the associated college using the collegeId
      return context.db.colleges.get(parent.collegeId);
    },
  };
  
  module.exports = {
    Query,
    Student, 
  };
  