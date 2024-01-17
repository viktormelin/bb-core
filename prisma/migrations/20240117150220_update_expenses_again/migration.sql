-- DropForeignKey
ALTER TABLE "expense_splits" DROP CONSTRAINT "expense_splits_group_usersId_fkey";

-- DropForeignKey
ALTER TABLE "expenses" DROP CONSTRAINT "expenses_group_usersId_fkey";

-- DropForeignKey
ALTER TABLE "group_users" DROP CONSTRAINT "group_users_authorizer_usersId_fkey";

-- DropForeignKey
ALTER TABLE "group_users" DROP CONSTRAINT "group_users_groupsId_fkey";

-- AddForeignKey
ALTER TABLE "expense_splits" ADD CONSTRAINT "expense_splits_group_usersId_fkey" FOREIGN KEY ("group_usersId") REFERENCES "group_users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "group_users" ADD CONSTRAINT "group_users_authorizer_usersId_fkey" FOREIGN KEY ("authorizer_usersId") REFERENCES "authorizer_users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "group_users" ADD CONSTRAINT "group_users_groupsId_fkey" FOREIGN KEY ("groupsId") REFERENCES "groups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "expenses" ADD CONSTRAINT "expenses_group_usersId_fkey" FOREIGN KEY ("group_usersId") REFERENCES "group_users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
