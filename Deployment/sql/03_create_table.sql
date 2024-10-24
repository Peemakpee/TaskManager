CREATE TABLE task_management.tasks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    age INT NOT NULL CHECK (age > 0),
    address TEXT NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    department VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL CHECK (salary >= 0),
    hire_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE task_management.tasks IS 'Stores employee task information';
COMMENT ON COLUMN task_management.tasks.name IS 'Employee full name';
COMMENT ON COLUMN task_management.tasks.email IS 'Employee email address';
COMMENT ON COLUMN task_management.tasks.age IS 'Employee age in years';
COMMENT ON COLUMN task_management.tasks.phone_number IS 'Employee contact number';
COMMENT ON COLUMN task_management.tasks.department IS 'Employee department';
COMMENT ON COLUMN task_management.tasks.position IS 'Employee job position';
COMMENT ON COLUMN task_management.tasks.salary IS 'Employee salary amount';
COMMENT ON COLUMN task_management.tasks.hire_date IS 'Date when employee was hired';