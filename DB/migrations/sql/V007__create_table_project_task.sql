CREATE TABLE "ProjectTask" (
  "ProjectTaskID" SERIAL PRIMARY KEY,
  "ProjectID" INT NOT NULL,
  "TaskID" INT NOT NULL,
  "PriorityID" INT NOT NULL,
  "StatusID" INT NOT NULL,
  FOREIGN KEY ("ProjectID") REFERENCES "Project"("ProjectID"),
  FOREIGN KEY ("TaskID") REFERENCES "Task"("TaskID"),
  FOREIGN KEY ("PriorityID") REFERENCES "Priority"("PriorityID"),
  FOREIGN KEY ("StatusID") REFERENCES "Status"("StatusID")
);

