CREATE TABLE "TimeEntry" (
  "TimeEntryID" SERIAL PRIMARY KEY,
  "TaskID" INT NOT NULL,
  "Duration " INT NOT NULL,
  "SaveDate" TIMESTAMP NOT NULL,
  "Notes" VARCHAR(500),
  FOREIGN KEY ("TaskID") REFERENCES "Task"("TaskID")
);

