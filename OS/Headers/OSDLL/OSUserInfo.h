extern OSUserInfoOpen { -- userinfo ok }
extern OSUserInfoClose { userinfo -- }

extern OSUserInfoUserGetByName { username userinfo -- userptr ok }
extern OSUserInfoUserGetByUID { uid userinfo -- userptr ok }

extern OSUserInfoUserGetName { userptr -- username }
extern OSUserInfoUserGetProperty { property userptr -- value ok }

// groups

extern OSGroupInfoOpen { -- groupinfo ok }
extern OSGroupInfoClose { groupinfo -- }

extern OSGroupInfoGroupGetByName { groupname groupinfo -- groupptr ok }
extern OSGroupInfoGroupGetByGID { gid groupinfo -- groupptr ok }

extern OSGroupInfoGroupGetName { groupptr -- groupname }
extern OSGroupInfoGroupGetProperty { property groupptr -- value ok }