DROP TABLE IF EXISTS quicklinks_action;
CREATE TABLE IF NOT EXISTS quicklinks_action (
  id_action int(11) NOT NULL DEFAULT '0',
  name_key varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  description_key varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  action_url varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  icon_url varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  action_permission varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  quicklinks_state smallint(6) DEFAULT NULL,
  PRIMARY KEY (id_action)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO quicklinks_action (id_action, name_key, description_key, action_url, icon_url, action_permission, quicklinks_state) VALUES
	(1, 'quicklinks.action.modify.name', 'quicklinks.action.modify.description', 'jsp/admin/plugins/quicklinks/ModifyQuicklinks.jsp', 'icon-edit icon-white', 'MODIFY', 0),
	(2, 'quicklinks.action.modify.name', 'quicklinks.action.modify.description', 'jsp/admin/plugins/quicklinks/ModifyQuicklinks.jsp', 'icon-edit icon-white', 'MODIFY', 1),
	(9, 'quicklinks.action.disable.name', 'quicklinks.action.disable.description', 'jsp/admin/plugins/quicklinks/ConfirmDisableQuicklinks.jsp', 'icon-remove icon-white', 'CHANGE_STATE', 1),
	(10, 'quicklinks.action.enable.name', 'quicklinks.action.enable.description', 'jsp/admin/plugins/quicklinks/DoEnableQuicklinks.jsp', 'icon-ok icon-white', 'CHANGE_STATE', 0),
	(11, 'quicklinks.action.copy.name', 'quicklinks.action.copy.description', 'jsp/admin/plugins/quicklinks/DoCopyQuicklinks.jsp', 'icon-move icon-white', 'COPY', 0),
	(12, 'quicklinks.action.copy.name', 'quicklinks.action.copy.description', 'jsp/admin/plugins/quicklinks/DoCopyQuicklinks.jsp', 'icon-move icon-white', 'COPY', 1),
	(13, 'quicklinks.action.delete.name', 'quicklinks.action.delete.description', 'jsp/admin/plugins/quicklinks/ConfirmRemoveQuicklinks.jsp', 'icon-trash icon-white', 'DELETE', 0);

