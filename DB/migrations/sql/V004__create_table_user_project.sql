CREATE TABLE "UserProject" (
  "UserProjectID" SERIAL PRIMARY KEY,
  "UserID" INT NOT NULL,
  "ProjectID" INT NOT NULL,
  "StartDate" TIMESTAMP NOT NULL,
  "EndDate" TIMESTAMP,
  FOREIGN KEY ("UserID") REFERENCES "User"("UserID"),
  FOREIGN KEY ( "ProjectID") REFERENCES "Project"("ProjectID")
);