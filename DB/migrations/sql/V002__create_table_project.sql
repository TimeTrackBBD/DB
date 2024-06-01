CREATE TABLE "Project" (
  "ProjectID" SERIAL PRIMARY KEY,
  "UserID" INT NOT NULL
  "ProjectName" VARCHAR(100) NOT NULL,
  "Description" VARCHAR(500) NOT NULL,
   FOREIGN KEY ("UserID") REFERENCES "User"("UserID")
);

