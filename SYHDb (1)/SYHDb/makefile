.PHONY: default
default:
	@echo "Choose a Makefile target:"
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print "  - " $$1}}' | sort

.PHONY: start
start:
	@surreal start -A -u root -p root -b 167.235.79.213

.PHONY: import-file
import-file:
	@echo "Importing $(FILE)"
	@surreal import --conn http://167.235.79.213 -u root -p root --ns test --db test $(FILE)

.PHONY: import
import:
	@make import-file FILE=schemas/likes.surql
	@make import-file FILE=schemas/user.surql
	@make import-file FILE=schemas/interest.surql
	@make import-file FILE=schemas/file.surql
	@make import-file FILE=schemas/group.surql
	@make import-file FILE=schemas/article.surql
	@make import-file FILE=schemas/post.surql
	@make import-file FILE=schemas/postsGroups.surql
	@make import-file FILE=schemas/comment.surql
	@make import-file FILE=schemas/friends.surql
	@make import-file FILE=schemas/userInterest.surql
	@make import-file FILE=schemas/userScope.surql

	@make import-file FILE=functions/articles/addCommentArticle.surql
	@make import-file FILE=functions/articles/deleteArticle.surql

	@make import-file FILE=functions/file/addFile.surql

	@make import-file FILE=functions/friends/addFriend.surql
	@make import-file FILE=functions/friends/deleteFriend.surql
	@make import-file FILE=functions/friends/friendCount.surql

	@make import-file FILE=functions/groups/addGroup.surql
	@make import-file FILE=functions/groups/addUserToGroup.surql
	@make import-file FILE=functions/groups/deleteGroup.surql
	@make import-file FILE=functions/groups/deleteUserFromGroup.surql

	@make import-file FILE=functions/interest/addInterest.surql
	@make import-file FILE=functions/interest/deleteInterest.surql
	@make import-file FILE=functions/interest/changeRating.surql

	@make import-file FILE=functions/posts/addCommentPost.surql
	@make import-file FILE=functions/posts/addPost.surql
	@make import-file FILE=functions/posts/addLike.surql

	@make import-file FILE=functions/user/changeBio.surql
	@make import-file FILE=functions/user/setImage.surql
	@make import-file FILE=functions/user/updateLocation.surql

	@make import-file FILE=functions/deleteComment.surql

	@make import-file FILE=inserts/insertFiles.surql
	@make import-file FILE=inserts/insertUsers.surql
	@make import-file FILE=inserts/insertGroups.surql
	@make import-file FILE=inserts/insertsUsersToGroups.surql
	@make import-file FILE=inserts/insertInterests.surql
	@make import-file FILE=inserts/insertPosts.surql
	@make import-file FILE=inserts/insertArticles.surql
	@make import-file FILE=inserts/insertUserInterests.surql
	@make import-file FILE=inserts/insertCommentsArticles.surql
	@make import-file FILE=inserts/insertCommentsPosts.surql
	@make import-file FILE=inserts/insertLikes.surql

	