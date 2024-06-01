CREATE TABLE "Task" (
  "TaskID" SERIAL PRIMARY KEY,
  "ProjectID" INT NOT NULL,
  "PriorityID" INT NOT NULL,
  "TaskName" VARCHAR(100) NOT NULL,
  "Description" VARCHAR(500) NOT NULL,
  "Duration" INT,
  FOREIGN KEY ("ProjectID") REFERENCES "Project"("ProjectID"),
  FOREIGN KEY ("PriorityID") REFERENCES "Priority"("PriorityID")
);

