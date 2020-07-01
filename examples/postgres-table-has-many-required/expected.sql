ALTER TABLE "postgres-table-has-many-required$dev"."Post" ADD COLUMN "authorId" character varying(25) NOT NULL;
ALTER TABLE "postgres-table-has-many-required$dev"."Post" ADD CONSTRAINT "author" FOREIGN KEY ("authorId") REFERENCES "postgres-table-has-many-required$dev"."User"("id");
UPDATE "postgres-table-has-many-required$dev"."Post" SET "authorId" = "postgres-table-has-many-required$dev"."_PostToUser"."B" FROM "postgres-table-has-many-required$dev"."_PostToUser" WHERE "postgres-table-has-many-required$dev"."_PostToUser"."A" = "postgres-table-has-many-required$dev"."Post"."id";
DROP TABLE "postgres-table-has-many-required$dev"."_PostToUser";