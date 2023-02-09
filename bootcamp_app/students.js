const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// pool.query(`
// SELECT id, name, cohort_id
// FROM students
// LIMIT 5;
// `)
// .then(res => {
//   console.log(res.rows);
// })
// .catch(err => console.error('query error', err.stack));

const cohort = process.argv[2];
const limitResults = process.argv[3];
const query = 'SELECT students.id as student_id, students.name as name, cohorts.name as cohort FROM students JOIN cohorts ON cohorts.id = cohort_id WHERE cohorts.name LIKE $1 LIMIT $2;'

pool.query(query, [cohort, limitResults])
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
});