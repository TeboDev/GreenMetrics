prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>53940684437914060569
,p_default_application_id=>267371
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DSWUIGREENMETRICS'
);
end;
/
 
prompt APPLICATION 267371 - Dsw-Infraestructura77
--
-- Application Export:
--   Application:     267371
--   Name:            Dsw-Infraestructura77
--   Date and Time:   05:50 Saturday July 19, 2025
--   Exported By:     CECARRIONG@UTN.EDU.EC
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     66
--       Items:                  216
--       Validations:             31
--       Processes:               97
--       Regions:                139
--       Buttons:                158
--       Dynamic Actions:         63
--     Shared Components:
--       Logic:
--         App Settings:           1
--         Build Options:          3
--       Navigation:
--         Lists:                  5
--         Breadcrumbs:            1
--           Entries:             30
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  12
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.6
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_DSWUIGREENMETRICS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Dsw-Infraestructura77')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DSW-INFRAESTRUCTURA77267371')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'A526035311CA8FD85A9DF50FEEDF35DC2106EE068DF9E607C0D8488D73388FE0'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'es-ec'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(66101940197341679616)
,p_application_tab_set=>1
,p_logo_type=>'IT'
,p_logo=>'#APP_FILES#app-267371-logo.png'
,p_logo_text=>'GreenMetrics'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(66101946518729679627)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Dsw-Infraestructura77'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719050207Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>7
,p_version_scn=>15640493247260
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(267371)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(66101940944672679617)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(66101942119890679620)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(66101940944672679617)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15640449060489
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66101977302647679670)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66101978835860679673)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102000671217679907)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102015755565680644)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Campus'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102041539757681385)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Facultades'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102060186753682115)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Tipos Publicacion'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102078931549682845)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Tipos Evento'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102097076273683584)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Proyectos'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102128867144684335)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Tipos Evidencia'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102146170067685087)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Usuario Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102160004725685807)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Edificios'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102179971481686541)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Espacios Abiertos'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102197628306687276)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Areas Verdes'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102219133340688072)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Zonas Permeables'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102237519160688823)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Infraestructura Seguridad'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102266099285689559)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Presupuesto Sostenibilidad'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102285549968690298)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Carreras'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001938Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001938Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102500913741691059)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Asignaturas'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102524558821691405)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Publicaciones Academicas'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001949Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102572609158692161)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Eventos'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102602983704692935)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Egresados'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102641206694693699)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Seguimiento Egresados'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002012Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002012Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102678312485694480)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102713706351695243)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Asignatura Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102736685088695989)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Publicacion Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102758625603696730)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Evento Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102777447668697489)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Proyecto Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102792225358698236)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Reportes'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66102813873470698982)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Auditoria'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103196557575700377)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(66101946450462679627)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(66101942119890679620)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15640449060457
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103195056632700375)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103195560552700376)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(66103195056632700375)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103195901697700376)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(66103195056632700375)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(66103142510274699956)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15640449049391
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103142978623699957)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103143315725699957)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103143726719699958)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Campus'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103144113625699958)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Facultades'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103144552107699958)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Tipos Publicacion'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103144971685699958)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Tipos Evento'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103145384282699959)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Proyectos'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103145775687699959)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Tipos Evidencia'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103146166811699959)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Usuario Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103146577305699959)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Edificios'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103146906480699960)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Espacios Abiertos'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103147326890699960)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Areas Verdes'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103147727250699960)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Zonas Permeables'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103148116331699960)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Infraestructura Seguridad'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103148568127699960)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Presupuesto Sostenibilidad'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103148948555699961)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Carreras'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103149374425699961)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Asignaturas'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103149732940699961)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Publicaciones Academicas'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103150102859699961)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Eventos'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103150565422699962)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Egresados'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103150940591699962)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Seguimiento Egresados'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103151327388699962)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103151702323699962)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Asignatura Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103152110422699962)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Publicacion Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103152550952699963)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Evento Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103152986715699963)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Proyecto Evidencias'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103153390353699963)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Reportes'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103153796872699963)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Auditoria'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(66103197696141700379)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(66101945350764679625)
,p_version_scn=>15640449060517
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103198014935700379)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(66101945350764679625)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(66103198326218700379)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(66101944521236679625)
,p_version_scn=>15640449060540
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103198703897700379)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(66103199184799700380)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000011249444154584763CC6B9DF19F610001E3A8034643603404864C087032FD6330D456C359625CBE7987E1D5872F0C9C5C3C2495';
wwv_flow_imp.g_varchar2_table(2) := '2A44970356BA2A0C6EB626380D9FBC780303273B1BC3ED47CF487204F51CB06803839AB23CC3E3A7CF196E3F7CCAC0C9CD4B544850CD014B36EE6678FFF12BD8D25F3FBF337CFECD485F0720DBB6EBF019866397EFD0DE0157EF3C60D05651C0B0882E0E';
wwv_flow_imp.g_varchar2_table(3) := '387BF536C3AF5FBF182C0DB5190E9CBCC8F0EBD76F063636560607737D069A3A60C9C65D0C7AEACA0C5FBEFD64B032D202FB9EAE0EF8FAFD07C3DD47CF18F4D49570C6314D438098944537078C26C2D144882B41D2241112AA8E911D73EEDA6D861F7FA9';
wwv_flow_imp.g_varchar2_table(4) := '5C171093FDC85143746D488EE1C4E81975C068088C8600000C59FC619392B0C40000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(66101943172386679622)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE900000CD049444154785EED9D7B7054D51DC7BFE76E12F2E415A56884411C8A08A3A51D82B69D820E2ADA91383A455067CA43930D9204';
wwv_flow_imp.g_varchar2_table(2) := '9C8E9287ED76CC03E9D4985D21BB411E6D45412B951111ADD5508781801A6448292A551C23A012C863934DB27B4FE706A24442D83DE7DCDDBBD95FFEBEBFDFEF7BBEF79373CEBDF7B7F732D01F3920E1009388A550720004104120E5000124651F051340';
wwv_flow_imp.g_varchar2_table(3) := 'C48094030490947D144C001103520E104052F6513001440C4839400049D947C104103120E5000124651F051340C48094030490947D146C4980163DB52E2D91F9526C884B818FA7324D4B614C4FD1391263E194690C3ECE352FD7752F12595B007EAF8F27';
wwv_flow_imp.g_varchar2_table(4) := '7AD73FBEB8D56AE38F2C409CB3A515351335603AE3FA740E2D13E0D70388B79A5116D1D30DB08300AF0363FB74A0EED9C2EC23608C474A5F5801CA2B5F7FB906DF4DBACEA6330D99E06C1A8061911AFC20A9DB0CC6F7836B759CF3BA387FDCEE4AC7434D';
wwv_flow_imp.g_varchar2_table(5) := 'E11A5BF800E29CE59779E680F1C700F6F3700D3096EA306037185F5955687F3D5CB392E900657B3CF149A7F4059CB3DF01F8712C9DD0088EF50863F853473AFB6B4D4E4EB7993A4C0568796975468069DB00FE33330741B9FB778001EFEB2CE14E57D1A2';
wwv_flow_imp.g_varchar2_table(6) := '6FCCF2C83480F2CADDD7318EB7006498259EF206E5C0515B40CBAAFC7D764350478778902900E5977A7E09C6B7D30639C4B361DEE1CD9C6959AEA2EC5DAA4B2807E8DCCCB31F40B26AB1944FCA81765B40CB543D13290528DBE1494E8CE7063CD7490D95';
wwv_flow_imp.g_varchar2_table(7) := '824D718033347476B1CC1A474EBBAA024A01CA2FADDE08C67EAB4A1CE531C101CEFFE22CC95DA02AB33280F2CAAA1730B00DAA84511EF31CE0E00B5DC5B91B55545002D0F2A79F4E0A7424370218A14214E530DD81265F371BA362295302507EA9DB0E86';
wwv_flow_imp.g_varchar2_table(8) := '6AD3874D05D439C091EB2CB1BB6513CA03643CA228F71C063051560CC587D30176D859943D59F691873440F915EED9D0F14638874EB51439A0E10E67A17DA74C366980F2CADC3B1970BB8C088A8D8C031C78D3556C9F2D535D0AA0058E0D8943E33BBD00';
wwv_flow_imp.g_varchar2_table(9) := '341911141B3107745B527B6AE5A38F76882A900268D993D533758DBD2B5A9CE222EF80A6F39B9F7922B75654891440F9E59E15E0BC42B438C559C001C60A9D45392B4595C80154E67E15409668718AB38403DB9CC5F6BB45950803C4396705E51EA3CF24';
wwv_flow_imp.g_varchar2_table(10) := '5DB438C559C28193CE62FB685125C2002D59B57A745CB7EDB868618AB38E0301E6BF6C75D1D253228A84015ABEB2667220A01F12294A31D672C066D3A654AE106B381306A8A0A2661AD7F57DD6B282D48838C0342DB3AA30DB68C309F94F18A0BCF23533';
wwv_flow_imp.g_varchar2_table(11) := '18D7842FFF42564A01A639C0993ED355B444A85B5118207A8461DAF98C44E259CE62FBBF440A0B039457EEBE8771BC225294622CE680C4333171802A6A1E60BAFEBCC5AC2039020E70867B5D45F6AD02A1E22F1A5F5656BD40B7580722E71C1D6DADE8EE';
wwv_flow_imp.g_varchar2_table(12) := 'EE02D703227E08C568B6382426A720614874BEFB816BDA83AEC2EC4D2283179E810ACADC0F72E06F2245CD8A69FAFA38FCDDA6FE107340E9C9A969481D167D4D990410808EF636B49E6EC2B513C663DE5DB3302A7DB8599C7E97F74F9E4DF8EC8B46CC9A';
wwv_flow_imp.g_varchar2_table(13) := 'F10BEC3B70102DCDAD484A4D435A9441440001686D3EDDB37CE53F341FD75E3DC674788C02AB3C9BF0F9178DC8BAF35674F83AB1F7FD7AB4B4441F44049001D099267478DB505CB01819A3C2F3786E55CD0BF8FCD8973D00197F7D204A4945DAF0916101';
wwv_flow_imp.g_varchar2_table(14) := '59B608016411802E80284A963302C842007D0FD1876869698B8A3D1101643180CE42E43BB727B23E44049005018A268808208B02142D1011401606E87B880EF45CE2A70C1D8694346BBD5794008A10406B9EFF070E1DFE0477DD7E0B349B6DC0AB695F67';
wwv_flow_imp.g_varchar2_table(15) := '27F6EC3FBBB11E39EA0AC4C55BE74DC604D0790095142CC69561BA0FB4BD760F76FCF33D8C1D7325C65D7515346DE09FC7191BEBBA0F0E2075E87024A70D95BD7DA32C9E008A1040DE0E1F1C956BE1F586F6BBBC248BDD6424802204903105B4B5FBB0B7';
wwv_flow_imp.g_varchar2_table(16) := 'BE01BA7EE997C537B7B6E1DDDDFB400001B0DAD3F8483CCA08750DF9EAEB5328AD5A470019C61140A1E2031040E77946001140860383A6A18C96B0D081EE8DA04D7484EE03857ACA68098B82254CD57DA0B52FBE86765F070A16CE0D95938B1E4F00C500';
wwv_flow_imp.g_varchar2_table(17) := '40FE40009EE75F45C3C7473175CA243C3CFFAE3E40349EFC169D97E8BB1E121F8F8C1F5D76014804D02007C880A766D3361C3AF2296E983C1139F7F77D734DC327C7B07AE396A066A4A58BE6E1BA6BC6F63996001AE400B95FD886830D4770FDE489B0FF';
wwv_flow_imp.g_varchar2_table(18) := '001E63E8675ADBB0EFC07F830228F32793303C2D8500BA985B83E9323EA0EB58BBF9B51E78A64C9A00FB03774363C217A8B4070AE65FCCAA00F5B78936F62C3B6AF762F6AFA6236948C205C37B6ECB767C78F03FFD2E5BC17811EC31B48445E912D6BB77';
wwv_flow_imp.g_varchar2_table(19) := '19373603058BE6C2D8E4F6FEAD7BF9757C70A0E1A2CB56B07004731C0114A50019B2376F7F07FFDEF33EAE1E9B81FC73106DF8FB0EECAF3F14F4CCF3EDE9666CDDB90B5D5D5D03F2929090807BEF9889F4E17D5B3608A02806C890FEF28EDA9EA7E1E3C7';
wwv_flow_imp.g_varchar2_table(20) := '8DC1E5E92351F7C147B87EF2B5B0DF3F27980904C7BEFA1A956B37A1AB6BE09F4F270E49C0F2EC073066F4E5B4891E6C9BE8AD6FBD87B777EDE91996991BE6FE7CA31928CA67A05EF96FBEB71F675A5A71DFAF6F096AE65175100114050085F3A7CDA182';
wwv_flow_imp.g_varchar2_table(21) := '45001140A132437BA0C1B607922240329866209A81A4102280082002E8070E083FF0B1EAA30CDA4487CE387524524762E8D49C17410099F0BB30EA480C8EC941B784C9B6B452476270E0F41E45009DE717752486068F713401749E67D491480009BDA595';
wwv_flow_imp.g_varchar2_table(22) := '3A12E94DF5DFBDE6973A12439F45E82AEC125761D49138305404501097F1D49178718808A0200032ECA38EC4FE21228042B8134D1D8917424400053903F55A471D897D21228042988142BF46511741ED1CD4CE2145130144001140D40F24C5805430CD40';
wwv_flow_imp.g_varchar2_table(23) := '340311408375066A6B3E8DF6B656E42D9E8F49E3C3F3C9CB50693A7CF4185CEBB7C06A1FE7A5AB30E3FB5CDE56B49E397DF6A3BB59B762D4086B7DD0E4F8374D7869FBDB38F2E9E7481B311249C9A9A1F267DAF1041000E39BF1A74E3442D775D38C5691';
wwv_flow_imp.g_varchar2_table(24) := 'D8F89E46FAE80C3013DE3F24AA8F003AE79C1E08F47CFEDBDFDD056E31909866EBF9428F31F35CEACB3EA22088C64504A0BC72F73D8CE31551D114671D0738C3BDAE22FB561145C21D89F915EED9D0F18648518AB198031AEE7016DA778AA8120628AF7C';
wwv_flow_imp.g_varchar2_table(25) := 'CD0CC6B55A91A214632D0738D367BA8A96EC1251250C504145CD34AEEBFB448A528CB51C609A96595598BD5F44953040CB57D64C0E04F443224529C65A0ED86CDA94CA15D90D22AAC401AA58333EA06B47458A528CB51CB069FA3595854BFE27A24A18A0';
wwv_flow_imp.g_varchar2_table(26) := '25AB568F8EEBB61D17294A31D672C01F1FB862CD638F9C1051250C50B6C7139FF82D6F0190285298622CE380CF77191B5A939333F09B432F22571820235F7E59752DC06658C60A1222E000DFE52CCE9D2910D813220B9003607F102D4E71567080FFD159';
wwv_flow_imp.g_varchar2_table(27) := '9CEB10552205D0B227AB67EA1A7B57B438C545DE014DE7373FF344AEF0FD3C2980163836240E8DEF3C4DFBA0C88320A8C0D7D23D64C446C7429F60BCDC126614CD2B776F661CF7890AA0B8C839C019B6B88AECF3641448CD403D0095AEB99131EDECABDF';
wwv_flow_imp.g_varchar2_table(28) := 'E92FAA1CE05CBFC955B264AF8C686980CE5E8DB90D11D36584506CD81DA87316DB6F94ADAA08A0EA79007B51560CC587D3013EDF599CBB59B6A212801C0E475C53FCE8CF005C252B88E2C3E240E3C8EE13E31C0E875FB69A12807A96B1527716185E9515';
wwv_flow_imp.g_varchar2_table(29) := '44F1E63BC039E6B84AECAFA9A8A40CA0737BA1670014A81046394C73A0CA596C5FA62ABB5280CE3E1FD377036C9A2A8194479D039CA1B6339DDD26FADCAB3F254A01320A2CABA81EA7EBAC1EC0707543A74C0A1C38C960BBA1AAF8E1930A727D97423940';
wwv_flow_imp.g_varchar2_table(30) := '46E6BC8AEAA94C674693F63895622997A803EC18B7F12CD70AFB47A2192E16670A4046B147CA9F4DB7C1B6199CCD522D9AF205EF006378C70FFFDCD5454B4F051F15FC91A6016448F8CD4B2FD9AEF8A4E95900F6E025D191AA1CE0E07F3E3121FDF197E7';
wwv_flow_imp.g_varchar2_table(31) := 'CE0DA8CAF9C33CA602D45B2CBFD46D0743158004B3064279FB38D0C138165695D8B798ED4B58003206B1BCB43AC3AFB1C5E0788801D67CFB81D96E9B9FFF4B803D67E3FA739525B98DE697936C281311D8B3AC7D7C6A0E672C8701B7C936B58968186431';
wwv_flow_imp.g_varchar2_table(32) := 'C6F2B48383794E4C18B1D3CCE5AA3FDFC23603F5573C7BA56758929FDFC019A682F3A9D0D84FC1310940DC203BC9AA86E307C361CE510FCEEAA1B1FA249BEDC3558F2F6E555520D43C1105E86262173DB52E2D91F9526C884B818FA7324D4B614C4FD179';
wwv_flow_imp.g_varchar2_table(33) := '6C34F06B0C3ECE352FD7752F12595B007EAF8F277AD7471094B05FC6874A321D1F9D0E5872068A4E2B63533501149BE75DD9A809206556C66622022836CFBBB2511340CAAC8CCD4404506C9E7765A326809459199B8908A0D83CEFCA464D0029B3323613';
wwv_flow_imp.g_varchar2_table(34) := '1140B179DE958D9A005266656C26228062F3BC2B1B3501A4CCCAD84CF47F1406C7FA6080C5610000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(66101943414708679624)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000A4E49444154785EED9D7D6C55E51DC77F05DADEDB4B7B694BDD2299319A10CC12964CE35B91F7A2D509A8DBFEF37F62B22D9A68';
wwv_flow_imp.g_varchar2_table(2) := 'DC1613132531BA6499894E13139325DB1FCEA180F256B02DAC0A3835ABB41D4A04417C0306E5A5BD2D819A7B682FB7B72FE7E59E97E79CDFA7FF419EF39CE7F7FD7E3FF7779E7BCA43C56FD7BF3222FCA08052052A0040A9F3946D2900000441B50200A0';
wwv_flow_imp.g_varchar2_table(3) := 'DA7E8A070032A05A0100506D3FC503001950AD0000A8B69FE201800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A05A0100506D3F';
wwv_flow_imp.g_varchar2_table(4) := 'C503001950AD0000A8B69FE201800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A05A0100506D3FC503001950AD0000A8B69FE201';
wwv_flow_imp.g_varchar2_table(5) := '800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB295E3500B9810B32941B908BC3C372F9D2A5D8A5615665A55456A7A426532B3367CD8ADDFA4D58B04A00F2613F7BFAA40C0F0D99E0812F6BC8D465';
wwv_flow_imp.g_varchar2_table(6) := '25539BF5652E4D93A804E0F4C9EFE46282C23F16D8544D8DD4D5CFD594DFB26B5507C0E0C0793977FAFF9670D96CADFCEA172B65FEF53F91D935A9B2C50C638247FEF87CE136772F5F2C7D073F97A3C7BF29FC5DAA262375F58D612C2511F75007C09953';
wwv_flow_imp.g_varchar2_table(7) := '276438376899B7EEE18764E1821B63656431006BEE6DB1D6DE7DA04F0E1FFD0A083C38A90E8013DF1C9391CB2396547F7EFA51A9AEACF4205B74974C06808C8874F79442502375731A452A2AA25B6C0CEEAC0E80EF8F1F2DD8F2F2FA276260D1F8254E0A';
wwv_flow_imp.g_varchar2_table(8) := '407EC8241054A7D392CDEF0980604A9F012066084C090010787212003CC916DD45D3020004AE8D0100D792457B812D0040E0CA2000702557F4831D0100048E8D0200C7529931D031006310F4F6C9E12FAF7E455A954ACB9C0636C6636E028019B976BC0A';
wwv_flow_imp.g_varchar2_table(9) := '57000081ADAE00602B9159035C030004D31A080066E5DB76359E000002DE038C2990D81761B6E88CBE2C9BB02748C99C8626B52FCBE8004E8263D018CF1D60AC8611914FFBFE275F1C3956A8AA2AA51702003028DC4E96523600A337F9B4773C04E9D9B5';
wwv_flow_imp.g_varchar2_table(10) := '529BAD77B284448D018098D9F9FBE7FF2AFDFDE7AC55AF6E5D291565FC9E4F2904F54D3F92CAAAEA982952DE7201A03CFD42BFFAD57F6C94FFF61CB4EE7BE7AD374BD3DC86B2D6F049778F1CFDEA6B6B0E8DFFA00600CA8A4FF817F71C3A222FBDFE8675';
wwv_flow_imp.g_varchar2_table(11) := 'E34CA64616FE748134353678EE04038383D2D6FE6F6BBE9995B3A4F19A6BC32F2AC23B024084E27BBD757117F03AC754D75D33EF3ABFA7347A3E0030DA9EC917777E20277FDBB0550EF47DEEFBEA01C07749CD9A30EEEF018AD5FCB8F79074F77E26070F';
wwv_flow_imp.g_varchar2_table(12) := '1D91FE73E77D111A007C91D1DC499204805F2A177FB50A007EA96AE83C0030D118003034AC412C0B0000A0580136C1415016B339E9003133AC9CE5D201E80074805105E2782C4A39F04F752D1D2008550D9D930E4007A003D001C651400730F4D33A8865';
wwv_flow_imp.g_varchar2_table(13) := 'D101E8007480883BC0AEF73F92CEBD1FC9BD2BEE92DB7F7653109CBB9A930EE04AAE780F8EBA036C6CEB92ED1D5D9688994C5A5EF8C36F2217140022B720BC054409C0A69D5DB2ADFD4AF8F33F0FB4AE909645378757FC14770280C82D086F015101501A';
wwv_flow_imp.g_varchar2_table(14) := 'FE554BEF94B52D8BA62C7CF77FBAE5EDADED92CB79FB6F9C52A96A59DBBA4C16DFB2D0565C00B095283903A20060E3CE2ED95EF4C96F17FEBCDA4F3EF7B29C2DF3373CEB6A67CB734F3E626B1E00D84A949C016103B06957976C7BEFEA63CFDD4B9B654D';
wwv_flow_imp.g_varchar2_table(15) := '4BB3ADA06F6EE990F7BAF6DB8E9B6EC0F245B7C92F5B97D8CE0100B6122567409800146F78F30AAE5C72873CB8EA2EE3C40400E32C096E4161011097F0E7950680E0F266DCCC6100F06EC75E79B76D77A176533FF9C7160800C6C534B805B90560EF273D';
wwv_flow_imp.g_varchar2_table(16) := 'F2CEAE2E59D67C8BACB8E3E7B60B2B0DBFD3677EDB89031C0000018A6BDAD46E0178EC99BF14BE8ABC6759B3AC5E39F506764BC73E79A7ADB350B2936F7B4CD007004C7021A435B80560DBEEFDB2697B476175F72C6F96D52B2642B0B5739F6CDE11BFF0';
wwv_flow_imp.g_varchar2_table(17) := 'B30758FFCA95FF3457C98F5B00F2B2FC6B5BA7ECDAB3AFA0D07D2D8BE5BEA5B717FE1C44F87911164E20F927910E752E85E0FE554BA475C96DB2B573BF6CDE71B543F8F5D8C38B3087C694390C005C08B861C71ED9D9F941E18A9BE6DF207D9F7D51F8B3';
wwv_flow_imp.g_varchar2_table(18) := '9F1BDE7F6EE990765E84B970C7DB500070A9DB1B5BDAA5A3EBC3095799FE55E77465B209761982380FF7B20728ADB7148238879F4D309B604F3CBFD5B647DA3A3E103F1F7B3C2DC4878BE8003E88189729FCE80071A9D5E93A01C0A95209180700134D04';
wwv_flow_imp.g_varchar2_table(19) := '800404DB6909000000C50AF02D905372123C8E0E9060734B4BA303D001E800A30A7034E21521E8007400450AD001E80074807114D001147DFEB107A003D001E80074805105F81A5451F79BAA541E8114858047201E8178048AF81188D3A1CDF9C4E51128';
wwv_flow_imp.g_varchar2_table(20) := '642F381D3A64C16D6E070021FAC1E9D0218AEDF05600E050A87287713A74B90A06733D0004A3EBB859391D3A04913DDE02003C0AE7F4324E8776AA5434E3002040DDE372402EEF01020C81695387F51E202EE1CFFB0300A6A534C0F5840100A7430768A0';
wwv_flow_imp.g_varchar2_table(21) := 'CF53F308642328A743FB9C38C3A603001B43381DDAB0C4FABC1C00B01194D3A17D4E9C61D301800343381DDA8148311D02000E8DE374688742C56C1800B8308CD3A15D881593A100E0D2284E87762998E1C301C083419C0EED4134432F01008FC6703AB4';
wwv_flow_imp.g_varchar2_table(22) := '47E10CBB0C000C33248AE5F0AB1051A81ED13DC3F85588884AF37C5B00F02C5DFC2E0480899E0140FC72EC79C5000000C50AB007F08C52722EA40324C74BDB4AE80074003AC0A8021C8F7E45083A80EDE7667206D001E80074003AC0380AE800C9F980B7';
wwv_flow_imp.g_varchar2_table(23) := 'ADE4E4B7C7E5F2A54BD6B83F3DF53BA94955DB5E93E401170673F2F8B32F5A25CE983953E6FE785E92CB9D509BBA6F81CE9C3A21C3B9414B88750F3F240B17DCA8CAF0D2623FEE3D24AFFD7D83F5D755A9B4CC696C52A5873A00867203D27FEAA4657236';
wwv_flow_imp.g_varchar2_table(24) := '5B2BBFBE7F95CCBF7E9E64D22955C69F1FC8C9C1C3C7E4CDCD3BA4FFDC05ABF67CF8F31068FA510740DEDCE22EA0C9ECE96AAD4EA725DBA0EBD33FAF874A00F27B80B3674EC9702E47FEAD479F94D4D5CF95193366A8D3432500632EE7062FC8D0E0805C';
wwv_flow_imp.g_varchar2_table(25) := '1C1E2E6C8CB52420BFE1ADACAA96FC277F2A9DD152369B60B54E53F8A40AA8EE0064020500800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E';
wwv_flow_imp.g_varchar2_table(26) := '8A070032A05A0100506D3FC503001950AD0000A8B69FE201800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A05A0100506D3FC503';
wwv_flow_imp.g_varchar2_table(27) := '001950AD0000A8B69FE201800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A05A0100506D3FC5FF00253E5C9BB5F74FA100000000';
wwv_flow_imp.g_varchar2_table(28) := '49454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(66101943717556679624)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE900001B8A49444154785EED9D799054D5BDC7BFA79759D8C20C204B20A058FA7C5A4163A2444D492CD1F01282469F464D5289553033E0';
wwv_flow_imp.g_varchar2_table(2) := '0C106302F490B4610624E4B1F400D3036AC4A010D1E012B352A526B162161388052A3BB238B20C20C22CDD7DCFCB9D7166D8FB4E77DF73EEE9FEF63F96C5B9E7FC7E9FDFEF7EFAF69DBB08F043022490B30444CE66CEC44980044001B009482087095000';
wwv_flow_imp.g_varchar2_table(3) := '395C7CA64E0214007B80047298000590C3C567EA244001B007482087095000395C7CA64E0214007B80047298000590C3C567EA244001B007482087095000395C7CA64E0214007B80047298000590C3C567EA244001B007482087095000395C7CA64E0214';
wwv_flow_imp.g_varchar2_table(4) := '007B80047298000590C3C567EA244001B007482087095000395C7CA64E0214007B80047298000590C3C567EA244001B007482087095000395C7CA64E0214007B800472980005705AF1CB23917C7F43A2B00579050581C2608B4C047CF989808C23E89356';
wwv_flow_imp.g_varchar2_table(5) := '200E7FC0EF4B909B07779A84E5970124E296F0C5450031ABD91FCF13FE7853BC31968796A644B1BFB1A6A2A2D983A16B0B29271BB97C56DD70F8E5089F851152600480A180BC001083B455820B2B2420F701623F805D426283E5C38680B0D62F983E71BB';
wwv_flow_imp.g_varchar2_table(6) := 'C2203CB1544E08604AF5B22B2DC8B180BC19C0D500BA7B823E83F01A81E380FC8714621D7C78A9665AE906AF0598E978B25200E1F033790D790D370B29BF62417C450043320D8EF3E504811D005EFCCF97C64BC5B1E23F85C377B5645BD6592580A97396';
wwv_flow_imp.g_varchar2_table(7) := '5C9CB0FCF703F816804F665BB1988F56027BA5942B027EEB670BA64FDAAA35920C2E6EBC00268697F4F0077D770988EF00B821836C3815099C8BC09F24E4E38998F5ECD2F0A48F4CC664B4002AAA6A6F973E314B485C6E721118BBA904C49B02566851A8';
wwv_flow_imp.g_varchar2_table(8) := 'EC77C6666062E05366D58EB27C620E809126C6CF98B38EC01B3E4B4E5F38B3EC55D33233EA08C03EDC0F0403CB01F975D34033DE9C20B0321E4B9499F4B3C0180154542DBB0EC2FA39808B72A29598A4A904B6C167DD1D993EF14D131230420093ABA3DF';
wwv_flow_imp.g_varchar2_table(9) := '92C07200792640658C394FA04500E317854A9FF43A096F0B404A515E1DAD1242CCF03A48C64702A7131012558B2A4B677A998C6705605FCC7338D8B04A025FF33240C64602E723208127FBC48AC77BF522224F0A201C0E071A0203D642E02B6C2F12309D';
wwv_flow_imp.g_varchar2_table(10) := '808478B14FECFD3BC2E170DC6BB97852009367479F9612F7780D16E321813408AC8C844ABF99C6F6AE6CEA39014CAE8E3E22811FB8922D2725018D0404307751A8749AC610CE58DA530228AFAA9B22845CE025408C85043249404A31B5A6B2646126E74C';
wwv_flow_imp.g_varchar2_table(11) := '672ECF08E081D9B5D7FBA4F823005F3A09715B12F0388104A41815A92CF9B317E2F484005A6FDF0D366C0230DC0B50180309B84940426CED132BBADC0B7F19F08400F8BBDFCD76E3DC5E24E095F301DA0550515D7B0520D603F07BB1508C89045C2290B0';
wwv_flow_imp.g_varchar2_table(12) := '12E2AAC53F2C79CBA5F91D4DEB0101449F0730CE51B41C4402D945E08548A8F4369D296915C0C737F8BCAE1300D72601AD04A4F882CE13827A05505DFB3A20AED35A002E4E025A09C8D722A1B251BA42D0268029B3EB6EB3A45CAB2B71AE4B029E21E0C3';
wwv_flow_imp.g_varchar2_table(13) := '98C8F4D2DFEA88479B002AAA6B5F05C48D3A92E69A24E02D02FA8E02B4086052D5E2A17E11B01FB9AC657D6F159FD19000A465F9872F9E39DEDE27947EB4EC8015D5B56140FC4869A65C8C043C4D403E1C0995855587A85E00528A8AD9CB760072A8EA64';
wwv_flow_imp.g_varchar2_table(14) := 'B91E097898C08EC88C92E11042AA8C51B900CAAB968E14C2F7179549722D1230818094D6E76B2A27BEA13256E502E065BF2ACBCBB5CC22A0FE67807201545445D7A3ED8DBCFC9000099C4AE0AF9150A9D2775D2815C003736B06F9E2C13D3CFBCFBE2781';
wwv_flow_imp.g_varchar2_table(15) := 'B312904D7E51B46C5AC951557C940AA0BCBAF6DB02E267AA92E33A24601E01794F2454B65A55DC4A0530B9BA2E2A214B5425C77548C0340202A26E51A8A45455DC4A0550511DB5CF705EAB2A39AE43020612507A1E409900C2E1B0AF2138C07E9572A181';
wwv_flow_imp.g_varchar2_table(16) := '4561C824A08AC089E2587DCF70386CA958509900A6542FBBD282F52F1549710D1230998025C4658B6794BCA322076502A8A88A9642A05645525C8304CC26A0EE44A03201F004A0D92DC9E8D51150F9BC40650228AF8EFE5600B7AAC3C89548C05802CA1E';
wwv_flow_imp.g_varchar2_table(17) := '15A64C00BC02D0D86664E0AA09486C8854965EA962597502A88ED603E8AF2229AE41028613F820122A1DA022072502F8F84F80CD00022A92E21A246038815871ACBE40C59F029508E0FEB98FF5EC118F7D687851183E092823D01413DD97854B4EB8BDA0';
wwv_flow_imp.g_varchar2_table(18) := '12014C092FE86D050B0FBB9D0CE727816C21E08B35162D0C4F3DE2763E4A04F0BD79B517B4B4880FDC4E86F39340B610C8CB93FD7FFA50D97EB7F351228029D575032DC87D6E27C3F949205B08F820062D0C95BCEF763E4A0430B16AC99080F0BFE77632';
wwv_flow_imp.g_varchar2_table(19) := '9C9F04B285405C263EB5B472D26EB7F351228029736A87599650FEC863B7E1717E12708B80CF272F5C38BD6CA75BF3B7CFAB4400E5B3EA860B9FDCEA76329C9F04B28580B4C4C535334BB6B99D8F12014C99BBFC322B9ED8E47632A6CD9F88C79048244C';
wwv_flow_imp.g_varchar2_table(20) := '0BBB235E210402812084CF676C0E5E0D3C217C972E993161B3DBF1A911C0AC2597593E3F0500C04A2470ECE861B43435424AA58F8077AD97FC8100BAF5E889C2EE3D5D5B23D726F65989FF5E3873D2DB6EE74D01B84DF8A4F95B9A9BF061C34158969267';
wwv_flow_imp.g_varchar2_table(21) := '3D28CCAC6DA9BC82427CA2A80F8F0832409E02C800442F4D617FF31FDABF0FD2CA8E6FFD73B10D048328EADB9F1248B3F9288034017A6DF32387F6A3A5A9A935AC4103FAE1B65BBF888B3E3510DD0AF2BD16EA79E3D9B7FF10AA163DD631E6969BBE80CD';
wwv_flow_imp.g_varchar2_table(22) := '5B7760E77BF6D3DEDB3EB6047AF7ED0F1FCF0DA45C5B0A206574DEDB30118FE3D0079DD7413DFC6029FA15F7F25EA00E223A5D00E3FE6774EB566F6FDE86CD5BB753020E183A19420138A164C818FB84DF9143075AA32D2EEA8DAAEF4D3024F233C33C97';
wwv_flow_imp.g_varchar2_table(23) := '00EC919BDEDD8A2DDB3A2FF7F0070328EA3B80470229549B0248019A5737693CF1118E1D6E680D6FD8D0C1F8FE847BBD1A6AD2B8CE2780B31D09500249919E750005901A374F6ED578FC188E1D69BB19F2C2A183F150160B8047029969410A20331C3D31';
wwv_flow_imp.g_varchar2_table(24) := '4BAE09E09C47027DFAC3E7F77BA2265E0F8202F07A85BA105F2E0AE0AC1208D8E704280127AD430138A164C8985C150025907A835200A9B3F3DC96B92C004A20B576A40052E3E6C9AD725D00AD12D8B21D9BB774DEDC66DF3FC09F03E76E570AC093BB72';
wwv_flow_imp.g_varchar2_table(25) := '6A4151006DDCCE9480BFED3A019E183CA3B12880D4F6354F6E45017496851270D6A21480334E468CA2004E2D132590BC6D2980E48C8C1941019C59AAB349C0BE81C8EFE7BB636C5A148031BB77F2402980B3333A5D02F6B980A27E940005907C9F326A04';
wwv_flow_imp.g_varchar2_table(26) := '0570EE729D7124100CA04FBF818050F2AC1ACFF6118F003C5B9AAE07964D02F8F0A313983667710784AF8EB919F6B301D3F99C2E816E3D7BA147AFDEE94C69FCB61480F125EC4CE0E4BB014DBF19C8CEEAA1EA1A1C3FD1D89AE017AEBB16C5BDD37FB6C1';
wwv_flow_imp.g_varchar2_table(27) := 'C677B762EBC7B712DB42E9376848167540D753A100BACECCB35B649B007EFDEA5FF1AB3FBCD6CABBA8A837AEFEF4E5E8DEBD5B5AFCED07A4BEF89B751D73145F30B0F5C942B9FAA100B2A8F2D92680583C8E1FCD7F14478E76BEF0B957AF1E0806D2DB61';
wwv_flow_imp.g_varchar2_table(28) := 'EDF9DA1F93DEABA80F0ABA75CFA22EE85A2A1440D778797A74B609C086BD65E75E2C5DB106CD2D2DAEB0EF59548CC26E3D5C99DB8449290013AAE430C66C3A097872CA0D478F61F9AAE7B16B77E6DF614901F0BD000E772FEF0FCBC6238093A91F3C7C14';
wwv_flow_imp.g_varchar2_table(29) := 'BBEB0FE2C0C1B6A71EA5FA79F52FFFE8F85941015000A9F691E7B6CBD623804C83FEC9B2A7B17357DBE3C529000A20D3FDA56D3E0AC0197A0AA09313CF0138EB1923465100CECA44015000CE3AC5B0511480B38251001480B34E316C1405E0AC60140005';
wwv_flow_imp.g_varchar2_table(30) := 'E0AC530C1B4501382B1805400138EB14C3465100CE0A46015000CE3AC5B0511480B38251001480B34E316C1405E0AC60140005E0AC530C1BE535013CFB9BD7B07EE3BBB8FD4BA370F515977886E64FEA9EC2CEF7F6B6C6C30B81782190671A33DD40BC24';
wwv_flow_imp.g_varchar2_table(31) := '80E8D32FE0DF1BDF6D4DA97BB742CC0B95A79B5EC6B69F57F714765000AD3C792150C6DA4AFF445E10403C91C0F2D52FE1AD4D9B3B80DC78DD6771F7976FD20FE8E3087804C09F009E69C64C06A25B00F6CE5FB7F2796CDCDCF9669ECB2F198E09F7DD86';
wwv_flow_imp.g_varchar2_table(32) := '60E0EC6FEB6D6C6EC1BA3FFF1DBBF6A477A7DFD0C10331FA86CFA1203F2F29520A800248DA24260ED02980583C81654F756DE7B719AF7BFD9FF8E5AF3B9FD0930EF73BC78EC64D23AF4A3A05054001246D121307E81280FDCD1F5DB9169B366FEFC0D6F6';
wwv_flow_imp.g_varchar2_table(33) := 'CD3F0EC1C0F99FBFFFE6C62D78ECE9B519C13DFE1B77E0AACB86279D8B7F05A00092368989037408C0DEF96B57AEC5DB67ECFCE73EEC3F9DEDA6AD3BB1E7FD8369211F36B83F2EB9D0D9033E7912900248ABD9BCBAB16A01D887FD4B9E7C0E9BB7EDECF2';
wwv_flow_imp.g_varchar2_table(34) := '37BF4E863C02A00074F69F6B6BAB1480A93BBF0D9F02A0005CDB09754E9CAA00B6ECDA0B69598E0FA19B6331D4AE7C1E9BB7EE38ED9BDFF961BF4E4E3C094801E8EC3FD7D64E45007FDBF00E9E78E6C5D698467E7604BE79FB2D1038F71B78EC9DBFE689';
wwv_flow_imp.g_varchar2_table(35) := '67B17DE76EA30EFB4F86CE23000AC0B59D50E7C4A908E09537D663CD4BBFEF08FB7C12C8869D9F3F014EED505E09A8738FCDF0DAA908C0DEA9E72F5F8DDD7B3B2FC4B9E19ACFE0DE71379F125D734B1C8B57ACC1B633BEF9D33FEC3FD1D48CFA830D69D1';
wwv_flow_imp.g_varchar2_table(36) := '18D0B718DD0AF21DCDC19F003C0270D428A60D4A4500768EF60EB8E8F15F60F7DEFA8E94AFBFE62ADC376E74EBFFDB3B7FCD8A356739EC4F7FE7DFB1A71EF36A9F4C1BB57DBDC17727DC87A19FEC9F742E0A800248DA24260E48550076AEC71B9BB0E0D1';
wwv_flow_imp.g_varchar2_table(37) := '55D8577FE01409DC396614224FACC18E8F1FA36DFF63B2CB7BBBC2EEE557DEC0CBEBFED8954DCE3976EC2DA330E6C66B92CE45015000499BC4C401E908C0CEF7A3134D98FFE82AD47FD02981C2C27C34363677E0C8E4CE6F4FBA7D773D963FF51C8E1E3B';
wwv_flow_imp.g_varchar2_table(38) := '9E16F2E2A2DE187FCF381E01749122CF017411989787A72B8036093462FEF255A8DF7FE695794E2FEFF532233B36FE158047005EEFD194E2CB8400DA25302FBA12070E75BE822B5B767E0AE0D4D6E211404ABB9A3737CA9400ECECEC43F2058FADC6FE03';
wwv_flow_imp.g_varchar2_table(39) := '8770C5A51763FCBDF68D3D67BFA5D79B34CE1D15CF01F008C0B49E75146F2605602FD8FEE7B98B060F74B4BE298328000AC0945EED529C9916409716376830CF01500006B5ABF350290067AC28000AC059A718368A027056300A800270D629868DA2009C';
wwv_flow_imp.g_varchar2_table(40) := '158C02A0009C758A61A328006705A3002800679D62D8280AC059C128000AC059A718368A027056300A800270D629868DA2009C158C02A0009C758A61A328006705A3002800679D62D8280AC059C128000AC059A718368A027056300A800270D629868DA2';
wwv_flow_imp.g_varchar2_table(41) := '009C158C02A0009C758A61A3BC2680677FF31AD66F7C17B77F6914AEBEE212CFD0E4CD401480679A319381784900D1A75FC0BF37BEDB9A5EF76E8598172ACF64AA69CDC5578351006935905737F68200EC77052E5FFD12DEDAB4B903D38DD77D16777FF9';
wwv_flow_imp.g_varchar2_table(42) := '26CF60E3110005E09966CC6420BA0560EFFC752BBBF68AF0C6E616ACFBF3DFB16B4FE763C953613274F0408CBEE17328C8CF4BBA39054001246D121307E81480FDAEC0654F756DE7B719AF7BFD9FF8E5AFD76504F79D6347E3A69157259D8B02A0009236';
wwv_flow_imp.g_varchar2_table(43) := '8989037409C0FEE68FAE5C8B4D67BC22DC7E8C58E0BC28DFDCB8058F3DBD3623B8C77FE30E5C75D9F0A473F1AF001440D2263171800E01D83B7FEDCAB578FB8C9DDFF94B43366DDD893DEF9FF914E2AED460D8E0FE8E5F6ECA93801440577ACB98B1AA05';
wwv_flow_imp.g_varchar2_table(44) := '60EA2BC27904400118B35377255095023075E7B7795200144057F62B63C6A62A802DBBF6425A96E34368FB85A2B52B9FC7E6AD3B3AD864FA8D416E42E749400AC0CDFED236772A02F8DB8677F0C4332FB6C67CBE5783B727950DAF08E7110005A06D2775';
wwv_flow_imp.g_varchar2_table(45) := '73E15404F0CA1BEBB1E6A5DF7784753E0964C3CECF9F00A77620DF0CE4E61EA978EE540460EFD4F397AFC6EEBD9D17E2DC70CD6770EFB89B4F89DE7E45F8E2156BB06DE7EE8C1FF6B7BF80241D5C03FA16A35B41BEA329F8138047008E1AC5B441A908C0';
wwv_flow_imp.g_varchar2_table(46) := 'CED1DE01173DFE0BECDE5BDF91F2F5D75C85FBC68D6EFD7F7BE7AF59B106DB5DD8F977ECA9C7BCDA27D3466D5F6FF0DD09F7F1EDC05D24C923802E02F3F2F0540560E774BCB1090B1E5D857DF59DAF06B72570E79851883CB1063B76EDC9F837BF3DE1CB';
wwv_flow_imp.g_varchar2_table(47) := 'AFBC8197D7FD312358C7DE320A636EBC26E95C3C02E01140D2263171403A02B0F3FDE84413E63FBA0AF51F744AA0B0301F8D8DCDAEECFCF6A4DB77D763F953CFB5BE8C349D4F71516F8CBF671C8F00BA089147005D04E6E5E1E90AA04D028D98BF7C15EA';
wwv_flow_imp.g_varchar2_table(48) := 'F79F79655EB6BC229C7F05E0118097F7E39463CB8400DA25302FBA12070E1D3EED9B3FF9B5FD2907AF70430A800250D86EEA96CA9400EC88ED43F2058FADC6FE038770C5A51763FCBDF6CEEF57978C8B2BF11C0005E0627BE99B3A9302B0B368FFF3DC45';
wwv_flow_imp.g_varchar2_table(49) := '8307EA4BCA859529000AC085B6D23F65A605A03F237722E04F000AC09DCED23C2B05E0AC00140005E0AC530C1B4501382B1805400138EB14C3465100CE0A46015000CE3AC5B0511480B38251001480B34E316C1405E0AC60140005E0AC530C1B4501382B';
wwv_flow_imp.g_varchar2_table(50) := '1805400138EB14C3465100CE0A46015000CE3AC5B0518D273EC2B1C30DAD510F1B3A18DF9F70AF6119A809776EDD4AEC7A6F5FEB623D8B8A51D8AD879A853DB80A6F06F26051520DA9A5B909470EEE6FDDBC4F716FCC7A7042AA5365F576D37F528BA347';
wwv_flow_imp.g_varchar2_table(51) := '8FB5E6D8BBEF05C8CB2FC8EA7CCF971C059045A5B71FEC79E0FDCEFBF61F7EB014FD8A7B655186E9A7527FF0307EBC6079C744FD060D811022FD890D9D810230B470E70AFBC3C307D174E244EB3F0F1AD00FB78FF9222E1A3208850EDE999765284E49C7';
wwv_flow_imp.g_varchar2_table(52) := '7ED681FDF4A1E77FF70ADEFFF8A12705DDBAA357519F6C4E3B696E14405244660DB02C0B873EB01FF32DCD0A5C71B43E9F0FC5FD07C1FE6F2E7F28802CACBE7D2EE0C38683B065C0CF9904EC9DFE137DFA2198E7EC21A2D9CC9002C8D2EADA3BFFB1230D';
wwv_flow_imp.g_varchar2_table(53) := '68696A84943C1AB0CB2C7C0279F985E8D9BB38E7BFF9DBDB9E02C852019C9C56221E432291C8814CCF9DA2DFEF873F10CC6906674B3EAB043069F6B24BFCD27A97552601127046405AE2E29A9925DB9C8D4E7D9492BFB394CFAA1B2E7C726BEA61724B12';
wwv_flow_imp.g_varchar2_table(54) := 'C82D023E9FBC70E1F4B29D6E67AD440053E6D40EB32CD1F9C64AB7B3E2FC24603881B84C7C6A69E5A4CED73DB9948F12014CAC5A322420FCEFB99403A72581AC23E08318B43054D2F95E38973254228029D575032DC8B68BBCF9210112484A202F4FF6FF';
wwv_flow_imp.g_varchar2_table(55) := 'E943656DD78FBBF8512380F082DE56B0B0F361F62E26C4A949201B08F8628D450BC3538FB89D8B120184C3CFE435041B3ADF63E576569C9F040C27501C2BCE0F87EF6A713B0D2502B093A8A88E3601E0255E6E5794F3670381E648A854C9AD900A0550B7';
wwv_flow_imp.g_varchar2_table(56) := '139043B3A13ACC8104DC252076454225C3DC5DA36D76850288BE01E05A1549710D12309B807C2D122A1BA522079502781EC0381549710D1230998014F845CD8CD2AFABC84199002657471F91C00F5424C53548C064020298BB28543A4D450ECA0450515D';
wwv_flow_imp.g_varchar2_table(57) := 'FB7540AC529114D72001B309C87B22A1B2D52A725026800766D7FD974FCAB75524C53548C064029610972D9E51F28E8A1C9409201C0EFB1A8203620072FB512F2AAACA354C2670A23856DF331C0E2B796A8C3201D815A9A88EDA56BBD4E4EA3076127099';
wwv_flow_imp.g_varchar2_table(58) := 'C05F23A1D2912EAFD131BD520194CF8EAE161277AB4A8EEB908069040444DDA25049A9AAB8950AA0A22A5A0A815A55C9711D12308E804459A4B234AA2A6EA502289FBB7CB08827ECDB8295AEAB0A26D721813409482B101BBCF807E5CAEE9C55BE235654';
wwv_flow_imp.g_varchar2_table(59) := '45D74360449AA0B83909641F01890D91CAD22B5526A65C00BC20486579B9964904545E00D4CE45B900A6CCAA1D65F9C42B261586B192800A02525A9FAFA99C68DF33A3ECA35C0013EAEA820507B18577062AAB31173283C07BC5B1FAE1E17038AE325CE5';
wwv_flow_imp.g_varchar2_table(60) := '02B093ABA8AE0D03E2472A13E55A24E06D02F2E148A82CAC3A462D029854B578A85F04ECA7046B595F3564AE47024908C4E117C323D34A943F3857DB0E585E1DFDAD006E656B900009E08548A8F4361D1CB40980270375949B6B7A9180CF925F5C38B3EC';
wwv_flow_imp.g_varchar2_table(61) := '551DB16913809D2C8F0274949C6B7A8980047E57132AFD92AE98F40AE091E80891C07A5DC9735D12D04DC04A884F2FFE61C95BBAE2D02A80B6BF0844F9A8305DD5E7BABA0968FBEDDF9EB876014C9DB3E4E284E5FF17801EBAABC1F549402181E3D21223';
wwv_flow_imp.g_varchar2_table(62) := '54BC01F87C39691740EBB980AABA2942C8050AE1732912D04B40F15D7FE74AD61302F8DF679EF10FDCD2609F05BD416F55B83A09B84F4000AF2F0A957AA2D73D21001B397F0AB8DF785CC113043C71E8EF9973002797647255ED1D528867F8DC404F342A';
wwv_flow_imp.g_varchar2_table(63) := '83C83C010B52DE19A92C5B9BF9A9539BD1334700EDE157CCAE9B0629E7A4960EB72201EF1290524CADA92C59E8A5083D27001B4E4555F471087CC74BA0180B09A449605124543A25CD3932BEB92705D076CBB07C19C0E88C67CC0949403D81B5C5B1FA3B';
wwv_flow_imp.g_varchar2_table(64) := '553DEABB2BE9795200760213C275DD0A83F2E712F85A5712E25812F01881179A62E2DE65E192131E8BAB351CCF0AA0353A29C5E4EABA1F4B814A2FC2634C249084C09CC88C921084905E25E56D017C4C6D7275F45B12781C80DFAB201917099C44A0454A';
wwv_flow_imp.g_varchar2_table(65) := '797F4D65D9535EA76284006C889367D75D2BA55CC1370B79BDA5723C3E81B72C0BF72FAE2CFD8709248C11800DF3DBE19F15F40A364D03C40C0041130033C69C211003E4234D7D7DB3969594D8EFC034E2639400DA894E9ABDEC12BFB47E0A60AC119419';
wwv_flow_imp.g_varchar2_table(66) := '643613B07FDF3FE7F725A62F983E69AB69891A298076C80FCCAEBDDE2FC55C095C6F1A78C66B3E0129F02A84FC6ECDF432FB6E56233F460BA09D7879D5D29102FE8910F22E00F9465682419B42A01902CF5A90B58B6794BD6E4AD0E78A332B04D09EDC83';
wwv_flow_imp.g_varchar2_table(67) := 'E1BABEB13CF96D48D86F571D6E7A7118BFA7086C879075C116DFE3FF172E39E8A9C8D20826AB04703287C9D5B5B74A88AF4A60AC0086A4C1889BE6280109ECF641FE0A106B17854AFF908D18B256002717ABFC91E80858182B64EBA5C55703E89E8DC564';
wwv_flow_imp.g_varchar2_table(68) := '4E691338FE9F13CB6F02629D0FE2A585A10959FFBCCA9C10C0E96D3175CED28BE2D277A5CFC208D9F6A6E2A180BC001083D26E214E600001B90F10FB01EC12121B2C1F36202136E87E3C970E70392980F3812E8F44F2FD0D89C216E41514040A832D3211';
wwv_flow_imp.g_varchar2_table(69) := 'F0E52702328EA04F5A8138FC01BF2F416E3ABA35C99A09CB2F0348C42DE18B8B006256B33F9E27FCF1A678632C0F2D4D89627F634D4545B30743D716121B591B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A';
wwv_flow_imp.g_varchar2_table(70) := '401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C';
wwv_flow_imp.g_varchar2_table(71) := '02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA095000FA6BC00848401B010A401B7A2E4C02FA09FC3F';
wwv_flow_imp.g_varchar2_table(72) := '66D32FD3249AACD50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(66101944009399679624)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD799455E599EFF1E7549D53A706AA8A9A980769440CA062D4987477B43BB9AD40904919222CC48C1D7BF5';
wwv_flow_imp.g_varchar2_table(2) := '75ADBB5677FEE87FEEEAD5B1D3B787983804A208A880281013357D73D37646134144633017B40401A10A6A9EA809CEB9F73D7445D13AB5F73EB5F7D9EF7EDFEFC94A56AFE6DDEF7E9FCFF3AE55BFDA7B9F5DB1FFFE8D8D69E183000208208000025609C4';
wwv_flow_imp.g_varchar2_table(3) := '080056F59B62114000010410C8081000D80808208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D800002082080808502';
wwv_flow_imp.g_varchar2_table(4) := '04000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D8000020820808085020400';
wwv_flow_imp.g_varchar2_table(5) := '0B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B';
wwv_flow_imp.g_varchar2_table(6) := '4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC9';
wwv_flow_imp.g_varchar2_table(7) := '0820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820';
wwv_flow_imp.g_varchar2_table(8) := '800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC908208000';
wwv_flow_imp.g_varchar2_table(9) := '02081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC9082080000208';
wwv_flow_imp.g_varchar2_table(10) := '1000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000';
wwv_flow_imp.g_varchar2_table(11) := 'D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D803';
wwv_flow_imp.g_varchar2_table(12) := '08208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D8030820';
wwv_flow_imp.g_varchar2_table(13) := '8000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000';
wwv_flow_imp.g_varchar2_table(14) := '020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D803082080000208';
wwv_flow_imp.g_varchar2_table(15) := '58284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D8030820800002085828';
wwv_flow_imp.g_varchar2_table(16) := '4000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000';
wwv_flow_imp.g_varchar2_table(17) := 'B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0';
wwv_flow_imp.g_varchar2_table(18) := 'E9948C00020820800001803D80000208208080850204000B9B4EC90820800002081000D80308208000020858284000B0B0E9948C00020820800001803D100D81745A060707E47CE6BF8372E1FCA09C3F7F5E52A90B129358346A6095AE05D29296828242';
wwv_flow_imp.g_varchar2_table(19) := '298CC7251E4F483CA1FE5B24894491488C7EBB8664200223081000D81E5A0BA4532939D7DD2503FDBD991FF6A90B2949A7D35AAF99C5F92F108BC524565020058585924C9648697985A8FF1F1F0410C85D800090BB1D47062CA07EDBEF6C6BC9FCC6CF07';
wwv_flow_imp.g_varchar2_table(20) := '810F0AA82B0215553599AB027C104020370102406E6E1C15A0404AFDD6DFD521BDE7BA259DE2B7FD00A9233D75AC20262565E5523AA6420A0A0A225D0B8B47200C01024018EA9C33ABC085F3E7A5ABBD4506FAFB5142C09540513229632AAB33CF09F041';
wwv_flow_imp.g_varchar2_table(21) := '0001F7020400F7568C0C5A209D96D6A6462EF907ED6CE0FCEA0AC0D8DAF18400037B4B49C109100082B365668F02DD1D6D9907FEF820908B800A0195357592284AE67238C720609D0001C0BA96EB59B07AE04FFDF62F2E6FF9AB27C00BE385924C24324F';
wwv_flow_imp.g_varchar2_table(22) := '86F3899080FA16472C2DE77AFAE4422AE5EBC2D59EA8A8AA2504F8AACA64A60A10004CED6C84EA525FF56B6F392B8303038EAB9E3C69825C3D77B6CC9A3E59C6D78CCD8C4FF1B54047379D06C40B0BA5B4B848F6FFEE2DD9BEE7F91143DF0DF3E74A5B47';
wwv_flow_imp.g_varchar2_table(23) := '97349E6D92EE9E5E7765C444AAEB26723BC09D16A32C16200058DC7C5D4AEFEDE992AEF6B61197535858281FBF66AEDCF6D93F91DAB1E5BA2C9D758C42A0A9BD53EEFBCE63D2DF3F7CF05397F4177EE6D3992B3C172E5C90E327DF9337DF7AC7D5552275';
wwv_flow_imp.g_varchar2_table(24) := '8548DD0E284A168F62851C8A80D9020400B3FB1B89EADA9ACFC8E0084FFDABAF7BAD5A72ABDC7CC3D591A88745BA13387EBA49EE7F64BBF467B9F2A39EEA5FF4D99B322F001AFA34B7B4C9FE83BF954117EF8650C1616C4D1DEF0A70D70E4659284000B0';
wwv_flow_imp.g_varchar2_table(25) := 'B0E95A959C4E4BF399D392BA7021EBB26EFE931B64C52D374922CEBD7EAD7A37CAC51C3F7D56EE7F6447D60090282A92852A007CE88D7FADED9DF2F22B070901A3F4E770040800EC815005D43BFD5BCF36667DBD6F71B248FEE7FFF88A548C290D759D9C';
wwv_flow_imp.g_varchar2_table(26) := 'DC7F017701E0E6615FFDAF9E0BD877E035E977F1BE08752BA1A2BA96DB01FEB79019232E4000887803A3BEFCBE733D99D7FD66FBDCF2E77F2CCBFEDB9F46BD4CD63F8CC06802809AAEBDA35B7EF3CA011918707E55B4BA8D54553B810703D989087C4080';
wwv_flow_imp.g_varchar2_table(27) := '00C0760855A0ABBD557A7BBA875D434161816C58799B5C7FD5EC50D7C8C98311186D0050AB52B703F61D38E82A04F04C40307D64D6E80A1000A2DB3B2356DE7AB621EB9BFFEA6AAB64FD1D8B65E6D48946D44A11970AF811002E86800ED9F7EAEB3290E5';
wwv_flow_imp.g_varchar2_table(28) := 'DB041F3CAB7A4F40F9D81A6E07B0191110110200DB205481A6D327B3DEFF9F3963AAAC5BBEF00FDFF70F75A19CDC7701BF0240E6764067B7FC66BFCBDB01B19854D5713BC0F7863261E4040800916B99590B1E2900CCFAA369F2D5752BA4F4FF3F08C8C7';
wwv_flow_imp.g_varchar2_table(29) := '3C013F03402EB7032AAB7963A079BB8A8ABC081000BC6831D677819102C01533A7CB5FADBF5D12F1B8EFE765C2F005FC0E00AAA296D676D97FF07557CF041426E2525955CB7B02C2DF0AAC202401024048F09CF6A20001C0DE9D10440018BA12F0F2FE57';
wwv_flow_imp.g_varchar2_table(30) := '65F0FC7947DC8B0F068EE3DB018E520C30518000606257235413012042CDF279A94105808B21A043F61D5057029CFFBE047F40C8E7C6325D64040800916995990B250098D95737550519003221A0AD435E3EF09AAB370616C6E3A29E09882778DEC44DEF';
wwv_flow_imp.g_varchar2_table(31) := '1863860001C08C3E46B60A0240645B37EA85071D00FE703B80D7068FBA574C60A60001C0CCBE46A62A0240645AE5FB42F3110086AE0464DE13E0EA76405C2AAA6A245194F4BD5E264440370102806E1DB16C3D0400CB1AFE8172F315002E5E09E89097F7';
wwv_flow_imp.g_varchar2_table(32) := '1FE4C1407BB71B950F234000605B842A400008953FD493E73300BC7F25E035575F1154DF0EE03D01A16E0F4E9E070102401E90394576010280BDBB23DF014049F39E007BF71B957F548000C0AE08558000102A7FA8270F23000C5D0978593D18E8F23D01';
wwv_flow_imp.g_varchar2_table(33) := '55B5E3457D4B800F02A60910004CEB68C4EA210044AC613E2E37AC00E0F576807A4F4065751D5F11F4B1F74CA5870001408F3E58BB0A0280B5AD973003C0D0ED00F5ED80C1C141C7265C7C6DB00A0109C7B10C40202A020480A874CAD07512000C6DAC8B';
wwv_flow_imp.g_varchar2_table(34) := 'B2C20E00992B01EADB01AFB87B59907A30B0AA769C14C609012EDACB900808100022D0249397480030B9BB23D7A64300F07C3B803F2064EF8635B0720280814D8D524904802875CBDFB5EA12003CDF0E88C7656C4D1D5702FCDD0ECC168200012004744E';
wwv_flow_imp.g_varchar2_table(35) := 'F9BE0001C0DEDDA05300C8E576007F45D0DEBD6B4AE50400533A19D13A0800116D9C0FCBD62D000C5D09D87F50BD36D8F9C140F540A07A6D307F40C887CDC014A10810004261E7A4430204007BF7828E0160E89900B7EF09505F111C5BC37B02ECDDC5D1';
wwv_flow_imp.g_varchar2_table(36) := 'AE9C0010EDFE457EF50480C8B730E702740D00432160DFABEE5E1B7CF13D01E3F88A60CE3B8103C31220008425CF79330204007B3782CE0120B7DB01B584007BB773242B270044B26DE62C9A00604E2FBD56A27B00F07A3BE0E27B02B81DE0751F303E3C';
wwv_flow_imp.g_varchar2_table(37) := '01024078F69C992B0056EF81280480DC6E07F0DA60AB3776848A270044A859262E952B002676D55D4D510900176F07B4C9BE03AFBBFA0342EAB5C163AB794F80BB5DC0A83005080061EA736E9E01B0780F4429000C3D13B0EFC06BAE4200AF0DB6786347';
wwv_flow_imp.g_varchar2_table(38) := 'A8740240849A65E252B902606257DDD514B500F0872B01AFFE963F20E4AEC58CD25C8000A079834C5F1E01C0F40E67AF2F8A0160E84AC0CB070ECAF9F3171C9B97B91D50334E0A0BE38E63198040BE050800F916E77C97081000ECDD10510D005E6F0714';
wwv_flow_imp.g_varchar2_table(39) := 'F2B703ECDDE49A574E00D0BC41A62F8F00607A87CDBB02305451736B9BEC77793B20914C665E1BCC95007BF7BB8E95130074EC8A456B220058D4EC0F951AE52B0043A5B4B4B68BDBDB0145C9A48CAD1D6F6FC3A95C3B010280762DB16B410400BBFAFDC1';
wwv_flow_imp.g_varchar2_table(40) := '6A3301E0D11DD2DF3F302C42BCA848167DF62689C5625A23A910B0EFD5D75D3D18583EB64A4ACACAB5AE87C5D9234000B0A7D75A564A00D0B22D7959546353AB3CB2F307D270A669D8F3A907E83EF7D99B2556509097F58CE62499DB012EDE13A0C24CCD';
wwv_flow_imp.g_varchar2_table(41) := '84C95210819A46E3C1B1D110200044A34FC6AE9200606C6B1D0B6BEBE8965D2FBC286FBC7964D8B1B182987CE64F3F2563C69439CEA5C300B7B7039225255259552BA2F9950D1D4C5943B0020480607D99DD41800060EF16E9ED1F90BD3FFE85BCB4EF60';
wwv_flow_imp.g_varchar2_table(42) := '5684F957CF91E95326470629733BC0E9654131918AB135525C1A8D6013197C16EA598000E0998C03FC142000F8A919BDB95EFCCD6BB2E7F99F645D786D6DB5FCC927AE8B5461CD2D6DF2EBFDAF4A3A9DCEBA6E1E088C544B8D5D2C01C0D8D646A3300240';
wwv_flow_imp.g_varchar2_table(43) := '34FA14D42ADF3E7E5ABEF5C89322D97F56CAB5D7CC9369932706B58440E63D7EF294BCFEBBDF679D5BBD2AB876FC246E0304A2CFA46E0508006EA518178800012010D6C84CAA6E03FCDD3F6F92BEDEDEAC6B56CF027CF2BA6B655C5D4D64EA52BFFDFFEC';
wwv_flow_imp.g_varchar2_table(44) := '97BF91CEEE9EE1D71C13A91937510AE389C8D4C442CD13200098D7D3485544008854BB0259EC8EE7FF537EF59B038E735F3DF74AB96CDA14EDBF163854C891FAA372F8AD77B2D6C557021D5BCE8080050800010333FDC802040076C899E6367960DB1E69';
wwv_flow_imp.g_varchar2_table(45) := '6D6D75C4A8A91E2B53264D949AAA4A292D29D1330CC462924A5D90B34DCDF2CA6B87B2D6545C5A2A15EADB007C100849800010123CA7BD284000602728817FFFE52BF2DC8F7F3AE2B3001F918A891414146A09984EA5467C08502D3A9E4848F5B8683DDB';
wwv_flow_imp.g_varchar2_table(46) := 'A025368BCA59800090331D07FA214000F04331FA73F4F4F6C98E1FBE28AFBDF166F48B7159817AB6A16EE25497A3198680FF020400FF4D99D1830001C00396E1439BDA3AE53B5B9E91969616C32BBD589E7A2B60DD24028015CDD6B4480280A68DB16559';
wwv_flow_imp.g_varchar2_table(47) := '04005B3AEDAECE938DCD72FFE69DD27B2EFBB702DCCDA4FF280280FE3D327D850400D33BAC797D0400CD1B14C2F2DE3D7D569E7AEE4539F9DE7B924E8DF0828010D6E6E72909007E6A32572E0204805CD438C6370102806F94464DD4D8D22ECFFEC7AFE5';
wwv_flow_imp.g_varchar2_table(48) := 'E8D163D29DEDBBF411AF980010F1061AB07C0280014D8C7209048028772FD8B5AB97E91C6F6892DF1CFC9D1C78FD4DE9EDED0BF684799E9D009067704EF7110102009B2254010240A8FC9139792A9592B78E9F92C3F527E46C4B9BC4D4BB83D36951FF51';
wwv_flow_imp.g_varchar2_table(49) := '1FF5EF3ADD2E183C3F280D675AA4A3AB3BAB31012032DBCFD88512008C6D6D340A230044A34FBAAE72A43FB813DA9A632217CEA7E4D5436FC9E37B9ECF1A4C0800A1758813FF97000180AD10AA000120547E4E1EA040FFC0A0FCDDBF6C94733DC37FA381';
wwv_flow_imp.g_varchar2_table(50) := '0010203E53BB122000B862625050020480A06499376C8196F66EB9EFA1ADD27BEEDCB04B210084DD21CE4F00600F842A400008959F93072870A6A55DFED7C627B2BED3800010203E53BB122000B862625050020480A06499376C010240D81DE0FC4E0204';
wwv_flow_imp.g_varchar2_table(51) := '002721FE3D50010240A0BC4C1EA2000120447C4EED4A8000E08A894141091000829265DEB0050800617780F33B0910009C84F8F74005080081F232798802048010F139B52B0102802B260605254000084A9679C316200084DD01CEEF2440007012E2DF03';
wwv_flow_imp.g_varchar2_table(52) := '15200004CACBE4210A100042C4E7D4AE040800AE981814940001202859E60D5B800010760738BF930001C049887F0F54800010282F938728400008119F53BB122000B862625050020480A06499376C010240D81DE0FC4E0204002721FE3D50010240A0BC';
wwv_flow_imp.g_varchar2_table(53) := '4C1EA2000120447C4EED4A8000E08A894141091000829265DEB0050800617780F33B0910009C84F8F74005080081F232798802048010F139B52B0102802B260605254000084A9679C316200084DD01CEEF2440007012E2DF0315200004CACBE4210A1000';
wwv_flow_imp.g_varchar2_table(54) := '42C4E7D4AE040800AE981814940001202859E60D5B800010760738BF930001C049887F0F54800010282F938728400008119F53BB122000B862625050020480A06499376C010240D81DE0FC4E0204002721FE3D50010240A0BC4C1EA2000120447C4EED4A';
wwv_flow_imp.g_varchar2_table(55) := '8000E08A894141091000829265DEB0050800617780F33B0910009C84F8F74005080081F25E32795AD2924EA5A5A0A0207F27B5F84C04008B9B1F91D20900116994A9CB240004DF59F583E8C55FEE9323EF1CCF9CEC86F973E5A61BAF958A31A5C19FDCE2';
wwv_flow_imp.g_varchar2_table(56) := '3310002C6E7E444A270044A451A62E9300106C678FBD774636EF7C565ADB3B2E39D1DCD933E5AB6B9749BCB030D805583C3B01C0E2E647A4740240441A65EA320900C175F650FD71796CE7B3D2D7D73FEC49562FBD456EFEC4FCE01660F9CC0400CB3740';
wwv_flow_imp.g_varchar2_table(57) := '04CA270044A049262F9100104C777F7BF8986CDFFB8274F79CCB7A82695326C8BD77AF9192E2A2601661F9AC0400CB374004CA270044A049262F9100E07F77EB8F9F96EF3EF18CF4F60EFF9BFFD019A74C1C27F77E718D949514FBBF08661402009B4077';
wwv_flow_imp.g_varchar2_table(58) := '010280EE1D327C7D04007F1BFC66FD717974C75EE9EF1F749C78E9AD37CBAD37DDE8388E01B90910007273E3A8FC091000F267CD9986112000F8B72D5E3F724C76EC19F9B2FFD0D9C6D754C9DFDEB35E4A8A93FE2D80992E112000B02174172000E8DE21';
wwv_flow_imp.g_varchar2_table(59) := 'C3D74700F0A7C16F9F382D1B1FDF2DBDBD7D8E13969596C8DADB3F27F3AFFC23C7B15E06F40F0C4A6FFF80A45299370E7839342F630B0B0A25994C484951222FE72300E48599938C428000300A3C0E1DBD000160F486EA07CD371FDA2AFDFD038E9325E2';
wwv_flow_imp.g_varchar2_table(60) := '71F9C29DCBE59AD9331CC7BA1DD0D1DD232F1D78430E1DA997E6E636B787E57D5CBC302E63CA4BE5AA2B2F9785377F52E2F178A06B200004CACBE43E0810007C40648ADC050800B9DBA923D5F7FC1FD9B157DA3BBA1C272A2D29910DAB6F9379B32E731C';
wwv_flow_imp.g_varchar2_table(61) := 'EB76C0F15367E4C1AD4F4BCFB95EB78768316EDAA4F1B261F51299505B15D87A080081D132B14F0204009F209926370102406E6EEAA8774E36C8F79EDC235DDDD9BFEA3734BBBAECBF6AE9AD72C3BC2B723FE13047EE7AE145F9F9AF5FF575CE7C4D76FD';
wwv_flow_imp.g_varchar2_table(62) := 'FC39F285958B033B1D0120305A26F6498000E01324D3E4264000C8CDADFEC469F9AECB7BFE894442EE5EBD44E67F6C666E27CB72543A9D96FB37EF94B78FBDE7EBBCF99AACB2628CDCF7F5AF494C62819C920010082B93FA284000F01193A9BC0B1000BC';
wwv_flow_imp.g_varchar2_table(63) := '9BFDBEFE846CDBFD9C7475F5381E5C5A522C1BD62C9579974F771CEB75800A00DF7EEC2979EBE849AF876A319E00A0451B58448802048010F139B50801C0DB2E78E764A37CEFC9DDAE2EFB8F292B95554B6E91EB7DBEECFFC1156FDDFD23D9FFDA216F45';
wwv_flow_imp.g_varchar2_table(64) := '68327AF6AC1972EF869581AD862B0081D132B14F0204009F209926370102807BB796F64EB9EFC1ADAEBEEA579448C85DAB97C8B53E5FF6FFF06A7F7DF0F7F2E49EE7DD17A1C9C8645122F355C820C31101409366B38CAC0204003647A802040077FC271A';
wwv_flow_imp.g_varchar2_table(65) := '9B64D3137BA4ADBDD3F18092E262B95B5DF69FE5FF65FFE14EFE66FDBB72F08DC3D2D1D52D05B160EEA73B16ED6A405A62B198248A8AE4737FFEC732715C8DABA3721D4400C8558EE3F2254000C89734E719568000E0BC315A3BBAE45F373D216D1DDD8E';
wwv_flow_imp.g_varchar2_table(66) := '83D565FF954B6EF1FD697FC71333E0230204003685EE020400DD3B64F8FA08002337F8DD538DF2C096A75D5DF64F1615C9FA55B7057ED9DFF02DE95B790400DF2899282001024040B04CEB4E800090DDE9F0D113B265D773D2D5EDFCB47F717152BE78E7';
wwv_flow_imp.g_varchar2_table(67) := '72993B739A3B7846052E4000089C98138C528000304A400E1F9D000160783FF586BF4D4F3E239D5DCE2FF9295797FD97DE2AD7CF9D35BA6670B4AF0204005F39992C0001024000A84CE95E8000F051AB774F9D9107B6EC7277D93F5924EBEE582CD7CDB9';
wwv_flow_imp.g_varchar2_table(68) := 'DC3D3A23F3224000C80B3327198500016014781C3A7A0102C0A586878F9E942DBB7EE8EEB27F525DF65F26730378C9CFE83BCB0C0400F680EE020400DD3B64F8FA0800EF37F878C359D9B86D77E6EB744E1F75D97FD5D20572DD5C7EF377B20AEBDF0900';
wwv_flow_imp.g_varchar2_table(69) := '61C9735EB7020400B7528C0B44409700904AA7A5B3AB47CE5F48496D554520B58E346947578FDCF7C016E9EA71BEE75F9C4C665E62C30FFFBCB7C9D30909009EB8181C8200012004744EF9BE800E01A0B1B955B6ED7E414E359CCD2C6CE6F429B262D167';
wwv_flow_imp.g_varchar2_table(70) := '64EA84BABCB4AAA1A9551EDAFAB4B4BA78C94F3259245FBE73B9CCE1B27F5E7A339A93100046A3C7B1F9102000E44399736415083B0034B775CAC6ED7BE47443D3256BACABAD92D54B6E9539017FAD4EBDE4E7FE47774A736BBBE32E512FF959BD6C010F';
wwv_flow_imp.g_varchar2_table(71) := 'FC394AE9318000A0471F584576010200BB235481B003C0D33FFAA9FCECA5578635503F70BF76D74A9931797C2046EA5EFF371ED82ADD6E2EFB1727E5CE158BF8AA5F209D086652024030AECCEA9F0001C03F4B66CA4120CC00D0373028DF7A74BB9C3C75';
wwv_flow_imp.g_varchar2_table(72) := 'F1D2FF709FF231A5F28535CB64F68C29395497FD90C6A6D6CC57FDDA3ABA1CE7556FF8FBD2BA15BCE4C7514AAF010400BDFAC16A3E2A40006057842A10660048A552F2CF9BB6CBF1F71A4634A8A9AE94B52B16C99533A6FA62A5EEF57F7BF32E696A6D73';
wwv_flow_imp.g_varchar2_table(73) := '9C4F5D85F8FCF285BCDED7514ABF010400FD7AC28A2E152000B0234215083300A8C2F7FEFBCFE43F7EB5DFD1A0B2A24CFEFAEE353269947F41AEBDBB47FE513DEDDFEDFCB4BFFAAB7E9F5FB190CBFE8EDDD173000140CFBEB0AAF7050800EC865005C20E';
wwv_flow_imp.g_varchar2_table(74) := '00BD7DFDF26F8FEC94538DD96F030C018DAD1C235F597B875C36795C4E66EADB06EA0FFBB8F993BE4589847C69ED8ABCFD49DF9C0AE2A0110508006C10DD050800BA77C8F0F5851D0014EFB9DEBE4C08387DE6D26F020C473F7E5CB5AC5BBE48664E9BE4';
wwv_flow_imp.g_varchar2_table(75) := 'A9336D9D5D72FFE6A7A4A9D9E565FF650BE5DA39333D9D83C17A091000F4EA07ABF9A80001805D11AA800E014001B4B477CAC6C7F7C8291721A0A6AA42FE72FD4A99ECF27640574FAF7CF3E16DAE7EF32F2D299635CB16C8F5F3AE08B52F5E4E9E4EA7E4';
wwv_flow_imp.g_varchar2_table(76) := 'E0A1B7E470FDBBD2DED92DB1983A3AF33F5A7DD4BA8A8B8B64DAE449F2C9F973A5ACB438D0F5110002E565721F0408003E203245EE02BA04005541E607F543DBA4ADA3D3B1A0CAF232B967C36A993AA176C4B1CD6D1D72FFE69DD2DAE63C672291902FAF';
wwv_flow_imp.g_varchar2_table(77) := '5B21F322F4929F9EDE3EF9876F3FE6EAF5C58EA8791C505D592EF76C5835EA673A465A3201208F0DE554390910007262E320BF04740A00AA26F562A007B63C254D2DCE2FE69938BE56D6DFB158A64F1AFE9900F5929F071FDB25EADEBFD3473DED7FE78A';
wwv_flow_imp.g_varchar2_table(78) := '8532FFCA685DF6FFF12FF6C90F7EFC73A7F2B4FCF71BAFBB5AEE5AB120B0B5110002A365629F0408003E41324D6E02BA050055C58986267974C7F75DBD9D6F425D8D7C6DFDED52573DF6128033CD6DF21DF53D7F17AFF7554FFBAF59BE406E88D065FFA1';
wwv_flow_imp.g_varchar2_table(79) := '62BFB579A7BC7DF4646ECD0FF9A89AB115F2F77FF355890574BB820010728339BDA30001C0918801410AE8180054BDA7CFB6C877363F259DDD3D8EE5575755CA3D77AD944975D599B1271ACECAA627F7BAFAE19F88C72F5EF69F7599E379741B904EA733';
wwv_flow_imp.g_varchar2_table(80) := '0F36BE7D2C9A0140DDC6F9C6D7EF91828B0F2DF8FE2100F84ECA843E0B10007C06653A6F02BA0600554547778FFCCBA6EDD2E2E23DFD93C6D7C95FDCFC29516F0EDCB1F747AEFEB04F596989ACBB63B15C337B8637348D46EF7CEE27F2CB975FD36845EE';
wwv_flow_imp.g_varchar2_table(81) := '97F2F16B3E265F5A759BFB033C8E240078046378DE0508007927E7841F14D03900A8753634B7C9C6C7774B538BF3D7F762B198A8DF8ADD7CCA4A8A65D5D20572C355D179DA7FB8BA8E9E6C948D4FEC76F5F70CDCB8E46BCCF44913E4AED58B6542EDC5AB';
wwv_flow_imp.g_varchar2_table(82) := '36417C080041A832A79F0204003F3599CBB380EE014015D4D6D92DFFF4F0E3D2D9D5EDB9BEE10E88C7E3F29575B71BF3921F759BE4A5036FC8A123F572B6D9F9E1495F107398241E2F948AF2529977E52C5978D38DA2FA10E4870010A42E73FB214000F0';
wwv_flow_imp.g_varchar2_table(83) := '439139721688420050C59D686C9287B73CEDEA998091303297FD572E966BAE88EE65FF6CF5F50F0C4A6FFF80A452A62FD30100001D37494441546951FFD1ED53585028C964424A8A1279591A01202FCC9C641402048051E071E8E805A2120054A547DE3D';
wwv_flow_imp.g_varchar2_table(84) := '255B9FFA41CEDF79573FFC572D5197FD678D1E8E19B417200068DF22EB174800B07E0B840B10A500A0A48EBDD7280F6F7B467ACEF57A8253979BBFBC76855C7545F49EF6F7542883FF2040006033E82E4000D0BD4386AF2F6A0140B5E39D930DF2DD6DBB';
wwv_flow_imp.g_varchar2_table(85) := 'E55CAFBB10A07EF35FBFF2367EF81BBE973F5C1E01C0B28647B05C0240049B66D292A3180094FF1B47DE9527F73CEFF8F4BB7AC3DFAA25B744EADDFE26EDAF306B210084A9CFB9DD081000DC2831263081A806000572A8FEB83CB6F359E9EBEB1FD6475D';
wwv_flow_imp.g_varchar2_table(86) := 'F6FFE2DAE5463EF017D886306862028041CD34B4140280A18D8D4A59510E0043B703D45BFFBA3FF4C6C0F2F231B2EEF645725504DFF01795BDA3FB3A0900BA7788F51100D803A10A443D0028BC138DCDF2935FEC9323F5C732AF95BD6CFA54F9F427AE95';
wwv_flow_imp.g_varchar2_table(87) := 'B9974F0DD59693872B400008D79FB33B0B10009C8D1811A08009016088A7E7BF6E05941527031463EAA8081000A2D2297BD74900B0B7F75A546E5200D002944568234000D0A6152C248B000180AD11AA000120547E4E1EA0000120405CA6F6458000E00B';
wwv_flow_imp.g_varchar2_table(88) := '2393E42A4000C8558EE374172000E8DE21D64700600F842A400008959F9307284000081097A97D112000F8C2C824B90A10007295E338DD050800BA7788F51100D803A10A100042E5E7E4010A100002C4656A5F040800BE303249AE0204805CE5384E7701';
wwv_flow_imp.g_varchar2_table(89) := '0280EE1D627D0400F640A802048050F9397980020480007199DA170102802F8C4C92AB00012057398ED35D8000A07B87581F01803D10AA000120547E4E1EA0000120405CA6F6458000E00B2393E42A4000C8558EE374172000E8DE21D64700600F842A40';
wwv_flow_imp.g_varchar2_table(90) := '0008959F9307284000081097A97D112000F8C2C824B90A10007295E338DD050800BA7788F51100D803A10A100042E5E7E4010A100002C4656A5F040800BE303249AE0204805CE5384E77010280EE1D627D0400F640A802048050F9397980020480007199';
wwv_flow_imp.g_varchar2_table(91) := 'DA170102802F8C4C92AB00012057398ED35D8000A07B87581F01803D10AA000120547E4E1EA0000120405CA6F6458000E00B2393E42A4000C8558EE374172000E8DE21D64700600F842A400008959F9307284000081097A97D112000F8C2C824B90A1000';
wwv_flow_imp.g_varchar2_table(92) := '7295E338DD050800BA7788F51100D803A10A100042E5E7E4010A100002C4656A5F040800BE303249AE0204805CE5384E77010280EE1D627D0400F640A802048050F9397980020480007199DA170102802F8C4C92AB00012057398ED35D8000A07B87581F';
wwv_flow_imp.g_varchar2_table(93) := '01803D10AA000120547E4E1EA0000120405CA6F6458000E00B2393E42A4000C8558EE374172000E8DE21D64700600F842A400008959F9307284000081097A97D112000F8C2C824B90A10007295E338DD050800BA7788F51100D803A10A100042E5E7E401';
wwv_flow_imp.g_varchar2_table(94) := '0A100002C4656A5F040800BE303249AE0204805CE5BC1F9796B4A45369292828F07E3047781620007826E3803C0B1000F20CCEE92E15200004BF23D40FA2177FB94F8EBC733C73B21BE6CF959B6EBC562AC694067F728BCF4000B0B8F911299D00109146';
wwv_flow_imp.g_varchar2_table(95) := '99BA4C0240B09D3DF6DE19D9BCF359696DEFB8E4447367CF94AFAE5D26F1C2C2601760F1EC04008B9B1F91D20900116994A9CB240004D7D943F5C7E5B19DCF4A5F5FFFB02759BDF416B9F913F3835B80E53313002CDF0011289F0010812699BC44024030';
wwv_flow_imp.g_varchar2_table(96) := 'DDFDEDE163B27DEF0BD2DD732EEB09A64D9920F7DEBD464A8A8B825984E5B312002CDF0011289F0010812699BC440280FFDDAD3F7E5ABEFBC433D2DB3BFC6FFE43679C32719CDCFBC535525652ECFF22985108006C02DD050800BA77C8F0F51100FC6DF0';
wwv_flow_imp.g_varchar2_table(97) := '9BF5C7E5D11D7BA5BF7FD071E2A5B7DE2CB7DE74A3E33806E4264000C8CD8DA3F2274000C89F35671A468000E0DFB678FDC831D9B167E4CBFE43671B5F53257F7BCF7A29294EFAB70066BA448000C086D05D8000A07B870C5F1F01C09F06BF7DE2B46C7C';
wwv_flow_imp.g_varchar2_table(98) := '7CB7F4F6F6394E58565A226B6FFF9CCCBFF28F1CC77A19D03F3028BDFD03924A65DE38E0E5D0BC8C2D2C2894643221254589BC9C8F009017664E320A0102C028F03874F4020480D11BAA1F34DF7C68ABF4F70F384E9688C7E50B772E976B66CF701CEB76';
wwv_flow_imp.g_varchar2_table(99) := '4047778FBC74E00D3974A45E9A9BDBDC1E96F771F1C2B88C292F95ABAEBC5C16DEFC4989C7E381AE810010282F93FB204000F001912972172000E46EA78E54DFF37F64C75E69EFE8729CA8B4A44436ACBE4DE6CDBACC71ACDB01C74F9D9107B73E2D3DE7';
wwv_flow_imp.g_varchar2_table(100) := '7ADD1EA2C5B86993C6CB86D54B64426D5560EB21000446CBC43E0910007C82649ADC040800B9B9A9A3DE39D920DF7B728F747567FFAADFD0ECEAB2FFAAA5B7CA0DF3AEC8FD84C31CB9EB8517E5E7BF7ED5D739F335D9F5F3E7C817562E0EEC740480C068';
wwv_flow_imp.g_varchar2_table(101) := '99D8270102804F904C939B00012037B7FA13A7E5BB2EEFF9271209B97BF51299FFB199B99D2CCB51E9745AEEDFBC53DE3EF69EAFF3E66BB2CA8A3172DFD7BF26318905724A024020AC4CEAA30001C0474CA6F22E4000F06EF6FBFA13B26DF773D2D5D5E3';
wwv_flow_imp.g_varchar2_table(102) := '78706949B16C58B354E65D3EDD71ACD7012A007CFBB1A7E4ADA327BD1EAAC5780280166D6011210A100042C4E7D42204006FBBE09D938DF2BD2777BBBAEC3FA6AC54562DB945AEF7F9B2FF0757BC75F78F64FF6B87BC15A1C9E8D9B366C8BD1B5606B61A';
wwv_flow_imp.g_varchar2_table(103) := 'AE000446CBC43E0910007C82649ADC040800EEDD5ADA3BE5BE07B7BAFAAA5F51222177AD5E22D7FA7CD9FFC3ABFDF5C1DFCB937B9E775F842623934589CC5721830C4704004D9ACD32B20A1000D81CA10A1000DCF19F686C924D4FEC91B6F64EC7034A8A';
wwv_flow_imp.g_varchar2_table(104) := '8BE56E75D97F96FF97FD873BF99BF5EFCAC1370E4B4757B714C482B99FEE58B4AB016989C56292282A92CFFDF91FCBC47135AE8ECA7510012057398ECB970001205FD29C6758010280F3C668EDE8927FDDF484B475743B0E5697FD572EB9C5F7A7FD1D4F';
wwv_flow_imp.g_varchar2_table(105) := 'CC808F081000D814BA0B100074EF90E1EB23008CDCE0774F35CA035B9E7675D93F595424EB57DD16F8657FC3B7A46FE511007CA364A28004080001C132AD3B01024076A7C3474FC8965DCF4957B7F3D3FEC5C549F9E29DCB65EECC69EEE01915B8000120';
wwv_flow_imp.g_varchar2_table(106) := '70624E304A0102C02801397C74020480E1FDD41BFE363DF98C747639BFE4A75C5DF65F7AAB5C3F77D6E89AC1D1BE0A10007CE564B20004080001A032A57B0102C047ADDE3D75461ED8B2CBDD65FF6491ACBB63B15C37E772F7E88CCC8B0001202FCC9C64';
wwv_flow_imp.g_varchar2_table(107) := '1402048051E071E8E8050800971A1E3E7A52B6ECFAA1BBCBFE4975D97F99CC0DE0253FA3EF2C331000D803BA0B100074EF90E1EB2300BCDFE0E30D6765E3B6DD99AFD3397DD465FF554B17C87573F9CDDFC92AAC7F27008425CF79DD0A1000DC4A312E10';
wwv_flow_imp.g_varchar2_table(108) := '015D02402A9D96CEAE1E397F2125B5551581D43AD2A41D5D3D72DF035BA4ABC7F99E7F71329979890D3FFCF3DE264F27240078E262700802048010D039E5FB023A0480C6E656D9B6FB0539D57036B3B099D3A7C88A459F91A913EAF2D2AA86A6567968EB';
wwv_flow_imp.g_varchar2_table(109) := 'D3D2EAE2253FC964917CF9CEE53287CBFE79E9CD684E4200188D1EC7E6438000900F65CE915520EC00D0DCD6291BB7EF91D30D4D97ACB1AEB64A562FB955E604FCB53AF5929FFB1FDD29CDADED8EBB44BDE467F5B2053CF0E728A5C70002801E7D6015D9';
wwv_flow_imp.g_varchar2_table(110) := '050800EC8E5005C20E004FFFE8A7F2B3975E19D640FDC0FDDA5D2B65C6E4F18118A97BFDDF7860AB74BBB9EC5F9C943B572CE2AB7E81742298490900C1B832AB7F020400FF2C99290781300340DFC0A07CEBD1ED72F2D4C54BFFC37DCAC794CA17D62C93';
wwv_flow_imp.g_varchar2_table(111) := 'D933A6E4505DF6431A9B5A335FF56BEBE8729C57BDE1EF4BEB56F0921F4729BD061000F4EA07ABF9A80001805D11AA40980120954AC93F6FDA2EC7DF6B18D1A0A6BA52D6AE582457CE98EA8B95BAD7FFEDCDBBA4A9B5CD713E7515E2F3CB17F27A5F4729';
wwv_flow_imp.g_varchar2_table(112) := 'FD061000F4EB092BBA548000C08E085520CC00A00ADFFBEF3F93FFF8D57E4783CA8A32F9EBBBD7C8A451FE05B9F6EE1EF947F5B47FB7F3D3FEEAAFFA7D7EC5422EFB3B7647CF0104003DFBC2AADE172000B01B4215083B00F4F6F5CBBF3DB2534E3566BF';
wwv_flow_imp.g_varchar2_table(113) := '0D300434B6728C7C65ED1D72D9E4713999A96F1BA83FECE3E64FFA162512F2A5B52BF2F6277D732A888346142000B04174172000E8DE21C3D717760050BCE77AFB3221E0F4994BBF09301CFDF871D5B26EF92299396D92A7CEB47576C9FD9B9F92A66697';
wwv_flow_imp.g_varchar2_table(114) := '97FD972D946BE7CCF4740E06EB254000D0AB1FACE6A30204007645A8023A040005D0D2DE291B1FDF23A75C84809AAA0AF9CBF52B65B2CBDB015D3DBDF2CD87B7B9FACDBFB4A458D62C5B20D7CFBB22D4BE7839793A9D928387DE92C3F5EF4A7B67B7C462';
wwv_flow_imp.g_varchar2_table(115) := 'EAE8CCFF68F551EB2A2E2E92699327C927E7CF95B2D2E240D74700089497C97D102000F880C814B90BE812005405991FD40F6D93B68E4EC7822ACBCBE49E0DAB65EA84DA11C736B775C8FD9B774A6B9BF39C894442BEBC6E85CC8BD04B7E7A7AFBE41FBE';
wwv_flow_imp.g_varchar2_table(116) := 'FD98ABD7173BA2E671407565B9DCB361D5A89FE91869C904803C369453E5244000C8898D83FC12D02900A89AD48B811ED8F29434B538BF9867E2F85A597FC762993E69F86702D44B7E1E7C6C97A87BFF4E1FF5B4FF9D2B16CAFC2BA375D9FFC7BFD8273F';
wwv_flow_imp.g_varchar2_table(117) := 'F8F1CF9DCAD3F2DF6FBCEE6AB96BC582C0D64600088C96897D122000F804C934B909E816005415271A9AE4D11DDF77F576BE097535F2B5F5B74B5DF5D84B00CE34B7C977D4F7FC5DBCDE573DEDBF66F902B9214297FD878AFDD6E69DF2F6D193B9353FE4';
wwv_flow_imp.g_varchar2_table(118) := 'A36AC656C8DFFFCD572516D0ED0A0240C80DE6F48E0204004722060429A0630050F59E3EDB22DFD9FC947476F738965F5D5529F7DCB55226D55567C69E68382B9B9EDCEBEA877F221EBF78D97FD6658EE7D16D403A9DCE3CD8F8F6B1680600751BE71B5F';
wwv_flow_imp.g_varchar2_table(119) := 'BF470A2E3EB4E0FB8700E03B2913FA2C4000F01994E9BC09E81A0054151DDD3DF22F9BB64B8B8BF7F44F1A5F277F71F3A744BD3970C7DE1FB9FAC33E65A525B2EE8EC572CDEC19DED0341ABDF3B99FC82F5F7E4DA315B95FCAC7AFF9987C69D56DEE0FF0';
wwv_flow_imp.g_varchar2_table(120) := '389200E0118CE179172000E49D9C137E5040E700A0D6D9D0DC261B1FDF2D4D2DCE5FDF8BC562A27E2B76F3292B2996554B17C80D5745E769FFE1EA3A7AB251363EB1DBD5DF3370E392AF31D3274D90BB562F9609B517AFDA04F1210004A1CA9C7E0A1000';
wwv_flow_imp.g_varchar2_table(121) := 'FCD4642ECF02BA070055505B67B7FCD3C38F4B6757B7E7FA863B201E8FCB57D6DD6ECC4B7ED46D92970EBC21878ED4CBD966E787277D41CC619278BC502ACA4B65DE95B364E14D378AEA43901F024090BACCED870001C00F45E6C859200A01401577A2B1';
wwv_flow_imp.g_varchar2_table(122) := '491EDEF2B4AB670246C2C85CF65FB958AEB922BA97FDB3D5D73F3028BDFD03924AA545FD47B74F6141A124930929294AE465690480BC307392510810004681C7A1A317884A0050951E79F7946C7DEA07397FE75DFDF05FB5445DF69F357A3866D05E8000';
wwv_flow_imp.g_varchar2_table(123) := 'A07D8BAC5F2001C0FA2D102E40940280923AF65EA33CBCED19E939D7EB094E5D6EFEF2DA1572D515D17BDADF53A10CFE83000180CDA0BB000140F70E19BEBEA80500D58E774E36C877B7ED9673BDEE4280FACD7FFDCADBF8E16FF85EFE70790400CB1A1E';
wwv_flow_imp.g_varchar2_table(124) := 'C1720900116C9A494B8E620050FEBF3D724CB6EF79C1F1E9772EFB9BB45BBDD54200F0E6C5E8FC0B1000F26FCE193F2010D500A04A38547F5C1EDBF9ACF4F5F50FDB5375D9FF8B6B971BF9C01F9BD8598000E06CC48870050800E1FA5B7FF6280780A1DB';
wwv_flow_imp.g_varchar2_table(125) := '01EAAD7FDD1F7A636079F9185977FB22B92A826FF8B37E53FA044000F0099269021320000446CBC46E04A21E00548D271A9BE527BFD82747EA8F655E2B7BD9F4A9F2E94F5C2B732F9FEA868031860A10000C6DAC416511000C6A66144B3121000CB9F7FC';
wwv_flow_imp.g_varchar2_table(126) := 'D7AD80B2E264145BC19A7D162000F80CCA74BE0B10007C2765422F022605002F7533D67C010280F93D8E7A850480A87730E2EB270044BC812C3FAB000180CDA1BB000140F70E19BE3E0280E10DB6B83C0280C5CD8F48E904808834CAD46512004CED2C75';
wwv_flow_imp.g_varchar2_table(127) := '1100D803BA0B100074EF90E1EB230018DE608BCB230058DCFC88944E008848A34C5D2601C0D4CE521701803DA0BB000140F70E19BE3E0280E10DB6B83C0280C5CD8F48E904808834CAD46512004CED2C751100D803BA0B100074EF90E1EB230018DE608B';
wwv_flow_imp.g_varchar2_table(128) := 'CB230058DCFC88944E008848A34C5D2601C0D4CE521701803DA0BB000140F70E19BE3E0280E10DB6B83C0280C5CD8F48E904808834CAD46512004CED2C751100D803BA0B100074EF90E1EB230018DE608BCB230058DCFC88944E008848A34C5D2601C0D4';
wwv_flow_imp.g_varchar2_table(129) := 'CE521701803DA0BB000140F70E19BE3E0280E10DB6B83C0280C5CD8F48E904808834CAD46512004CED2C751100D803BA0B100074EF90E1EB230018DE608BCB230058DCFC88944E008848A34C5D2601C0D4CE521701803DA0BB000140F70E19BE3E0280E1';
wwv_flow_imp.g_varchar2_table(130) := '0DB6B83C0280C5CD8F48E904808834CAD46512004CED2C751100D803BA0B100074EF90E1EB230018DE608BCB230058DCFC88944E008848A34C5D2601C0D4CE521701803DA0BB000140F70E19BEBE9102C065D326CB573EBF4CC6569419AE4079260A34B7';
wwv_flow_imp.g_varchar2_table(131) := '75CA7D0F6F93BE73BDC396178BC5A46ED254134BA7A68808100022D2285397D972E6B45C387F7ED8F2C68FAB95F5B77F4E664C196F6AF9D465B0C099E636F9C6835BE5FCE0E0B05516C6E352337E92C10294A6BB000140F70E19BEBEF696B332D0D7376C';
wwv_flow_imp.g_varchar2_table(132) := '95A5A5C572E7B245F2F1B9971BAE4079260ABC7DE294DCFFC80E49A7D2C39657545C2C636BC699583A354544800010914699BACCEECE7639D7D599B5BC25B7FE992CB8E913A6964F5D060BFC7CFFEBB2EB07FF276B85A5E51532A662ACC10294A6BB0001';
wwv_flow_imp.g_varchar2_table(133) := '40F70E19BEBEFEDE73D2D1D62C32FC2F4932FBF2CBE4DEBB5719AE4079A609F40F0CCA634F3F27BFFBBFF5C3971613A9ACAA956449A969A5534F84040800116A96894BBD707E505ACF364A3A3D7C02500F4AFDD586D532E7F26926964F4D860ABCFAE65B';
wwv_flow_imp.g_varchar2_table(134) := 'F2F8D3CFCB6096E75BD4BEAE1E37410AE3094305282B0A0204802874C9E035AA1FFCCD0DEF650D00AAF4B2B212B973D942B9760ECF0218BC158C29EDF03B27E5919DDF97DEDEE19F6D518566BE0130718AFA3F8CA99B42A2274000885ECF8C5B71476B93';
wwv_flow_imp.g_varchar2_table(135) := 'F4F70EFF55A9A1628B9345B2E8B39F96CF7CEA5A29282830CE8082A22FD0DBD72F077EF7963CFBBFFF53D4FF3DD2A7B8B4542AAA6AA35F3415445A800010E9F699B1F8F38303D2DED224A90B171C0BBA6CCA44B9EEEAB93263FA24A9195B218505050402';
wwv_flow_imp.g_varchar2_table(136) := '4735060425D0DBDF2F1D9DDDD2D8DC223FFDD50139D578D6F154EAEB7F95D575124F70F9DF118B01810A100002E56572B7029987015B9B5D0D57974F8B1271292D2996783C4E0070A5C6205F05D269B9904A897AD8AFBF7F2073AF3FDB732C1F3EEFD89A';
wwv_flow_imp.g_varchar2_table(137) := '3A292A2EF175394C86402E0204805CD438C67F81745ABA3ADAA4B7A7DBFFB99911014D044ACAC648F9D86A4D56C3326C172000D8BE0334AA5FFD06D5DAD4201706877F33A0464B65290878168817154975ED781EFCF32CC70141091000829265DE9C04D4';
wwv_flow_imp.g_varchar2_table(138) := 'D702BBDA5B65A07FE487A8729A9C83100849405DF22FAFAC1275FF9F0F02BA08100074E904EBF883402A9592735D1DD27BAE3BEB6B54E142200A02B182989494954BE9980A9E558942C32C5B2301C0B28647A95CF5ED80CEF656393F3010A565B3560432';
wwv_flow_imp.g_varchar2_table(139) := '02896452CA2BAB79DA9FFDA0AD000140DBD6B03025A09E0B50DF1018E8EF13757B40FDE5407585800F02BA09A8F753A84BFCEAED7EEA0FFD248B4B332FFCE18380AE0204005D3BC3BA3E22A07EF0ABAB028303FD3238302017CE0F48EA026180AD129E40';
wwv_flow_imp.g_varchar2_table(140) := '41A1FAA15F248922F5DFA4C413455CEA0FAF1D9CD9A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A10';
wwv_flow_imp.g_varchar2_table(141) := '4000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C0104';
wwv_flow_imp.g_varchar2_table(142) := '10400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA406041040';
wwv_flow_imp.g_varchar2_table(143) := '0001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C4700010410';
wwv_flow_imp.g_varchar2_table(144) := '40C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000';
wwv_flow_imp.g_varchar2_table(145) := '018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030';
wwv_flow_imp.g_varchar2_table(146) := '418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A3';
wwv_flow_imp.g_varchar2_table(147) := '0001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C1020';
wwv_flow_imp.g_varchar2_table(148) := '0098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000';
wwv_flow_imp.g_varchar2_table(149) := 'F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C0104104000011304080026';
wwv_flow_imp.g_varchar2_table(150) := '74911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82';
wwv_flow_imp.g_varchar2_table(151) := '311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4';
wwv_flow_imp.g_varchar2_table(152) := '060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C47';
wwv_flow_imp.g_varchar2_table(153) := '0001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A90101';
wwv_flow_imp.g_varchar2_table(154) := '04104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A400001041040C0A30001C02318C3114000';
wwv_flow_imp.g_varchar2_table(155) := '01041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001044C10200098D0456A40000104';
wwv_flow_imp.g_varchar2_table(156) := '1040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410F0284000F008C6700410400001';
wwv_flow_imp.g_varchar2_table(157) := '044C10200098D0456A400001041040C0A30001C02318C311400001041030418000604217A9010104104000018F0204008F600C470001041040C004010280095DA4060410400001043C0A10003C82311C010410400001130408002674911A104000010410';
wwv_flow_imp.g_varchar2_table(158) := 'F0284000F008C6700410400001044C10200098D0456A400001041040C0A3C0FF03D47C8C960BCBF9730000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(66101944370478679625)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/files/app_267371_logo_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000E100000064080600000070CE5711000000097048597300000B1300000B1301009A9C180000051669545874584D4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D';
wwv_flow_imp.g_varchar2_table(2) := '22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520362E';
wwv_flow_imp.g_varchar2_table(3) := '302D633030322037392E3136343436302C20323032302F30352F31322D31363A30343A31372020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D726466';
wwv_flow_imp.g_varchar2_table(4) := '2D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D22687474703A';
wwv_flow_imp.g_varchar2_table(5) := '2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F2220786D6C6E733A70686F746F73686F703D22687474703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F2220786D6C6E733A786D704D4D3D22687474703A';
wwv_flow_imp.g_varchar2_table(6) := '2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73744576743D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F757263654576656E74232220786D703A4372656174';
wwv_flow_imp.g_varchar2_table(7) := '6F72546F6F6C3D2241646F62652050686F746F73686F702032312E32202857696E646F7773292220786D703A437265617465446174653D22323032312D30352D31365431393A34373A31332D30353A30302220786D703A4D6F64696679446174653D2232';
wwv_flow_imp.g_varchar2_table(8) := '3032312D30352D31365431393A34383A31322D30353A30302220786D703A4D65746164617461446174653D22323032312D30352D31365431393A34383A31322D30353A3030222064633A666F726D61743D22696D6167652F706E67222070686F746F7368';
wwv_flow_imp.g_varchar2_table(9) := '6F703A436F6C6F724D6F64653D2233222070686F746F73686F703A49434350726F66696C653D22735247422049454336313936362D322E312220786D704D4D3A496E7374616E636549443D22786D702E6969643A36633432643662312D656362332D6134';
wwv_flow_imp.g_varchar2_table(10) := '34332D626136622D3638393166346464343134382220786D704D4D3A446F63756D656E7449443D22786D702E6469643A36633432643662312D656362332D613434332D626136622D3638393166346464343134382220786D704D4D3A4F726967696E616C';
wwv_flow_imp.g_varchar2_table(11) := '446F63756D656E7449443D22786D702E6469643A36633432643662312D656362332D613434332D626136622D363839316634646434313438223E203C786D704D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C692073744576743A61';
wwv_flow_imp.g_varchar2_table(12) := '6374696F6E3D2263726561746564222073744576743A696E7374616E636549443D22786D702E6969643A36633432643662312D656362332D613434332D626136622D363839316634646434313438222073744576743A7768656E3D22323032312D30352D';
wwv_flow_imp.g_varchar2_table(13) := '31365431393A34373A31332D30353A3030222073744576743A736F6674776172654167656E743D2241646F62652050686F746F73686F702032312E32202857696E646F777329222F3E203C2F7264663A5365713E203C2F786D704D4D3A486973746F7279';
wwv_flow_imp.g_varchar2_table(14) := '3E203C2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D2272223F3ED26EC63900001A4449444154789CED9D77941C4799C07F3DD39376673669A555B66CA368';
wwv_flow_imp.g_varchar2_table(15) := '65CB016323E140386C7CF601361838B00DD844C1711C1730183838EE1EE11EF838F2231CC6F699ECE31C30E7886D592B2B5892656159396F98D9D99DD0337D7F7CDDDB3DB33D69B5A3D16AEBF75EBFE999A9EAFEBAAABEAAAFBE0AAD99A68942A1681CBE';
wwv_flow_imp.g_varchar2_table(16) := '460BA0504C7494122A140D4629A142D16094122A140D4629A142D16094122A140D46AF14607347977D7A39F01A205B4F81148AD3001DD80AFC0C6049CFE18A81ABE53CE026C018AD640AC5044107EEC752C26A0257CB0CA0AB6228854201F08A6A03D6D2';
wwv_flow_imp.g_varchar2_table(17) := '274C8C42108562A2D25B6D40E59851281A8C524285A2C1282554281A8C524285A2C1282554281A8C524285A2C1282554281A8C524285A2C1D4A284D3EA26854271FA7166B5016B99B676277010509BD28C1D765ADE0AB43748863B803E9455349668C0B6';
wwv_flow_imp.g_varchar2_table(18) := 'AA0357DAE8C9B58A42513FB6020B1B746FAD41F79D30545A45A16ABF53836003EF7D4603EFAD4029A142D17094122A140D4629A142D1606AF18E2E0116D3D895F53AB019D852439C0E646B8E467A7535645B90FB804C03E5A88535C05420D7807BFB8034';
wwv_flow_imp.g_varchar2_table(19) := 'F0AB51C6BD1208D3B83CF703FB80C7AB095C8B127E1878EF68241A63BE0DDC5243F825C05D7592A556BA80238D16A24ABE4B0DABC3EBC45DC0F535C60900BFAE832CB5D20D9C5B4DC05ACCD19ED1C932E6D42A47B22E52D4CE108D695546CBC1460B005C';
wwv_flow_imp.g_varchar2_table(20) := '4795FBB4B8303935CAEAA16A03D6A284A7CA207DAD72A4EB2245EDE41B2D408D9C2AF2BE0DB8B7C638A782EC5597D389E0985183D1E39F6B819F375A887AA19450315EB88ED1396A4E79268212AA7D524F1FAE061E6CB41063CD445042B563F8E9C5E5C0';
wwv_flow_imp.g_varchar2_table(21) := '638D16622C99084AA8CCD1D38F8B81871A2DC45831119450717A7219F070A385180B94122AC633AF019E6AB41027CA4450C289F08C13990B80475DDFC75DF7632214D0214E8DC15B45FDB80478DA3A4FD3D8F59935331194308D52C289C0F9C884E910F0';
wwv_flow_imp.g_varchar2_table(22) := '528365A9895A26708F577C8C431345312A5E854C9C0E375A905A98084AA898582C6AB400B53211CCD13CA7CEE473856204134109834C8CE7548C53C663E1ACD5C912667C3EA76282301E0B67AD4AA89C328A539AF1A884B5EE9339A92E52281463C47854';
wwv_flow_imp.g_varchar2_table(23) := 'C2BFAA31FC15759142A11823C6A3124691CD9EAAA119F8641D6551284E98F1A88400EF03FEB38A70FF0744EA2B8AA2CE7C10F841A385A827E3550901DE0FFC0638DBE3BFD5C04660D5499548510F0E023701C71B2D48BD18EF3366AEB28E7B81BDC870C4';
wwv_flow_imp.g_varchar2_table(24) := '2B81658D144A31A62C017E89AC96D8CEF82FB323385D1EA856678D62FC60EF58FE67E0D5C0930D94A52E8C67735431F1F813A76185AB945031DEF805F0B1460B31962825548C47BE0E7CA5D1428C15B528A19AFEA53895F804A7C966C0B528A16A354F0C';
wwv_flow_imp.g_varchar2_table(25) := '3FAA221B6BAE019E69B410274A2D8A35583729260661D4361BF56035B0BBD1429C08B528E10375936262703FD0DB68214E4352C0458C9F97AF8EA016257C1278BE5E824C003E855AE15F2F0E20BB728F4B6AEDE7BDB92E529CFE7C0578AED1429CE6AC03';
wwv_flow_imp.g_varchar2_table(26) := '5EDF68214643AD4AB81DB810A97914D5F135C493578E1927439012949A3535F5A44A519AD61AC2DE8FCC293E1598526DC0D14C5B7B1A7997F9FB81D7218B66D3C8ABA04DEB9A811AAF1964749E43DBBCB3F7913919E69E863858B2D6FD6CB94DA45FA259';
wwv_flow_imp.g_varchar2_table(27) := '9F9B91F7BE6FA8E29A0F02B3C65CD2EA28E5707B1CE96F35D284D6801D35C6F90E300DF8CB3197A67A346AD89E5F33CDF269BCB9A3EB4405522826344B7A0E97FDBFA239EACFE5D02A28AA4271B230350DCD3469EB8F33A9B707DD30C86BE37BF8B5A212';
wwv_flow_imp.g_varchar2_table(28) := '060C83D6FE384D8343989A8639BE9F57E181A969F8733974C3C03C450BB4A969F8F27926F5F4D21A4FD0BD7C090FAFBE045F3E4F57CFB171AD8C15FB843FBDFECD4C3B74980BD67533F5E811FA622D6482417C7935EE7C3A90F769B4C613E47D7E328100';
wwv_flow_imp.g_varchar2_table(29) := '937A7AE96D6B25EFF39D321690A969B4F7F56302CF2F9CCFFA154B7961EE2B4887826C9D3F8F951B3771EE864DB426121C6F6F1F6E2DC70B15FB8437DEF669B28100B1812417ACEBE6D2471E27E7F791D7348259839C95595A818F02304DD0340CBF9F6C';
wwv_flow_imp.g_varchar2_table(30) := '40271D0A79268E5D0B370D0DA1E54DD0E4B7C148849CDF3F1CDE8E1B194A55ACB1354CF29A8F6C20402618180E1BC86689A45256885271C1D4C0F0EB6482810219DC3217CBA29926996090543854D702606AA09954950E369A69920DE80C85236898226F';
wwv_flow_imp.g_varchar2_table(31) := '3E4F2893253638C0E1C99379E0D235F4B6B7B1E6D1273867DB0BE47D1A03CDCD18BA8E664A9C60364B3895B204C1F3794D4D73A5B3C89A0E064885C323C2053319C2A9F470FA19BACE50243CA29C74F4F6B16BCE6CFEB0E612769D310B348DB6BE7EFCB9';
wwv_flow_imp.g_varchar2_table(32) := '1CFDAD2D0C45229CFDD2CBAC79EC4916EC7891447333A97078444361B7A6C14C8660268B3F9F97FB58CF97F7499949878223CA5E289D21944E5759EE7432C1E0705E55EA135654C28F7FF4A3000C4522F4B6B772F1134F73E9238F73ACB383FE961642E9';
wwv_flow_imp.g_varchar2_table(33) := '8C28A5CF57E047337DF2C04D43296289045D478E62E83AF1586C388C6EE4688FF7910A86D933733A395D1A667F2EC7EC3DFB0866B3F4B6B592F3FB698927086533EC9D318344B419DD304ACA9CF7F908640D5AE371DA7BFBC8FBFDE886413C16E5E0D42E';
wwv_flow_imp.g_varchar2_table(34) := 'A9344A3CB7E9F3E1B32A85CE633D048C2C7DADADD6F349C5124B0C10CA66D8337306C9E666FCB91C86DF4FE7F11EBA8E1D61A029CA5051A11B0BF29A46CB40927026C59E19334844A365D3C1C6D0755AE309661E3C40321CC19FCB13300C92CD4D6C5D30';
wwv_flow_imp.g_varchar2_table(35) := '8FFB2F5BC3605304DD30C806025CB8AE9BF39FDD405B7F9CA6C14186C22122A914FD2D2D1C9A3A05CD849CCFC7A49E5EA61F3D44BC294632122194C9D09688D31F6DE1C0B42E349C70D38E1E26116926D9D444389DA16DA09FE3ADED1C9CDA856EA55F6C';
wwv_flow_imp.g_varchar2_table(36) := '608059FB0F90D103C45B6268A6C9D4DEA36C3D7B1E3FBAE1AD640301261DEFC197CF0F2B839DC6BD6DAD648341D63CFA046F78405EE0DBD3DE5610AEAD3F0E981C993C99DEB696E1F2980D04E8E8EDC39FCFD3128F33E5E83142E90CBDADAD048C2C6DC9';
wwv_flow_imp.g_varchar2_table(37) := '04873B3A393AB9137F2E27E5C02B7F7C3E74C3A0253140476F1F7A4E4CE499F974D9FCA9A8841F5BBB76F821F23E1FC9E6265AE203A44341062311024696BCCF37A28630D1D0CC3CC1AC41309B65FE8E9DACEADEC8AC83FB190A860966B2640201B6CF9F';
wwv_flow_imp.g_varchar2_table(38) := 'CBA6C58BD83567369A990734F23E8D3377EF6555F746E6EFD849389F6277D72CBA572E65D3390BC9EA3A7A2E575266BBC60BA5D32CD8B193959B3673ACBD83C72F3A9FC39327A3E70CB4128F6DD75E7ACE60DAC1C3ACDA20329868640301A2E9247BA6CE';
wwv_flow_imp.g_varchar2_table(39) := '64FDB94BD9B2700186AEE3CFE5C80674620349566ED8C4F2CDCFD3D9779C8C2FC850244C5ED3D04C866B7B431FD9BA967C16004D239A4C124D27D9DB3583F52B96B2F99C85640281B2E96063E87EC2E934CB373DCFAAF5CF918A8479EABC73D9336B06C7';
wwv_flow_imp.g_varchar2_table(40) := 'DBDB0866B2340F0E626A1A39BF9F782C4A389DA1F3780F2B366E66DEAE5DEC9E3E83272F5CC5B1CE49F88D1C86AED39248B062E316966DDAC2F4BEA3F486636C59B48067572EE3F094C9E8862857349964C5C62DACD8B48569BD47E8696A65D3390B59BF';
wwv_flow_imp.g_varchar2_table(41) := '7239473B3B0866B218BA9F6026CBE2ADDB59BE690B67ECDF47801CDD0B1773CF3557011AB144422A430FA4B50F70BCA39D25CF6FE3D2479E60D6FEFD64024134532A9D17CF3A930DCB96F0F219B349854318BA9F9CCF8FA9813F97C79FCF114A67E83A72';
wwv_flow_imp.g_varchar2_table(42) := '94E59BB6B06CCB56929108CF2D5BCC86654BE86D6B25902D5DE9490B9E279C4A3377E72EBA8E1E231BF0F3D6271F2F9B3F552BA17323C80482D291CFE52AF61DF29A86110890884589250658B6F979CEDBF01CC7DBDAF9D305ABD879D61CFCF93CB1C480';
wwv_flow_imp.g_varchar2_table(43) := '53C368DA704DB8E2B9CD74F4F7F1F4CA15F476B4D3DA1FAFDA0CCB0402A4C221A2C941D2A12026DA7061AB44CEE723196D46334DE6EFD8C9C57F7A86E840926756AD64E39245F4B5B6D0D6DF8F6EE486CDBB54384CB2B989E9878E30FFC51799BD673F93';
wwv_flow_imp.g_varchar2_table(44) := '8F1EC767E630351F39BF8F96C400A6A6910A8586CDBC52989A466C2049536690BD5DD3E95EB1944D8B17D1DBD64A5B0DE9609BA3896894A9478E920904E8696F239A4C124A670A5A96E1E7F7FB196C8A90D734DAFBE3F4B5C4F099E6B0834ECBE7498743';
wwv_flow_imp.g_varchar2_table(45) := 'C46331CED8B38FA5DBB7B36BE64CB62D9847289DA63939385C28D3A11089689459FB0FB064FB0BBC346B162FCC3B9BC8508AA6E420A655860C5DA7BF25464B6280F3D76F20E7F3F3F4792BD04C93E840B2A402BA9F13A0B7BD0DDD3058BA651B173DB58E';
wwv_flow_imp.g_varchar2_table(46) := '4C30C093179EC7F67973498782441303040CA3C0223235E9A2E4FC7E92CD4D989AC639DB7730D0DCCCCEB3E6104D0E124E0D616A95E7B764759D54D8EE7EC10F6FBFBD92DCB529E168B1FB4CF196181DBD7D0C86C364033A6DFD71CFC268B7BCF1581443';
wwv_flow_imp.g_varchar2_table(47) := '0FD09248104AA72B66841786DF8FCF34F1E7723579FF6C197ADB5A694E0E124EA739DA398996788270095934D364281221116D263294A2A3AF0F3D6B60FA3492CDCD9CB96B376FBAEF7E028641CEEFC39FCB31140E0F671888B32498C9D29C19647FD734';
wwv_flow_imp.g_varchar2_table(48) := '362C756AE2B6FE38E1546A54E9A09926A950089F6912CC64AA4A0B53D3C8EABA145AABCFEEC697CF33D8D444A2B989482A4D7460C0EA578FCCCFA1709881E66622A914D16412136DC4F5EC162D1E8B02D01A4F10C8666B7A5EBBD2E96F69A5BDAF8FBCCF';
wwv_flow_imp.g_varchar2_table(49) := '475F6B8B989C559401BB3CC6633174C3A8BAE22EC5D7BEFEF54AF73B394AE8BAA17857AD96F4547589BBB13335EFF3114A5757786D05CE040396B520BFA74241E6ECDE4B5B7F9C5438CC592FEF66C18E9DE47CBE61177BD0C832148EB071C922362E3987';
wwv_flow_imp.g_varchar2_table(50) := '9EF6365AFBE3842B38061485D8654D334D02D96CC3D2AE92129EF4DDD66CEF997D3E1E30350DDDC801D5571AB6872F942E5C6113191A62FF8C69BC3C6736A6A6B163EE593CBB62193E333FAC847A2E47B2A989E31DEDB42406987AF88867BF5B519EF152';
wwv_flow_imp.g_varchar2_table(51) := 'D6AA51C279C00A6451EA9F913985203B5B5F89AC182F1E34D4908900FB91E54FD56CDCBA0079EFB8093C6CC5F5220ABC11670EA7D77DF700DB801E8FF8AF0666E3BDFE4CB7647D0178B90A999B90398A7E6493DA872A4530358DE6A44CD7B45BCB442C3A';
wwv_flow_imp.g_varchar2_table(52) := 'EC1002E947EBB91C938F1D1F769D7BD08EAC1AA8F412547B4EEDFF00098FFF5722F9381F99F37B1879E5F43DC08047F8CB9109E7FDC0EF80529E8AD5C01C2009FC16995FECC585C05C64EEF17DD675BD98655DB338DFFCC83CDE1DC802836AD715AE46E6';
wwv_flow_imp.g_varchar2_table(53) := '3E9F8553561F47F6B0F54247D22962C9EA46B3E4D86FC9507E4CC2E3C295783BF019EBFC59E03CEB7C32707715F153C0CF811B295F587E8D283CC824F10B4B849B695DAF128348E6DF4C6161FA26B2A16C2536027F8B4CAE2EC5270077AF7B0A70B48A6B';
wwv_flow_imp.g_varchar2_table(54) := '03EED6D2BB7C56A8BD17023FABF65EC886C89B5CDFA723AF12B8AA44F8AF005FB60E373FB2E202C4F05654AC6B2FB0CEA701873CC2B421DB18DA7C1EB8ADC4F55E0B7CAFC47F364780FF46D66E7A553820E9F65DE4FDF6C5AC451A9ABF41CAA39B266413';
wwv_flow_imp.g_varchar2_table(55) := 'E24A184899791FB0AF8AF0552D6572D74C6E0D378ACE0F218970046915EC55E461E0DD48E29462058E0282ECB65C6A294DB6E8FC6089FB3601D721991C2AF10CC78BE476179465C86E02AF2C23F7878BBEBFA74CD8B1A6FCE0D348DC2DC419C0561C05DC';
wwv_flow_imp.g_varchar2_table(56) := '097C1FA9A0EEB37E6B07FEC5FACD8DBD8CAD9FF295AA9D9606235B0E9BE23D446FA5F46A9A64D1F901242F8FB87E9F027C00B1BEBC561E9C8B3CB7AD801B90CAE29BC01FACDFCE463690BAB1286E1EE8B3CE73AE7BDBE5E698F59F0EBC01593FDA59E259';
wwv_flow_imp.g_varchar2_table(57) := '0AA84609DD095D6CFED9DFFF809828C5C71A1C93F05A4ABF5BD07EE07E206E9D7FA80AD91E2C71DF0B707601584CE162645B660358EE8A33DDFA9C0DDCE10A5FAA665E8324B2010C59BF7DA40A99EBC14F91B43DBBCCF16757F83FE2ACD3BB1D31076F46';
wwv_flow_imp.g_varchar2_table(58) := '2A952B1193DDAEEC3E085CE28A9B2FFA2C4535E1ECF43A86584C9DC06B4A847597C34F5398DFB3914D9FECAED22C646DA19B20F098EBFBCD88297E2BF2DC9723AFD1B3F3F2FBC039259EA91B292F7699B18F25AE7B4C421A9F8A8CD50E6A594B40C33A4C';
wwv_flow_imp.g_varchar2_table(59) := 'E4611E01EE7485F35A331700DE699DFF1D8EF9F3412A9BCBF69ABEE2FB3E635DCB667189F83D2EB973D6F95EA402B04D898525E2DA05E817C05BADF31938E6FAC9E420D20F7EA9CC612BD54DC099D6F95DC0673DAEF718F036D7F7FF1873894586A5D6F9';
wwv_flow_imp.g_varchar2_table(60) := '0DC81BB4404CC24AD8AD620EC9BBBD48EB7509CE3ABE65C0D5AE38B7E1BCA1EB3644C98A790869C56CEEF0088375CFBCEBFE79C4D2D802FCB52BDC52AAD0B1B152C272D771D7607B3DFE7F234EADFC6DA41F07D25F785D85FB9653D23DAEF352CE839632';
wwv_flow_imp.g_varchar2_table(61) := 'F16DC79057DC1822378815F03B9CE75C5BE69AF5225439C830B7589F49CAD7D4F722F9712FF579FFC35AEB730831FBFFD7FA7E1595DFC65CEE757737B8CEDF6E7D3623FD7B1033F2F365E23F023C6A9DAF461C37C5F8CBC4AFA6DC1530962DA117CB715A';
wwv_flow_imp.g_varchar2_table(62) := 'B97BF0DE9A6EADF569FFB719A75FF7D10AF72DB70DE39B5CE7CF7AFC6FE2ED2C00E95BD8CE1BAF95F1EF42CC1B104F2EC86BDA406ADF93FD4EC46A97B4CCC2795DDCC38809588E5B1053BE1E5B46BCC3FAB49D6C6E53F1ED8C9E97901609C4DB0EE2F9B5';
wwv_flow_imp.g_varchar2_table(63) := 'F3EBAE2AAEF143D7B99783B05C7FFC5AD7F93AAAC89BB11A275C0D3C8174AA35A4998E203637C04F90825B4C8715170A3D5F0F204E952B9056B294DB7A3A52A8ECCA248F24F66B817FB47E7B02A77575E3434C8F6396CCF63290B9C0E710C70EC0173CE2';
wwv_flow_imp.g_varchar2_table(64) := 'BEDBFA7C0E716A80982E5723B5EE5B801F9790B91EBC13B8146FA7861FF82A627ECD75FDFEE24990AB145722790F8EC3AE1B19565A887816BF7402D7DF8D7441E658DF3B5CFFBD5445FC8DAEF3451EFF4F42BA1D767AE7115DBA10F8A2F5DBCB485FBD22';
wwv_flow_imp.g_varchar2_table(65) := '63A5846DC8DE8FA598075CCFC8A105B7F3E53BAEF37F459410A46FF845BC791552DB94E25E4AEF10E747C6CE4AB10FD946AFB8F55E88D39AB8FB4A0F22093F0769414EA6124EB28E529C8F2861D8F55BA9A18593816D12BF44611E7C0F191A998338D79E';
wwv_flow_imp.g_varchar2_table(66) := '1EE5F58BC70A83AEF36A36B176C7B78763DCDDAA4594DFF9FB519CC6A52263A584EB1047880FA7553191F1A14F21097A276266BABD567627F651C4D56BDBDADD880B7A3AE2392DA584296498C1BDD9520BD26703B1E7572376BE17879056DB1EF80F21E3';
wwv_flow_imp.g_varchar2_table(67) := '9F202DE17B18E9B8B00B501A1937B29F3987F40D3F840C6B9C09EC2A715F9B2B9042E73659ECF47B2D85EEF7723C8C8CDF796DB5AFE1545443AEDF639C18761E97FBDF8B2938FD69DB84F75BE17F8B0C8B0490372F5D3F4AD98245DFDD4AD55C457C771F';
wwv_flow_imp.g_varchar2_table(68) := 'DB76D0B9D3358BE48DBB256C46867540CAFD5B902E5845C64A09F7206E6F2F7E8F285408F14AD94A78114EA77719D261B677694BE398106723CDBCD7EE550F52D8F7C3BACFD5484BB4C292AB03678CC7C6404C96E2D93C0B9049084B90490A3B281C14BF';
wwv_flow_imp.g_varchar2_table(69) := 'C9759F8D48EB622BA1BBC37E338E495C8A85949E3810A37A257C92EA5A5EF7CE65F34A8672F867C44D7F1CE7B9ED67F49AB1E4C6FECF4F61BAB8C756DF8DF40D6D254CE294816BADF352FE8672CCB13EED4AD03D73CACBD152CC72D7F9368FFFBB19D957';
wwv_flow_imp.g_varchar2_table(70) := 'F4235D82BB11B3FF6E248D2B9AFD63E5982957BBF4E0D426335DBF7FCA75DE8AD490EDD63195C2DAECBD25AEED5508D248027CCBFAAE517AC0DD6B8AD3761C5318A4B5B2792385CF3A1D51F076648CABDDF5DFAD25EEE9E68FC0BF21B5BF7D7CD9FAAC7A';
wwv_flow_imp.g_varchar2_table(71) := 'E60D857D9E72ECC731A32EA5726BF80F4885E676F5DB1EBF18E5CB8F3B2DDC26A07B42431B4EBA755038841560E4807935CCC519DFB32BEEED384EA8EB46C418C9CDAE73AFCADFABDCE59046E1B3AEDFBC66E58C60AC5AC24AAE587B2354DB4409E1CCD6';
wwv_flow_imp.g_varchar2_table(72) := '584F6925BB076909DF8178518BA7229593DFDD9F28B50F6AB3C735416ABFFDC8B89F3BC1FFC9FACC23CAD9CB483E8064623BA2B4F77984B1D90C7CB2CCFFD5325439C83077207DC408D27A5E5322DCA75DE76E27C93EA47BA12373577FE111772ACE18E0';
wwv_flow_imp.g_varchar2_table(73) := '069C091857E06C74FC2D64FA58319D88F5E447CAC5B73DC294F3EAFEC475FE5FD6E72052B97D06298BB7E34CC52CE6F53895F643787729CA0D51FC1E797F2254D9C88D554B184032C57D049096EF373835AE5DABDCE28AFB5524A3BC0EDBBB14C451DA6A';
wwv_flow_imp.g_varchar2_table(74) := '65769B99E512AD527CFB7E73704C905F22FD302F99DD2FAF743F673DE9400AEF941247178E65F163A46500997CFE3546F6236F403CC420158EDB65EF569CEF317272C26C246DECFBB9276BDCE43AFF12DEE9F7204E97E55C9C89166E199B903CB5CB5927';
wwv_flow_imp.g_varchar2_table(75) := 'D27FDC8854102095B0BB02FC1C4E65701BDE33B2DE40A1A36834F9E7AE10AB2A77D51468F7C31787B7BF5F86B41C07ACC33EDF8BA33C499C71BFF7B9AE516E52EC0F5CE71FB73EDD6334E5E477B760EE397C769C4A096417A257589FEE21967213D7B7E3';
wwv_flow_imp.g_varchar2_table(76) := 'F423FE82FA6D27EFCE97F720B3660E781CF6EFEE17A65C8153C9AC453CC077230AFA0C85AEF56B28EC53DD8FE35069B7C2772383ED4F211E4F7B96D156E01BD67927E2AC009952E83571C3C63D96673BEFDCCFFB050ACBD94144D9EDD677178EF3C7268F';
wwv_flow_imp.g_varchar2_table(77) := '98E0F63CD66F5872DC89B49EEB1005B4EFF32E0AA7FA815366CA953BB77536BB4CB861AA514277BFC15D98DD8558476ADCC9D631C515368938361623CE97AB70C65E7E477953CA5E9204522BCEA47080BDDC0459F778D047709ED5F67EDACB4F4A61CB75';
wwv_flow_imp.g_varchar2_table(78) := '31D202DA0E0583F293D1C1198AF1017F5F21EC682936B1751C2788FBF059873B1FF721FD26BBB0CF4214E49D382DDB0BC878DE6F18C9D5144EEC5E81CC6EBA00274D7F657DB71D2B6B71F2C05DB97AE176847D02C92B77B7A109A795EFC429F807807F47';
wwv_flow_imp.g_varchar2_table(79) := 'CA97D7F2B9F58823CC9EACBD086941DF8133ECF43C5279FEA428AE8633B3ABDCB6F4C75CE79FA4D0A7E049357DC29F5982F9295C9A710C9905EFF50E081FE2F4E8B7E2BA9D0C7B917989399CE941E5B80A19F4D75DD77DB3873CC5EC42ECFB16A40FEA43';
wwv_flow_imp.g_varchar2_table(80) := '6AC30F210E1583F2EB1CDF856492DF92F546A41FF5329567417C03690534AAF770D6CA764471AAD9314AA370C9104885783D628E5E8C0CA93421955C37952B9A0F23E3A4975971DB91B1C7DD882958BCBBD10388B968527E791848DEBC0AE93F3659F23F';
wwv_flow_imp.g_varchar2_table(81) := '86CCD12D4E7BBB4C1C4394ACD22CA06D3893B55721AD951F79EE0D94B6CC86104F7C84F24EB304322CD665C95E31FF2B6E6FA15028EA8B7A0FBD42D16094122A140D4629A142D16094122A140D4629A142D16094122A140D4629A142D160FE1FF33536FC';
wwv_flow_imp.g_varchar2_table(82) := 'E1F5C22A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(66127304336599961484)
,p_file_name=>'app-267371-logo.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250719035627Z')
,p_updated_on=>wwv_flow_imp.dz('20250719035627Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101935661271679612)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15640448344127
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101935995987679613)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15640448344152
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101936244746679614)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15640448344157
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101936525338679614)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15640448344160
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101936845068679614)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15640448344163
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101937183696679614)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15640448344178
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101937438824679614)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15640448344181
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101937763087679615)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15640448344186
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101938065686679615)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15640448344190
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101938381390679615)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15640448344190
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101938683540679615)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15640448344193
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101938921639679615)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15640448344199
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101939270382679616)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15640448344202
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(66101939596482679616)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15640448344205
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(66101946450462679627)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15640448344551
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(66101946518729679627)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15640448344575
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(66101946681299679627)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15640448344580
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(66101946020218679627)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15640448344520
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(66101946287716679627)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15640448344537
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(66101946342968679627)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15640448344537
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(66101947402359679629)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(66101944521236679625)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15640448344589
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66103175918549699986)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15640449050004
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/campus_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66102162334179686525)
,p_lov_name=>'CAMPUS.NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CAMPUS'
,p_return_column_name=>'ID_CAMPUS'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15640448584812
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/carreras_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66102502585332691384)
,p_lov_name=>'CARRERAS.NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CARRERAS'
,p_return_column_name=>'ID_CARRERA'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15640448727689
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66103157767006699968)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15640449049514
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/egresados_nombres
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66102659895022694461)
,p_lov_name=>'EGRESADOS.NOMBRES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EGRESADOS'
,p_return_column_name=>'ID_EGRESADO'
,p_display_column_name=>'NOMBRES'
,p_default_sort_column_name=>'NOMBRES'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15640448860252
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66103183447382699993)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(66103183447382699993)||'.'
,p_location=>'STATIC'
,p_version_scn=>15640449050187
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(66103183717004699994)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/facultades_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66102288562777691047)
,p_lov_name=>'FACULTADES.NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'FACULTADES'
,p_return_column_name=>'ID_FACULTAD'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15640448719100
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tipos_evento_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66102578178884692911)
,p_lov_name=>'TIPOS_EVENTO.NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TIPOS_EVENTO'
,p_return_column_name=>'ID_TIPO_EVENTO'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15640448774438
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tipos_evidencia_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66102694691976695227)
,p_lov_name=>'TIPOS_EVIDENCIA.NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TIPOS_EVIDENCIA'
,p_return_column_name=>'ID_TIPO_EVIDENCIA'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15640448902942
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tipos_publicacion_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66102548448489692138)
,p_lov_name=>'TIPOS_PUBLICACION.NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TIPOS_PUBLICACION'
,p_return_column_name=>'ID_TIPO_PUBLICACION'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15640448749701
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66103158456539699970)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(66103158456539699970)||'.'
,p_location=>'STATIC'
,p_version_scn=>15640449049568
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(66103158751086699970)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/usuarios_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(66102698243881695230)
,p_lov_name=>'USUARIOS.NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USUARIOS'
,p_return_column_name=>'ID_USUARIO'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15640448903046
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(66101947701013679630)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(66101940433088679616)
,p_name=>'Breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66101940684940679617)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66101999447780679906)
,p_short_name=>'Usuarios'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102014586085680642)
,p_short_name=>'Roles'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102040300818681384)
,p_short_name=>'Campus'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102058977166682114)
,p_short_name=>'Facultades'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102077525094682843)
,p_short_name=>'Tipos Publicacion'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102095806388683582)
,p_short_name=>'Tipos Evento'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102127571782684334)
,p_short_name=>'Proyectos'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102144995856685085)
,p_short_name=>'Tipos Evidencia'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102158802245685806)
,p_short_name=>'Usuario Roles'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102178772061686539)
,p_short_name=>'Edificios'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102196407222687274)
,p_short_name=>'Espacios Abiertos'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102217988972688071)
,p_short_name=>'Areas Verdes'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102236331986688822)
,p_short_name=>'Zonas Permeables'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102264893610689558)
,p_short_name=>'Infraestructura Seguridad'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102284360398690297)
,p_short_name=>'Presupuesto Sostenibilidad'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
,p_created_on=>wwv_flow_imp.dz('20250719001938Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001938Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102499745198691058)
,p_short_name=>'Carreras'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102523304165691404)
,p_short_name=>'Asignaturas'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001949Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102571416541692159)
,p_short_name=>'Publicaciones Academicas'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102601712823692934)
,p_short_name=>'Eventos'
,p_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>38
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102640026933693697)
,p_short_name=>'Egresados'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
,p_created_on=>wwv_flow_imp.dz('20250719002012Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002012Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102677073030694479)
,p_short_name=>'Seguimiento Egresados'
,p_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>42
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102712553670695242)
,p_short_name=>'Evidencias'
,p_link=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>44
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102735399070695988)
,p_short_name=>'Asignatura Evidencias'
,p_link=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>46
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102757421090696728)
,p_short_name=>'Publicacion Evidencias'
,p_link=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>48
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102776204425697487)
,p_short_name=>'Evento Evidencias'
,p_link=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>50
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102791045393698235)
,p_short_name=>'Proyecto Evidencias'
,p_link=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>52
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102812664484698980)
,p_short_name=>'Reportes'
,p_link=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>54
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66102834649924699712)
,p_short_name=>'Auditoria'
,p_link=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>56
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(66103197453868700378)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(66101941353133679617)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(66101939865303679616)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15640448344212
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(66101944521236679625)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15640448344486
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(66101945350764679625)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15640448344510
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(66101940197341679616)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15640448344237
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Dsw-Infraestructura77'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66101978251396679672)
,p_plug_name=>'Dsw-Infraestructura77'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103154003914699964)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(66103142510274699956)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Usuarios'
,p_alias=>'USUARIOS1'
,p_step_title=>'Usuarios'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66101992828891679898)
,p_plug_name=>'Usuarios'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USUARIOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Usuarios'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66101992962126679898)
,p_name=>'Usuarios'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_USUARIO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_ID_USUARIO:\#ID_USUARIO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66101992962126679898
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101993628169679901)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Usuario'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101994081787679901)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101994485614679902)
,p_db_column_name=>'APELLIDO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apellido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101994838047679902)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101995280084679902)
,p_db_column_name=>'TELEFONO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Telefono'
,p_column_link=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:56,RR:IR_USUARIO_ACCION:\#NOMBRE#\'
,p_column_linktext=>'#TELEFONO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101995695258679903)
,p_db_column_name=>'USERNAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101996003418679903)
,p_db_column_name=>'PASSWORD_HASH'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Password Hash'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101996445760679903)
,p_db_column_name=>'ESTADO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101996819989679904)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66101997286152679904)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102839774836699720)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661028398'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:APELLIDO:EMAIL:TELEFONO:USERNAME:PASSWORD_HASH:ESTADO:FECHA_CREACION:FECHA_ACTUALIZACION'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66101998978166679905)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66101997751199679904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66101992828891679898)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66101998038530679905)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66101992828891679898)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66101998518349679905)
,p_event_id=>wwv_flow_imp.id(66101998038530679905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66101992828891679898)
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Usuarios'
,p_alias=>'USUARIOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Usuarios'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66101980462371679886)
,p_plug_name=>'Usuarios'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USUARIOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66101988518067679895)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001753Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66101988995430679895)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66101988518067679895)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001753Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66101990245907679896)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66101988518067679895)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID_USUARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66101990683796679897)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66101988518067679895)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ID_USUARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66101991028096679897)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66101988518067679895)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ID_USUARIO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101980701566679888)
,p_name=>'P3_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Usuario'
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101981113783679888)
,p_name=>'P3_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101981502097679889)
,p_name=>'P3_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101981941984679889)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101982392768679889)
,p_name=>'P3_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Telefono'
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101982742722679890)
,p_name=>'P3_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101983115339679890)
,p_name=>'P3_PASSWORD_HASH'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password Hash'
,p_source=>'PASSWORD_HASH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101983588145679891)
,p_name=>'P3_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101983984499679891)
,p_name=>'P3_FECHA_CREACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Creacion'
,p_source=>'FECHA_CREACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101984762915679892)
,p_name=>'P3_FECHA_ACTUALIZACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_item_source_plug_id=>wwv_flow_imp.id(66101980462371679886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66101984486731679892)
,p_validation_name=>'P3_FECHA_CREACION must be timestamp'
,p_validation_sequence=>80
,p_validation=>'P3_FECHA_CREACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66101983984499679891)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001753Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66101985247990679892)
,p_validation_name=>'P3_FECHA_ACTUALIZACION must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P3_FECHA_ACTUALIZACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66101984762915679892)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001753Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001753Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66101989052518679895)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66101988995430679895)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66101989732120679896)
,p_event_id=>wwv_flow_imp.id(66101989052518679895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66101991883817679897)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66101980462371679886)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Usuarios'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66101991883817679897
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66101992269691679898)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66101992269691679898
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66101991438067679897)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66101980462371679886)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Usuarios'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66101991438067679897
,p_created_on=>wwv_flow_imp.dz('20250719001754Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001754Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Roles'
,p_alias=>'ROLES'
,p_step_title=>'Roles'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719040003Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102010301264680637)
,p_plug_name=>'Roles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ROLES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Roles'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102010440973680637)
,p_name=>'Roles'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_ROL'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_ID_ROL:\#ID_ROL#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102010440973680637
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102011116905680639)
,p_db_column_name=>'ID_ROL'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Rol'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102011572615680640)
,p_db_column_name=>'NOMBRE_ROL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Rol'
,p_column_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:18,RR:IR_ID_ROL:\#ID_ROL#\'
,p_column_linktext=>'#NOMBRE_ROL#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102011986074680640)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102012332858680641)
,p_db_column_name=>'ESTADO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102853985753699731)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661028540'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_ROL:DESCRIPCION:ESTADO'
,p_sort_column_1=>'NOMBRE_ROL'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102014094605680642)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719040003Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102012817066680641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102010301264680637)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102013185815680641)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102010301264680637)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102013695936680642)
,p_event_id=>wwv_flow_imp.id(66102013185815680641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102010301264680637)
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Role'
,p_alias=>'ROLE'
,p_page_mode=>'MODAL'
,p_step_title=>'Role'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001759Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102002713593680630)
,p_plug_name=>'Role'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ROLES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102005863519680634)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102006274740680634)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102005863519680634)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102007730788680635)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102005863519680634)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_ID_ROL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102008186017680636)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102005863519680634)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_ID_ROL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102008523047680636)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102005863519680634)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_ID_ROL'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102003071713680632)
,p_name=>'P5_ID_ROL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102002713593680630)
,p_item_source_plug_id=>wwv_flow_imp.id(66102002713593680630)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Rol'
,p_source=>'ID_ROL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102003411847680632)
,p_name=>'P5_NOMBRE_ROL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102002713593680630)
,p_item_source_plug_id=>wwv_flow_imp.id(66102002713593680630)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Rol'
,p_source=>'NOMBRE_ROL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102003862003680632)
,p_name=>'P5_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102002713593680630)
,p_item_source_plug_id=>wwv_flow_imp.id(66102002713593680630)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102004270475680633)
,p_name=>'P5_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102002713593680630)
,p_item_source_plug_id=>wwv_flow_imp.id(66102002713593680630)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102006395073680634)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102006274740680634)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102007216399680635)
,p_event_id=>wwv_flow_imp.id(66102006395073680634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102009337153680636)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102002713593680630)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Role'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102009337153680636
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102009770945680637)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102009770945680637
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102008990252680636)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102002713593680630)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Role'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102008990252680636
,p_created_on=>wwv_flow_imp.dz('20250719001801Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001801Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Campus'
,p_alias=>'CAMPUS1'
,p_step_title=>'Campus'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719021235Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'LSTUTILLOA@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102033739994681378)
,p_plug_name=>'Campus'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CAMPUS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Campus'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719021235Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'LSTUTILLOA@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102033827855681378)
,p_name=>'Campus'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_CAMPUS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_ID_CAMPUS:\#ID_CAMPUS#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102033827855681378
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719021235Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'LSTUTILLOA@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102034503972681380)
,p_db_column_name=>'ID_CAMPUS'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Campus'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102034915482681380)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102035339823681380)
,p_db_column_name=>'UBICACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ubicacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102035756058681381)
,p_db_column_name=>'ENTORNO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Entorno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102036198617681381)
,p_db_column_name=>'AREA_TOTAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Area Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102036574816681381)
,p_db_column_name=>'AREA_ABIERTA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Area Abierta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102036912015681381)
,p_db_column_name=>'ES_PRINCIPAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Es Principal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102037362101681382)
,p_db_column_name=>'TOTAL_PERSONAS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Total Personas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102037701531681382)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102038168155681382)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102860951770699736)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661028610'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:UBICACION:ENTORNO:AREA_TOTAL:AREA_ABIERTA:ES_PRINCIPAL:TOTAL_PERSONAS:FECHA_CREACION:FECHA_ACTUALIZACION'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102039803925681383)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102038683937681383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102033739994681378)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102038944030681383)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102033739994681378)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102039436951681383)
,p_event_id=>wwv_flow_imp.id(66102038944030681383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102033739994681378)
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Campus'
,p_alias=>'CAMPUS'
,p_page_mode=>'MODAL'
,p_step_title=>'Campus'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001806Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102021156475681367)
,p_plug_name=>'Campus'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CAMPUS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102029242940681375)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102029645423681375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102029242940681375)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102031026159681376)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102029242940681375)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID_CAMPUS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102031452568681376)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102029242940681375)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_ID_CAMPUS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102031849579681376)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102029242940681375)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_ID_CAMPUS'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102021469722681368)
,p_name=>'P7_ID_CAMPUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Campus'
,p_source=>'ID_CAMPUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102021880928681369)
,p_name=>'P7_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102022208147681369)
,p_name=>'P7_UBICACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ubicacion'
,p_source=>'UBICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102022685484681370)
,p_name=>'P7_ENTORNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entorno'
,p_source=>'ENTORNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102023005460681370)
,p_name=>'P7_AREA_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area Total'
,p_source=>'AREA_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102023494551681370)
,p_name=>'P7_AREA_ABIERTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area Abierta'
,p_source=>'AREA_ABIERTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102023895874681371)
,p_name=>'P7_ES_PRINCIPAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Es Principal'
,p_source=>'ES_PRINCIPAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102024200009681371)
,p_name=>'P7_TOTAL_PERSONAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Personas'
,p_source=>'TOTAL_PERSONAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102024656461681371)
,p_name=>'P7_FECHA_CREACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Creacion'
,p_source=>'FECHA_CREACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102025404582681372)
,p_name=>'P7_FECHA_ACTUALIZACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_item_source_plug_id=>wwv_flow_imp.id(66102021156475681367)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102025197215681372)
,p_validation_name=>'P7_FECHA_CREACION must be timestamp'
,p_validation_sequence=>80
,p_validation=>'P7_FECHA_CREACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102024656461681371)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102025983556681372)
,p_validation_name=>'P7_FECHA_ACTUALIZACION must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P7_FECHA_ACTUALIZACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102025404582681372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102029741796681375)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102029645423681375)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102030553571681376)
,p_event_id=>wwv_flow_imp.id(66102029741796681375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102032634508681377)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102021156475681367)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Campus'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102032634508681377
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102033039924681377)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102033039924681377
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102032200272681377)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102021156475681367)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Campus'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102032200272681377
,p_created_on=>wwv_flow_imp.dz('20250719001808Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001808Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Facultades'
,p_alias=>'FACULTADES'
,p_step_title=>'Facultades'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102054783153682110)
,p_plug_name=>'Facultades'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FACULTADES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Facultades'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102054834430682110)
,p_name=>'Facultades'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_FACULTAD'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_ID_FACULTAD:\#ID_FACULTAD#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102054834430682110
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102055501803682111)
,p_db_column_name=>'ID_FACULTAD'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Facultad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102055986600682112)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102056370860682112)
,p_db_column_name=>'CODIGO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Codigo'
,p_column_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:32,RR:IR_ID_FACULTAD:\#NOMBRE#\'
,p_column_linktext=>'#CODIGO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102056713947682112)
,p_db_column_name=>'ESTADO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102875133508699747)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661028752'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:CODIGO:ESTADO'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102058457551682113)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102057227339682113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102054783153682110)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102057541851682113)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102054783153682110)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102058041515682113)
,p_event_id=>wwv_flow_imp.id(66102057541851682113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102054783153682110)
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Facultade'
,p_alias=>'FACULTADE'
,p_page_mode=>'MODAL'
,p_step_title=>'Facultade'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001814Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102047259476682102)
,p_plug_name=>'Facultade'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FACULTADES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102050366931682106)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102050771638682107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102050366931682106)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102052131803682108)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102050366931682106)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_ID_FACULTAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102052592653682108)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102050366931682106)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID_FACULTAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102052915855682108)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102050366931682106)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID_FACULTAD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102047511515682104)
,p_name=>'P9_ID_FACULTAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102047259476682102)
,p_item_source_plug_id=>wwv_flow_imp.id(66102047259476682102)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Facultad'
,p_source=>'ID_FACULTAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102047935563682104)
,p_name=>'P9_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102047259476682102)
,p_item_source_plug_id=>wwv_flow_imp.id(66102047259476682102)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102048343883682105)
,p_name=>'P9_CODIGO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102047259476682102)
,p_item_source_plug_id=>wwv_flow_imp.id(66102047259476682102)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo'
,p_source=>'CODIGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102048774581682105)
,p_name=>'P9_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102047259476682102)
,p_item_source_plug_id=>wwv_flow_imp.id(66102047259476682102)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102050867178682107)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102050771638682107)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102051660373682107)
,p_event_id=>wwv_flow_imp.id(66102050867178682107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102053783971682109)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102047259476682102)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Facultade'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102053783971682109
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102054189299682109)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102054189299682109
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102053351053682108)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102047259476682102)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Facultade'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102053351053682108
,p_created_on=>wwv_flow_imp.dz('20250719001816Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001816Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Tipos Publicacion'
,p_alias=>'TIPOS-PUBLICACION1'
,p_step_title=>'Tipos Publicacion'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102073752873682839)
,p_plug_name=>'Tipos Publicacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TIPOS_PUBLICACION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Tipos Publicacion'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102073849722682839)
,p_name=>'Tipos Publicacion'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_TIPO_PUBLICACION'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_ID_TIPO_PUBLICACION:\#ID_TIPO_PUBLICACION#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102073849722682839
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102074525941682841)
,p_db_column_name=>'ID_TIPO_PUBLICACION'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Tipo Publicacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102074973818682841)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:36,RR:IR_ID_TIPO_PUBLICACION:\#NOMBRE#\'
,p_column_linktext=>'#NOMBRE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102075387800682842)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102882121042699752)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661028822'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:DESCRIPCION'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102077087911682843)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102075860141682842)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102073752873682839)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102076155666682842)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102073752873682839)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102076628092682843)
,p_event_id=>wwv_flow_imp.id(66102076155666682842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102073752873682839)
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Tipos Publicacion'
,p_alias=>'TIPOS-PUBLICACION'
,p_page_mode=>'MODAL'
,p_step_title=>'Tipos Publicacion'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001821Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102066994501682832)
,p_plug_name=>'Tipos Publicacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TIPOS_PUBLICACION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102069312865682836)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102069715749682836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102069312865682836)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102071143959682837)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102069312865682836)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_ID_TIPO_PUBLICACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102071577645682837)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102069312865682836)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_ID_TIPO_PUBLICACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102071937752682838)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102069312865682836)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_ID_TIPO_PUBLICACION'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102067299320682834)
,p_name=>'P11_ID_TIPO_PUBLICACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102066994501682832)
,p_item_source_plug_id=>wwv_flow_imp.id(66102066994501682832)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Tipo Publicacion'
,p_source=>'ID_TIPO_PUBLICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102067674491682834)
,p_name=>'P11_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102066994501682832)
,p_item_source_plug_id=>wwv_flow_imp.id(66102066994501682832)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102068057432682834)
,p_name=>'P11_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102066994501682832)
,p_item_source_plug_id=>wwv_flow_imp.id(66102066994501682832)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102069873140682836)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102069715749682836)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102070695261682837)
,p_event_id=>wwv_flow_imp.id(66102069873140682836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102072766949682838)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102066994501682832)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Tipos Publicacion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102072766949682838
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102073163391682838)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102073163391682838
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102072389390682838)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102066994501682832)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Tipos Publicacion'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102072389390682838
,p_created_on=>wwv_flow_imp.dz('20250719001823Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001823Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Tipos Evento'
,p_alias=>'TIPOS-EVENTO1'
,p_step_title=>'Tipos Evento'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102092001812683578)
,p_plug_name=>'Tipos Eventoes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TIPOS_EVENTO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Tipos Evento'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102092107595683578)
,p_name=>'Tipos Evento'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_TIPO_EVENTO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_ID_TIPO_EVENTO:\#ID_TIPO_EVENTO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102092107595683578
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102092819602683580)
,p_db_column_name=>'ID_TIPO_EVENTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Tipo Evento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102093286643683581)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:38,RR:IR_ID_TIPO_EVENTO:\#NOMBRE#\'
,p_column_linktext=>'#NOMBRE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102093634410683581)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102887924575699756)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661028880'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:DESCRIPCION'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102095304921683582)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102094120592683581)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102092001812683578)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102094441061683581)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102092001812683578)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102094994137683582)
,p_event_id=>wwv_flow_imp.id(66102094441061683581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102092001812683578)
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Tipos Evento'
,p_alias=>'TIPOS-EVENTO'
,p_page_mode=>'MODAL'
,p_step_title=>'Tipos Evento'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001828Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102085076734683571)
,p_plug_name=>'Tipos Evento'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TIPOS_EVENTO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102087524023683575)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102087941163683575)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102087524023683575)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102089382342683576)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102087524023683575)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_ID_TIPO_EVENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102089717356683576)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102087524023683575)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_ID_TIPO_EVENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102090281355683577)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102087524023683575)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_ID_TIPO_EVENTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102085436043683573)
,p_name=>'P13_ID_TIPO_EVENTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102085076734683571)
,p_item_source_plug_id=>wwv_flow_imp.id(66102085076734683571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Tipo Evento'
,p_source=>'ID_TIPO_EVENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102085824556683573)
,p_name=>'P13_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102085076734683571)
,p_item_source_plug_id=>wwv_flow_imp.id(66102085076734683571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102086291825683573)
,p_name=>'P13_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102085076734683571)
,p_item_source_plug_id=>wwv_flow_imp.id(66102085076734683571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102088052218683575)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102087941163683575)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102088827492683576)
,p_event_id=>wwv_flow_imp.id(66102088052218683575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102091038160683577)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102085076734683571)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Tipos Evento'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102091038160683577
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102091486933683578)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102091486933683578
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102090608350683577)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102085076734683571)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Tipos Evento'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102090608350683577
,p_created_on=>wwv_flow_imp.dz('20250719001830Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001830Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Proyectos'
,p_alias=>'PROYECTOS1'
,p_step_title=>'Proyectos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102120091425684327)
,p_plug_name=>'Proyectos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROYECTOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Proyectos'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102120192093684327)
,p_name=>'Proyectos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_PROYECTO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_ID_PROYECTO:\#ID_PROYECTO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102120192093684327
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102120876112684329)
,p_db_column_name=>'ID_PROYECTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Proyecto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102121262298684329)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102121642009684330)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102122054192684330)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102122421719684330)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102122823936684331)
,p_db_column_name=>'PRESUPUESTO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Presupuesto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102123275630684331)
,p_db_column_name=>'ESTADO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_link=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:52,RR:IR_ID_PROYECTO:\#ID_PROYECTO#\'
,p_column_linktext=>'#ESTADO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102123623965684331)
,p_db_column_name=>'TEMA_SUSTENTABILIDAD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Tema Sustentabilidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102124040696684331)
,p_db_column_name=>'TIPO_PROYECTO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Tipo Proyecto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102124489205684332)
,p_db_column_name=>'RESPONSABLE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102124808360684332)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102125371317684332)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102893710535699761)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661028938'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:DESCRIPCION:FECHA_INICIO:FECHA_FIN:PRESUPUESTO:ESTADO:TEMA_SUSTENTABILIDAD:TIPO_PROYECTO:RESPONSABLE:FECHA_CREACION:FECHA_ACTUALIZACION'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102127051368684333)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102125847672684333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102120091425684327)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102126149170684333)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102120091425684327)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102126673578684333)
,p_event_id=>wwv_flow_imp.id(66102126149170684333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102120091425684327)
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Proyectos'
,p_alias=>'PROYECTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Proyectos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001836Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102105996759684314)
,p_plug_name=>'Proyectos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROYECTOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102115515412684323)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102115918832684323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102115515412684323)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102117367617684324)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102115515412684323)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_ID_PROYECTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102117760312684325)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102115515412684323)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_ID_PROYECTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102118114455684325)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102115515412684323)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_ID_PROYECTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102106221548684315)
,p_name=>'P15_ID_PROYECTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Proyecto'
,p_source=>'ID_PROYECTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102106764448684316)
,p_name=>'P15_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102107150034684316)
,p_name=>'P15_DESCRIPCION'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102107509692684316)
,p_name=>'P15_FECHA_INICIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Inicio'
,p_source=>'FECHA_INICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102107984142684317)
,p_name=>'P15_FECHA_FIN'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Fin'
,p_source=>'FECHA_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102108352131684317)
,p_name=>'P15_PRESUPUESTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Presupuesto'
,p_source=>'PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102108729627684318)
,p_name=>'P15_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102109174607684318)
,p_name=>'P15_TEMA_SUSTENTABILIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tema Sustentabilidad'
,p_source=>'TEMA_SUSTENTABILIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102109566621684318)
,p_name=>'P15_TIPO_PROYECTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo Proyecto'
,p_source=>'TIPO_PROYECTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102109925112684319)
,p_name=>'P15_RESPONSABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsable'
,p_source=>'RESPONSABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102110380513684319)
,p_name=>'P15_FECHA_CREACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Creacion'
,p_source=>'FECHA_CREACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102111144767684320)
,p_name=>'P15_FECHA_ACTUALIZACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_item_source_plug_id=>wwv_flow_imp.id(66102105996759684314)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102110837814684320)
,p_validation_name=>'P15_FECHA_CREACION must be timestamp'
,p_validation_sequence=>100
,p_validation=>'P15_FECHA_CREACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102110380513684319)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102111613417684320)
,p_validation_name=>'P15_FECHA_ACTUALIZACION must be timestamp'
,p_validation_sequence=>110
,p_validation=>'P15_FECHA_ACTUALIZACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102111144767684320)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102116001182684323)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102115918832684323)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102116810993684324)
,p_event_id=>wwv_flow_imp.id(66102116001182684323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102118964243684326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102105996759684314)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Proyectos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102118964243684326
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102119370506684326)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102119370506684326
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102118573816684325)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102105996759684314)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Proyectos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102118573816684325
,p_created_on=>wwv_flow_imp.dz('20250719001838Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001838Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Tipos Evidencia'
,p_alias=>'TIPOS-EVIDENCIA1'
,p_step_title=>'Tipos Evidencia'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102140747660685081)
,p_plug_name=>'Tipos Evidencia'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TIPOS_EVIDENCIA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Tipos Evidencia'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102140864332685081)
,p_name=>'Tipos Evidencia'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_TIPO_EVIDENCIA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP:P17_ID_TIPO_EVIDENCIA:\#ID_TIPO_EVIDENCIA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102140864332685081
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102141564049685083)
,p_db_column_name=>'ID_TIPO_EVIDENCIA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Tipo Evidencia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102141999084685083)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_link=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:44,RR:IR_ID_TIPO_EVIDENCIA:\#NOMBRE#\'
,p_column_linktext=>'#NOMBRE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102142367908685083)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102142749317685084)
,p_db_column_name=>'EXTENSIONES_PERMITIDAS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Extensiones Permitidas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102910643259699773)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029107'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:DESCRIPCION:EXTENSIONES_PERMITIDAS'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102144411529685085)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102143239884685084)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102140747660685081)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:17::'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102143593186685084)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102140747660685081)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102144014386685085)
,p_event_id=>wwv_flow_imp.id(66102143593186685084)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102140747660685081)
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Tipos Evidencia'
,p_alias=>'TIPOS-EVIDENCIA'
,p_page_mode=>'MODAL'
,p_step_title=>'Tipos Evidencia'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001843Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102133294002685073)
,p_plug_name=>'Tipos Evidencia'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TIPOS_EVIDENCIA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102136365731685077)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102136763704685078)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102136365731685077)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102138112966685079)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102136365731685077)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_ID_TIPO_EVIDENCIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102138505351685079)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102136365731685077)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_ID_TIPO_EVIDENCIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102138983950685079)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102136365731685077)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_ID_TIPO_EVIDENCIA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102133523210685075)
,p_name=>'P17_ID_TIPO_EVIDENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102133294002685073)
,p_item_source_plug_id=>wwv_flow_imp.id(66102133294002685073)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Tipo Evidencia'
,p_source=>'ID_TIPO_EVIDENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102133972313685075)
,p_name=>'P17_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102133294002685073)
,p_item_source_plug_id=>wwv_flow_imp.id(66102133294002685073)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102134305904685076)
,p_name=>'P17_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102133294002685073)
,p_item_source_plug_id=>wwv_flow_imp.id(66102133294002685073)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102134724063685076)
,p_name=>'P17_EXTENSIONES_PERMITIDAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102133294002685073)
,p_item_source_plug_id=>wwv_flow_imp.id(66102133294002685073)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Extensiones Permitidas'
,p_source=>'EXTENSIONES_PERMITIDAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102136804879685078)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102136763704685078)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102137653087685078)
,p_event_id=>wwv_flow_imp.id(66102136804879685078)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102139714709685080)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102133294002685073)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Tipos Evidencia'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102139714709685080
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102140116309685080)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102140116309685080
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102139347403685080)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102133294002685073)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Tipos Evidencia'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102139347403685080
,p_created_on=>wwv_flow_imp.dz('20250719001845Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001845Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Usuario Roles'
,p_alias=>'USUARIO-ROLES'
,p_step_title=>'Usuario Roles'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102155083560685802)
,p_plug_name=>'Usuario Roles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USUARIO_ROLES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Usuario Roles'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102155180468685802)
,p_name=>'Usuario Roles'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_USUARIO'
,p_base_pk2=>'ID_ROL'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_ID_USUARIO,P19_ID_ROL:\#ID_USUARIO#\,\#ID_ROL#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102155180468685802
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102155849589685804)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Usuario'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102156229300685804)
,p_db_column_name=>'ID_ROL'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Id Rol'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102156648810685804)
,p_db_column_name=>'FECHA_ASIGNACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Asignacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102917676302699779)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029177'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_ROL:FECHA_ASIGNACION'
,p_sort_column_1=>'ID_ROL'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102158332534685805)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102157158548685805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102155083560685802)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102157469743685805)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102155083560685802)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102157957975685805)
,p_event_id=>wwv_flow_imp.id(66102157469743685805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102155083560685802)
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Usuario Role'
,p_alias=>'USUARIO-ROLE'
,p_page_mode=>'MODAL'
,p_step_title=>'Usuario Role'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001851Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102147886245685795)
,p_plug_name=>'Usuario Role'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USUARIO_ROLES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102150607851685799)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102151098715685799)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102150607851685799)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102152402953685800)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102150607851685799)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P19_ID_USUARIO is not null and :P19_ID_ROL is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102152886929685800)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102150607851685799)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P19_ID_USUARIO is not null and :P19_ID_ROL is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102153273017685801)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102150607851685799)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P19_ID_USUARIO is null or :P19_ID_ROL is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102148123016685797)
,p_name=>'P19_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102147886245685795)
,p_item_source_plug_id=>wwv_flow_imp.id(66102147886245685795)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Usuario'
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102148596192685797)
,p_name=>'P19_ID_ROL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102147886245685795)
,p_item_source_plug_id=>wwv_flow_imp.id(66102147886245685795)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Rol'
,p_source=>'ID_ROL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102148909780685798)
,p_name=>'P19_FECHA_ASIGNACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102147886245685795)
,p_item_source_plug_id=>wwv_flow_imp.id(66102147886245685795)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Asignacion'
,p_source=>'FECHA_ASIGNACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102149415920685798)
,p_validation_name=>'P19_FECHA_ASIGNACION must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P19_FECHA_ASIGNACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102148909780685798)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102151190577685799)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102151098715685799)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102151942728685800)
,p_event_id=>wwv_flow_imp.id(66102151190577685799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102154040142685801)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102147886245685795)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Usuario Role'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102154040142685801
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102154459584685801)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102154459584685801
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102153604041685801)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102147886245685795)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Usuario Role'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102153604041685801
,p_created_on=>wwv_flow_imp.dz('20250719001853Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001853Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Edificios'
,p_alias=>'EDIFICIOS1'
,p_step_title=>'Edificios'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102172930909686534)
,p_plug_name=>'Edificios'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EDIFICIOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Edificios'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102173035741686534)
,p_name=>'Edificios'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_EDIFICIO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_ID_EDIFICIO:\#ID_EDIFICIO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102173035741686534
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102173770481686536)
,p_db_column_name=>'ID_EDIFICIO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Edificio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102174135000686536)
,p_db_column_name=>'ID_CAMPUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Campus'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102162334179686525)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102174575454686536)
,p_db_column_name=>'NOMBRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102174939171686537)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102175368563686537)
,p_db_column_name=>'AREA_CONSTRUIDA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Area Construida'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102175783988686537)
,p_db_column_name=>'ES_EDIFICIO_INTELIGENTE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Es Edificio Inteligente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102176143455686537)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102176597902686538)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102923426499699783)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029235'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CAMPUS:NOMBRE:DESCRIPCION:AREA_CONSTRUIDA:ES_EDIFICIO_INTELIGENTE:FECHA_CREACION:FECHA_ACTUALIZACION'
,p_sort_column_1=>'ID_CAMPUS'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102178294021686539)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102177000482686538)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102172930909686534)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:21::'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102177316192686538)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102172930909686534)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102177807905686539)
,p_event_id=>wwv_flow_imp.id(66102177316192686538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102172930909686534)
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Edificios'
,p_alias=>'EDIFICIOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Edificios'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001858Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102161555668686523)
,p_plug_name=>'Edificios'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EDIFICIOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102168539894686530)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102168947346686530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102168539894686530)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102170347676686531)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102168539894686530)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_ID_EDIFICIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102170710717686532)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102168539894686530)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_ID_EDIFICIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102171159982686532)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102168539894686530)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_ID_EDIFICIO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102161802575686525)
,p_name=>'P21_ID_EDIFICIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_item_source_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Edificio'
,p_source=>'ID_EDIFICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102162287870686525)
,p_name=>'P21_ID_CAMPUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_item_source_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Campus'
,p_source=>'ID_CAMPUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMPUS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102162931765686526)
,p_name=>'P21_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_item_source_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102163385863686526)
,p_name=>'P21_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_item_source_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>250
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102163748952686527)
,p_name=>'P21_AREA_CONSTRUIDA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_item_source_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area Construida'
,p_source=>'AREA_CONSTRUIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102164158179686527)
,p_name=>'P21_ES_EDIFICIO_INTELIGENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_item_source_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Es Edificio Inteligente'
,p_source=>'ES_EDIFICIO_INTELIGENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102164537596686527)
,p_name=>'P21_FECHA_CREACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_item_source_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Creacion'
,p_source=>'FECHA_CREACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102165357763686528)
,p_name=>'P21_FECHA_ACTUALIZACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_item_source_plug_id=>wwv_flow_imp.id(66102161555668686523)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102165023348686528)
,p_validation_name=>'P21_FECHA_CREACION must be timestamp'
,p_validation_sequence=>60
,p_validation=>'P21_FECHA_CREACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102164537596686527)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102165803888686528)
,p_validation_name=>'P21_FECHA_ACTUALIZACION must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P21_FECHA_ACTUALIZACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102165357763686528)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102169044465686530)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102168947346686530)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102169868656686531)
,p_event_id=>wwv_flow_imp.id(66102169044465686530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102171992665686533)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102161555668686523)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Edificios'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102171992665686533
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102172369341686533)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102172369341686533
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102171569724686532)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102161555668686523)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Edificios'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102171569724686532
,p_created_on=>wwv_flow_imp.dz('20250719001900Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001900Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Espacios Abiertos'
,p_alias=>'ESPACIOS-ABIERTOS1'
,p_step_title=>'Espacios Abiertos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102191401417687269)
,p_plug_name=>'Espacios Abiertos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ESPACIOS_ABIERTOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Espacios Abiertos'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102191514539687269)
,p_name=>'Espacios Abiertos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_ESPACIO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP:P23_ID_ESPACIO:\#ID_ESPACIO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102191514539687269
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102192213374687271)
,p_db_column_name=>'ID_ESPACIO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Espacio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102192613147687272)
,p_db_column_name=>'ID_CAMPUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Campus'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102162334179686525)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102193009878687272)
,p_db_column_name=>'TIPO_ESPACIO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Espacio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102193473741687272)
,p_db_column_name=>'AREA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Area'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102193891543687272)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102194205400687273)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102935298023699792)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029353'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CAMPUS:TIPO_ESPACIO:AREA:DESCRIPCION:FECHA_REGISTRO'
,p_sort_column_1=>'ID_CAMPUS'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102195903218687274)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102194757383687273)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102191401417687269)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:23::'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102195016626687273)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102191401417687269)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102195558764687274)
,p_event_id=>wwv_flow_imp.id(66102195016626687273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102191401417687269)
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Espacios Abiertos'
,p_alias=>'ESPACIOS-ABIERTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Espacios Abiertos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001905Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102182108413687260)
,p_plug_name=>'Espacios Abiertos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ESPACIOS_ABIERTOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102187065572687266)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102187451292687266)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102187065572687266)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102188836956687267)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102187065572687266)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P23_ID_ESPACIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102189289484687267)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102187065572687266)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P23_ID_ESPACIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102189656811687268)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102187065572687266)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P23_ID_ESPACIO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102182423896687262)
,p_name=>'P23_ID_ESPACIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_item_source_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Espacio'
,p_source=>'ID_ESPACIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102182898133687262)
,p_name=>'P23_ID_CAMPUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_item_source_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Campus'
,p_source=>'ID_CAMPUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMPUS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102183229718687263)
,p_name=>'P23_TIPO_ESPACIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_item_source_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo Espacio'
,p_source=>'TIPO_ESPACIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102183695629687263)
,p_name=>'P23_AREA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_item_source_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area'
,p_source=>'AREA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102184016607687264)
,p_name=>'P23_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_item_source_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102184426978687264)
,p_name=>'P23_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_item_source_plug_id=>wwv_flow_imp.id(66102182108413687260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102184966361687264)
,p_validation_name=>'P23_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>50
,p_validation=>'P23_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102184426978687264)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102187578103687266)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102187451292687266)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102188390995687267)
,p_event_id=>wwv_flow_imp.id(66102187578103687266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102190410340687268)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102182108413687260)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Espacios Abiertos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102190410340687268
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102190862819687268)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102190862819687268
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102190051107687268)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102182108413687260)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Espacios Abiertos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102190051107687268
,p_created_on=>wwv_flow_imp.dz('20250719001907Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001907Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Areas Verdes'
,p_alias=>'AREAS-VERDES'
,p_step_title=>'Areas Verdes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102212510162688065)
,p_plug_name=>'Areas Verdes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AREAS_VERDES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Areas Verdes'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102212683637688065)
,p_name=>'Areas Verdes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_AREA_VERDE'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP:P25_ID_AREA_VERDE:\#ID_AREA_VERDE#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102212683637688065
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102213335107688067)
,p_db_column_name=>'ID_AREA_VERDE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Area Verde'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102213719390688068)
,p_db_column_name=>'ID_CAMPUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Campus'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102162334179686525)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102214142092688068)
,p_db_column_name=>'TIPO_VEGETACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Vegetacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102214573102688068)
,p_db_column_name=>'AREA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Area'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102214934248688068)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102215314033688069)
,p_db_column_name=>'TIENE_PLAN_CONSERVACION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tiene Plan Conservacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102215727189688069)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102944614352699800)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029447'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CAMPUS:TIPO_VEGETACION:AREA:DESCRIPCION:TIENE_PLAN_CONSERVACION:FECHA_REGISTRO'
,p_sort_column_1=>'ID_CAMPUS'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102217484526688070)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102216254320688069)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102212510162688065)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:25::'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102216578261688070)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102212510162688065)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102217022959688070)
,p_event_id=>wwv_flow_imp.id(66102216578261688070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102212510162688065)
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Areas Verde'
,p_alias=>'AREAS-VERDE'
,p_page_mode=>'MODAL'
,p_step_title=>'Areas Verde'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001913Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102202568115688055)
,p_plug_name=>'Areas Verde'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AREAS_VERDES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102208177534688061)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102208545717688062)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102208177534688061)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102209930008688063)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102208177534688061)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P25_ID_AREA_VERDE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102210374148688063)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102208177534688061)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P25_ID_AREA_VERDE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102210746205688063)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102208177534688061)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P25_ID_AREA_VERDE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102202837966688056)
,p_name=>'P25_ID_AREA_VERDE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_item_source_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Area Verde'
,p_source=>'ID_AREA_VERDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102203280024688057)
,p_name=>'P25_ID_CAMPUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_item_source_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Campus'
,p_source=>'ID_CAMPUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMPUS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102203656033688057)
,p_name=>'P25_TIPO_VEGETACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_item_source_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo Vegetacion'
,p_source=>'TIPO_VEGETACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102204028567688058)
,p_name=>'P25_AREA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_item_source_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area'
,p_source=>'AREA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102204473248688058)
,p_name=>'P25_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_item_source_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102204801518688059)
,p_name=>'P25_TIENE_PLAN_CONSERVACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_item_source_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tiene Plan Conservacion'
,p_source=>'TIENE_PLAN_CONSERVACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102205205922688059)
,p_name=>'P25_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_item_source_plug_id=>wwv_flow_imp.id(66102202568115688055)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102205784278688060)
,p_validation_name=>'P25_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>60
,p_validation=>'P25_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102205205922688059)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102208679088688062)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102208545717688062)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102209470587688063)
,p_event_id=>wwv_flow_imp.id(66102208679088688062)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102211522758688064)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102202568115688055)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Areas Verde'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102211522758688064
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102211990250688064)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102211990250688064
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102211143153688064)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102202568115688055)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Areas Verde'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102211143153688064
,p_created_on=>wwv_flow_imp.dz('20250719001915Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001915Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Zonas Permeables'
,p_alias=>'ZONAS-PERMEABLES'
,p_step_title=>'Zonas Permeables'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102231394474688817)
,p_plug_name=>'Zonas Permeables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ZONAS_PERMEABLES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Zonas Permeables'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102231457996688817)
,p_name=>'Zonas Permeables'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_ZONA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:RP:P27_ID_ZONA:\#ID_ZONA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102231457996688817
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102232187051688819)
,p_db_column_name=>'ID_ZONA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Zona'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102232583288688819)
,p_db_column_name=>'ID_CAMPUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Campus'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102162334179686525)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102232952092688819)
,p_db_column_name=>'TIPO_INFRAESTRUCTURA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Infraestructura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102233336745688820)
,p_db_column_name=>'AREA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Area'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102233765599688820)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102234122620688820)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102955293144699808)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029553'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CAMPUS:TIPO_INFRAESTRUCTURA:AREA:DESCRIPCION:FECHA_REGISTRO'
,p_sort_column_1=>'ID_CAMPUS'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102235870226688821)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102234697347688820)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102231394474688817)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:27::'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102234941906688821)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102231394474688817)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102235423653688821)
,p_event_id=>wwv_flow_imp.id(66102234941906688821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102231394474688817)
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Zonas Permeable'
,p_alias=>'ZONAS-PERMEABLE'
,p_page_mode=>'MODAL'
,p_step_title=>'Zonas Permeable'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001921Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102222039336688808)
,p_plug_name=>'Zonas Permeable'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ZONAS_PERMEABLES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102226903342688813)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102227389910688814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102226903342688813)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102228798142688815)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102226903342688813)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P27_ID_ZONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102229178469688815)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102226903342688813)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P27_ID_ZONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102229500512688815)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102226903342688813)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P27_ID_ZONA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102222316940688809)
,p_name=>'P27_ID_ZONA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_item_source_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Zona'
,p_source=>'ID_ZONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102222791869688810)
,p_name=>'P27_ID_CAMPUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_item_source_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Campus'
,p_source=>'ID_CAMPUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMPUS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102223160800688810)
,p_name=>'P27_TIPO_INFRAESTRUCTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_item_source_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo Infraestructura'
,p_source=>'TIPO_INFRAESTRUCTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102223523288688811)
,p_name=>'P27_AREA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_item_source_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area'
,p_source=>'AREA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102223931876688811)
,p_name=>'P27_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_item_source_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102224304909688811)
,p_name=>'P27_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_item_source_plug_id=>wwv_flow_imp.id(66102222039336688808)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102224844327688812)
,p_validation_name=>'P27_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>50
,p_validation=>'P27_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102224304909688811)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102227432008688814)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102227389910688814)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102228264861688814)
,p_event_id=>wwv_flow_imp.id(66102227432008688814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102230366258688816)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102222039336688808)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Zonas Permeable'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102230366258688816
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102230784064688816)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102230784064688816
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102229944012688815)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102222039336688808)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Zonas Permeable'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102229944012688815
,p_created_on=>wwv_flow_imp.dz('20250719001923Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001923Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Infraestructura Seguridad'
,p_alias=>'INFRAESTRUCTURA-SEGURIDAD1'
,p_step_title=>'Infraestructura Seguridad'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102259447770689553)
,p_plug_name=>'Infraestructura Seguridad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'INFRAESTRUCTURA_SEGURIDAD'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Infraestructura Seguridad'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102259563958689553)
,p_name=>'Infraestructura Seguridad'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_INFRAESTRUCTURA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:RP:P29_ID_INFRAESTRUCTURA:\#ID_INFRAESTRUCTURA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102259563958689553
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102260277188689555)
,p_db_column_name=>'ID_INFRAESTRUCTURA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Infraestructura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102260642037689555)
,p_db_column_name=>'ID_CAMPUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Campus'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102162334179686525)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102261029670689556)
,p_db_column_name=>'TIPO_SEGURIDAD'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Seguridad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102261429406689556)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102261822375689556)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102262207588689556)
,p_db_column_name=>'ESTADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102262696234689557)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102964665285699815)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029647'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CAMPUS:TIPO_SEGURIDAD:CANTIDAD:DESCRIPCION:ESTADO:FECHA_REGISTRO'
,p_sort_column_1=>'ID_CAMPUS'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102264394510689558)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102263166090689557)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102259447770689553)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:29::'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102263495760689557)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102259447770689553)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102263904082689557)
,p_event_id=>wwv_flow_imp.id(66102263495760689557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102259447770689553)
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Infraestructura Seguridad'
,p_alias=>'INFRAESTRUCTURA-SEGURIDAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Infraestructura Seguridad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001928Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102249452286689544)
,p_plug_name=>'Infraestructura Seguridad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'INFRAESTRUCTURA_SEGURIDAD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102255051725689550)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102255441293689550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102255051725689550)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102256847278689551)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102255051725689550)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P29_ID_INFRAESTRUCTURA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102257267250689551)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102255051725689550)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P29_ID_INFRAESTRUCTURA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102257690195689552)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102255051725689550)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P29_ID_INFRAESTRUCTURA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102249736664689545)
,p_name=>'P29_ID_INFRAESTRUCTURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_item_source_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Infraestructura'
,p_source=>'ID_INFRAESTRUCTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102250187430689546)
,p_name=>'P29_ID_CAMPUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_item_source_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Campus'
,p_source=>'ID_CAMPUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMPUS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102250591464689546)
,p_name=>'P29_TIPO_SEGURIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_item_source_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo Seguridad'
,p_source=>'TIPO_SEGURIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102250955728689547)
,p_name=>'P29_CANTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_item_source_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cantidad'
,p_source=>'CANTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102251343505689547)
,p_name=>'P29_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_item_source_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102251797828689547)
,p_name=>'P29_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_item_source_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102252181168689548)
,p_name=>'P29_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_item_source_plug_id=>wwv_flow_imp.id(66102249452286689544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102252611903689548)
,p_validation_name=>'P29_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>60
,p_validation=>'P29_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102252181168689548)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102255529003689550)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102255441293689550)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102256322608689551)
,p_event_id=>wwv_flow_imp.id(66102255529003689550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102258452784689552)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102249452286689544)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Infraestructura Seguridad'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102258452784689552
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102258823817689552)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102258823817689552
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102258099417689552)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102249452286689544)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Infraestructura Seguridad'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102258099417689552
,p_created_on=>wwv_flow_imp.dz('20250719001930Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001930Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Presupuesto Sostenibilidad'
,p_alias=>'PRESUPUESTO-SOSTENIBILIDAD1'
,p_step_title=>'Presupuesto Sostenibilidad'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102278584266690291)
,p_plug_name=>'Presupuesto Sostenibilidad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRESUPUESTO_SOSTENIBILIDAD'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Presupuesto Sostenibilidad'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102278688497690291)
,p_name=>'Presupuesto Sostenibilidad'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_PRESUPUESTO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:RP:P31_ID_PRESUPUESTO:\#ID_PRESUPUESTO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102278688497690291
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102279305372690293)
,p_db_column_name=>'ID_PRESUPUESTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Presupuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102279722370690293)
,p_db_column_name=>'ID_CAMPUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Campus'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102162334179686525)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102280102520690294)
,p_db_column_name=>unistr('A\00D1O')
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('A\00F1o')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102280509131690294)
,p_db_column_name=>'PORCENTAJE_PRESUPUESTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Porcentaje Presupuesto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102280992583690294)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102281362157690295)
,p_db_column_name=>'RUBRO_INVERSION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rubro Inversion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102281794642690295)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102282182813690295)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102975219410699823)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ID_CAMPUS:A\00D1O:PORCENTAJE_PRESUPUESTO:MONTO_TOTAL:RUBRO_INVERSION:DESCRIPCION:FECHA_REGISTRO')
,p_sort_column_1=>'ID_CAMPUS'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102283832389690297)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001938Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001938Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102282698494690296)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102278584266690291)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:31::'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102282948573690296)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102278584266690291)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001938Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001938Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102283429301690296)
,p_event_id=>wwv_flow_imp.id(66102282948573690296)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102278584266690291)
,p_created_on=>wwv_flow_imp.dz('20250719001938Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001938Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Presupuesto Sostenibilidad'
,p_alias=>'PRESUPUESTO-SOSTENIBILIDAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Presupuesto Sostenibilidad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001936Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102267847338690280)
,p_plug_name=>'Presupuesto Sostenibilidad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRESUPUESTO_SOSTENIBILIDAD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102274128250690287)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102274560649690288)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102274128250690287)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102275973243690289)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102274128250690287)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P31_ID_PRESUPUESTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001938Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102276364104690289)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102274128250690287)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P31_ID_PRESUPUESTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102276784952690289)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102274128250690287)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P31_ID_PRESUPUESTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102268126990690282)
,p_name=>'P31_ID_PRESUPUESTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_item_source_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Presupuesto'
,p_source=>'ID_PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102268507588690283)
,p_name=>'P31_ID_CAMPUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_item_source_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Campus'
,p_source=>'ID_CAMPUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CAMPUS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102268927010690283)
,p_name=>unistr('P31_A\00D1O')
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_item_source_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('A\00F1o')
,p_source=>unistr('A\00D1O')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102269339749690284)
,p_name=>'P31_PORCENTAJE_PRESUPUESTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_item_source_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Porcentaje Presupuesto'
,p_source=>'PORCENTAJE_PRESUPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102269778222690284)
,p_name=>'P31_MONTO_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_item_source_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Monto Total'
,p_source=>'MONTO_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102270141213690284)
,p_name=>'P31_RUBRO_INVERSION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_item_source_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rubro Inversion'
,p_source=>'RUBRO_INVERSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102270550030690285)
,p_name=>'P31_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_item_source_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102270941833690285)
,p_name=>'P31_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_item_source_plug_id=>wwv_flow_imp.id(66102267847338690280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102271484761690285)
,p_validation_name=>'P31_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P31_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102270941833690285)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102274640203690288)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102274560649690288)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102275417945690288)
,p_event_id=>wwv_flow_imp.id(66102274640203690288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102277500490690290)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102267847338690280)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Presupuesto Sostenibilidad'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102277500490690290
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102277927832690290)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102277927832690290
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102277173638690289)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102267847338690280)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Presupuesto Sostenibilidad'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102277173638690289
,p_created_on=>wwv_flow_imp.dz('20250719001937Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001937Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Carreras'
,p_alias=>'CARRERAS1'
,p_step_title=>'Carreras'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002624Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102495575498691053)
,p_plug_name=>'Carreras'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CARRERAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Carreras'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002624Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102495651295691053)
,p_name=>'Carreras'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_CARRERA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:RP:P33_ID_CARRERA:\#ID_CARRERA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102495651295691053
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002624Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102496370560691055)
,p_db_column_name=>'ID_CARRERA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Carrera'
,p_column_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:40,RR:IR_ID_CARRERA:\#NOMBRE#\'
,p_column_linktext=>'#ID_CARRERA#'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102496710204691056)
,p_db_column_name=>'ID_FACULTAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Facultad'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(66102288562777691047)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002624Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102497158826691056)
,p_db_column_name=>'NOMBRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102497519537691056)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102987028405699832)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029871'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CARRERA:ID_FACULTAD:NOMBRE:DESCRIPCION:'
,p_sort_column_1=>'ID_CARRERA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102499224911691057)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102498037220691057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102495575498691053)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:33::'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102498343432691057)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102495575498691053)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102498809137691057)
,p_event_id=>wwv_flow_imp.id(66102498343432691057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102495575498691053)
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'Carreras'
,p_alias=>'CARRERAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Carreras'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001943Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102287796097691044)
,p_plug_name=>'Carreras'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CARRERAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102491137569691049)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102491544234691050)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102491137569691049)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102492947504691051)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102491137569691049)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P33_ID_CARRERA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102493343198691051)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102491137569691049)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P33_ID_CARRERA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102493738277691051)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102491137569691049)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P33_ID_CARRERA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102288009774691046)
,p_name=>'P33_ID_CARRERA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102287796097691044)
,p_item_source_plug_id=>wwv_flow_imp.id(66102287796097691044)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Carrera'
,p_source=>'ID_CARRERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102288440253691047)
,p_name=>'P33_ID_FACULTAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102287796097691044)
,p_item_source_plug_id=>wwv_flow_imp.id(66102287796097691044)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Facultad'
,p_source=>'ID_FACULTAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FACULTADES.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102289190431691048)
,p_name=>'P33_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102287796097691044)
,p_item_source_plug_id=>wwv_flow_imp.id(66102287796097691044)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102289517079691048)
,p_name=>'P33_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102287796097691044)
,p_item_source_plug_id=>wwv_flow_imp.id(66102287796097691044)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102491653178691050)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102491544234691050)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102492477257691050)
,p_event_id=>wwv_flow_imp.id(66102491653178691050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102494527286691052)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102287796097691044)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Carreras'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102494527286691052
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102494956079691052)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102494956079691052
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102494151090691051)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102287796097691044)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Carreras'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102494151090691051
,p_created_on=>wwv_flow_imp.dz('20250719001945Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001945Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Asignaturas'
,p_alias=>'ASIGNATURAS1'
,p_step_title=>'Asignaturas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719035213Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102515870631691396)
,p_plug_name=>'Asignaturas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ASIGNATURAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Asignaturas'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719035213Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102515917650691396)
,p_name=>'Asignaturas'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_ASIGNATURA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:RP:P35_ID_ASIGNATURA:\#ID_ASIGNATURA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102515917650691396
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719035213Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102516746088691399)
,p_db_column_name=>'ID_ASIGNATURA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Asignatura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102517149663691399)
,p_db_column_name=>'ID_CARRERA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Carrera'
,p_column_link=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:46,RR:IR_ID_ASIGNATURA:\#ID_ASIGNATURA#\'
,p_column_linktext=>'#ID_CARRERA#'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(66102502585332691384)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719035213Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102517598857691399)
,p_db_column_name=>'NOMBRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102517930384691400)
,p_db_column_name=>'CODIGO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102518394902691400)
,p_db_column_name=>'CREDITOS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Creditos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102518782886691400)
,p_db_column_name=>'CONTENIDO_SUSTENTABILIDAD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Contenido Sustentabilidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102519135574691400)
,p_db_column_name=>'PORCENTAJE_CONTENIDO_SUSTENTABLE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Porcentaje Contenido Sustentable'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102519586445691401)
,p_db_column_name=>'SEMESTRE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Semestre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102519949794691401)
,p_db_column_name=>unistr('A\00D1O_ACADEMICO')
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('A\00F1o Academico')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102520339850691401)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Descripcion'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102520727452691402)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102521163091691402)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66102993489987699837)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661029935'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ID_CARRERA:NOMBRE:CODIGO:CREDITOS:CONTENIDO_SUSTENTABILIDAD:PORCENTAJE_CONTENIDO_SUSTENTABLE:SEMESTRE:A\00D1O_ACADEMICO:DESCRIPCION:FECHA_CREACION:FECHA_ACTUALIZACION')
,p_sort_column_1=>'ID_CARRERA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102522864581691404)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001949Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102521637569691403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102515870631691396)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:35::'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001949Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102521942468691403)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102515870631691396)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001949Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102522400257691403)
,p_event_id=>wwv_flow_imp.id(66102521942468691403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102515870631691396)
,p_created_on=>wwv_flow_imp.dz('20250719001949Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001949Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'Asignaturas'
,p_alias=>'ASIGNATURAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Asignaturas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001946Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102501746623691381)
,p_plug_name=>'Asignaturas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ASIGNATURAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102511572185691393)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102511913901691393)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102511572185691393)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102513383674691394)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102511572185691393)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P35_ID_ASIGNATURA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001949Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102513798154691394)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102511572185691393)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P35_ID_ASIGNATURA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102514134304691395)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102511572185691393)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P35_ID_ASIGNATURA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102502023853691383)
,p_name=>'P35_ID_ASIGNATURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Asignatura'
,p_source=>'ID_ASIGNATURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102502411105691384)
,p_name=>'P35_ID_CARRERA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Carrera'
,p_source=>'ID_CARRERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CARRERAS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102503113677691384)
,p_name=>'P35_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102503590203691385)
,p_name=>'P35_CODIGO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo'
,p_source=>'CODIGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102503951246691385)
,p_name=>'P35_CREDITOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creditos'
,p_source=>'CREDITOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102504332942691386)
,p_name=>'P35_CONTENIDO_SUSTENTABILIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contenido Sustentabilidad'
,p_source=>'CONTENIDO_SUSTENTABILIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102504764811691386)
,p_name=>'P35_PORCENTAJE_CONTENIDO_SUSTENTABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Porcentaje Contenido Sustentable'
,p_source=>'PORCENTAJE_CONTENIDO_SUSTENTABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102505192426691387)
,p_name=>'P35_SEMESTRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Semestre'
,p_source=>'SEMESTRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102505562444691387)
,p_name=>unistr('P35_A\00D1O_ACADEMICO')
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('A\00F1o Academico')
,p_source=>unistr('A\00D1O_ACADEMICO')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102505980175691388)
,p_name=>'P35_DESCRIPCION'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102506342503691388)
,p_name=>'P35_FECHA_CREACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Creacion'
,p_source=>'FECHA_CREACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102507161646691389)
,p_name=>'P35_FECHA_ACTUALIZACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_item_source_plug_id=>wwv_flow_imp.id(66102501746623691381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102506849051691389)
,p_validation_name=>'P35_FECHA_CREACION must be timestamp'
,p_validation_sequence=>100
,p_validation=>'P35_FECHA_CREACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102506342503691388)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102507688188691389)
,p_validation_name=>'P35_FECHA_ACTUALIZACION must be timestamp'
,p_validation_sequence=>110
,p_validation=>'P35_FECHA_ACTUALIZACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102507161646691389)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102512003591691393)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102511913901691393)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102512875463691394)
,p_event_id=>wwv_flow_imp.id(66102512003591691393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102514995714691395)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102501746623691381)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Asignaturas'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102514995714691395
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102515326121691396)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102515326121691396
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102514542364691395)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102501746623691381)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Asignaturas'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102514542364691395
,p_created_on=>wwv_flow_imp.dz('20250719001948Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001948Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
,p_name=>'Publicaciones Academicas'
,p_alias=>'PUBLICACIONES-ACADEMICAS1'
,p_step_title=>'Publicaciones Academicas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102563297132692151)
,p_plug_name=>'Publicaciones Academicas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PUBLICACIONES_ACADEMICAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Publicaciones Academicas'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102563338532692151)
,p_name=>'Publicaciones Academicas'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_PUBLICACION'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:RP:P37_ID_PUBLICACION:\#ID_PUBLICACION#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102563338532692151
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102564019500692153)
,p_db_column_name=>'ID_PUBLICACION'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Publicacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102564449613692154)
,p_db_column_name=>'ID_TIPO_PUBLICACION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Tipo Publicacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102548448489692138)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102564879497692154)
,p_db_column_name=>'TITULO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Titulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102565238196692154)
,p_db_column_name=>'AUTORES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Autores'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102565621190692154)
,p_db_column_name=>'REVISTA_EDITORIAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Revista Editorial'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102566081025692155)
,p_db_column_name=>unistr('A\00D1O_PUBLICACION')
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('A\00F1o Publicacion')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102566468068692155)
,p_db_column_name=>'DOI'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Doi'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102566872865692155)
,p_db_column_name=>'ISBN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Isbn'
,p_column_link=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:48,RR:IR_ID_PUBLICACION:\#ID_PUBLICACION#\'
,p_column_linktext=>'#ISBN#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102567227889692156)
,p_db_column_name=>'TEMA_SUSTENTABILIDAD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Tema Sustentabilidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102567604767692156)
,p_db_column_name=>'PALABRAS_CLAVE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Palabras Clave'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102568044367692156)
,p_db_column_name=>'RESUMEN'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Resumen'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102568463951692156)
,p_db_column_name=>'URL_ACCESO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Url Acceso'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102568879125692157)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102569270996692157)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103010383523699850)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661030104'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ID_TIPO_PUBLICACION:TITULO:AUTORES:REVISTA_EDITORIAL:A\00D1O_PUBLICACION:DOI:ISBN:TEMA_SUSTENTABILIDAD:PALABRAS_CLAVE:RESUMEN:URL_ACCESO:FECHA_REGISTRO:FECHA_ACTUALIZACION')
,p_sort_column_1=>'ID_TIPO_PUBLICACION'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102570920335692158)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102569704345692158)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102563297132692151)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:37::'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102570092160692158)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102563297132692151)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102570538411692158)
,p_event_id=>wwv_flow_imp.id(66102570092160692158)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102563297132692151)
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_imp_page.create_page(
 p_id=>37
,p_name=>'Publicaciones Academicas'
,p_alias=>'PUBLICACIONES-ACADEMICAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Publicaciones Academicas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719001954Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102547638040692136)
,p_plug_name=>'Publicaciones Academicas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PUBLICACIONES_ACADEMICAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102558846797692147)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102559293408692148)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102558846797692147)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102560690995692149)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102558846797692147)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P37_ID_PUBLICACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102561033850692149)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102558846797692147)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P37_ID_PUBLICACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102561499794692149)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102558846797692147)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P37_ID_PUBLICACION'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102547944663692138)
,p_name=>'P37_ID_PUBLICACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Publicacion'
,p_source=>'ID_PUBLICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102548350132692138)
,p_name=>'P37_ID_TIPO_PUBLICACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Tipo Publicacion'
,p_source=>'ID_TIPO_PUBLICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIPOS_PUBLICACION.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102549018316692139)
,p_name=>'P37_TITULO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Titulo'
,p_source=>'TITULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102549473898692139)
,p_name=>'P37_AUTORES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Autores'
,p_source=>'AUTORES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102549849805692140)
,p_name=>'P37_REVISTA_EDITORIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Revista Editorial'
,p_source=>'REVISTA_EDITORIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102550257788692140)
,p_name=>unistr('P37_A\00D1O_PUBLICACION')
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('A\00F1o Publicacion')
,p_source=>unistr('A\00D1O_PUBLICACION')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102550620128692141)
,p_name=>'P37_DOI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Doi'
,p_source=>'DOI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102551005966692141)
,p_name=>'P37_ISBN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Isbn'
,p_source=>'ISBN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102551457711692141)
,p_name=>'P37_TEMA_SUSTENTABILIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tema Sustentabilidad'
,p_source=>'TEMA_SUSTENTABILIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102551808106692142)
,p_name=>'P37_PALABRAS_CLAVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Palabras Clave'
,p_source=>'PALABRAS_CLAVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102552259875692142)
,p_name=>'P37_RESUMEN'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Resumen'
,p_source=>'RESUMEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102552679650692143)
,p_name=>'P37_URL_ACCESO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Url Acceso'
,p_source=>'URL_ACCESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102553082147692143)
,p_name=>'P37_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102553850857692144)
,p_name=>'P37_FECHA_ACTUALIZACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_item_source_plug_id=>wwv_flow_imp.id(66102547638040692136)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102553599249692143)
,p_validation_name=>'P37_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P37_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102553082147692143)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102554321851692144)
,p_validation_name=>'P37_FECHA_ACTUALIZACION must be timestamp'
,p_validation_sequence=>130
,p_validation=>'P37_FECHA_ACTUALIZACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102553850857692144)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102559345234692148)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102559293408692148)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102560167277692149)
,p_event_id=>wwv_flow_imp.id(66102559345234692148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102562253564692150)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102547638040692136)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Publicaciones Academicas'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102562253564692150
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102562630579692150)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102562630579692150
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102561878078692150)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102547638040692136)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Publicaciones Academicas'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102561878078692150
,p_created_on=>wwv_flow_imp.dz('20250719001956Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001956Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_imp_page.create_page(
 p_id=>38
,p_name=>'Eventos'
,p_alias=>'EVENTOS1'
,p_step_title=>'Eventos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102593462466692925)
,p_plug_name=>'Eventos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVENTOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Eventos'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102593561636692925)
,p_name=>'Eventos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_EVENTO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:RP:P39_ID_EVENTO:\#ID_EVENTO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102593561636692925
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102594301423692928)
,p_db_column_name=>'ID_EVENTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Evento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102594724098692928)
,p_db_column_name=>'ID_TIPO_EVENTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Tipo Evento'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102578178884692911)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102595163015692929)
,p_db_column_name=>'NOMBRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102595557854692929)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102595956750692929)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102596377615692929)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102596774759692930)
,p_db_column_name=>'LUGAR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Lugar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102597114569692930)
,p_db_column_name=>'ORGANIZADOR'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Organizador'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102597568678692930)
,p_db_column_name=>'TEMA_SUSTENTABILIDAD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Tema Sustentabilidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102597996009692931)
,p_db_column_name=>'NUMERO_PARTICIPANTES'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Numero Participantes'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102598332919692931)
,p_db_column_name=>'ALCANCE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Alcance'
,p_column_link=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:50,RR:IR_ID_EVENTO:\#ID_EVENTO#\'
,p_column_linktext=>'#ALCANCE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102598785483692931)
,p_db_column_name=>'ESTADO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102599191264692931)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102599533850692932)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103029668983699865)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661030297'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_TIPO_EVENTO:NOMBRE:DESCRIPCION:FECHA_INICIO:FECHA_FIN:LUGAR:ORGANIZADOR:TEMA_SUSTENTABILIDAD:NUMERO_PARTICIPANTES:ALCANCE:ESTADO:FECHA_REGISTRO:FECHA_ACTUALIZACION'
,p_sort_column_1=>'ID_TIPO_EVENTO'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102601272304692933)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102600011032692932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102593462466692925)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:39::'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102600354952692932)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102593462466692925)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102600810906692933)
,p_event_id=>wwv_flow_imp.id(66102600354952692932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102593462466692925)
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_imp_page.create_page(
 p_id=>39
,p_name=>'Eventos'
,p_alias=>'EVENTOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Eventos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002002Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102577399245692908)
,p_plug_name=>'Eventos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVENTOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102588913906692921)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102589305826692922)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102588913906692921)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102590709304692923)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102588913906692921)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P39_ID_EVENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102591101489692923)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102588913906692921)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P39_ID_EVENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102591503044692924)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102588913906692921)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P39_ID_EVENTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102577626012692910)
,p_name=>'P39_ID_EVENTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evento'
,p_source=>'ID_EVENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102578083295692911)
,p_name=>'P39_ID_TIPO_EVENTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Tipo Evento'
,p_source=>'ID_TIPO_EVENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIPOS_EVENTO.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102578705383692911)
,p_name=>'P39_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102579195195692912)
,p_name=>'P39_DESCRIPCION'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102579570800692912)
,p_name=>'P39_FECHA_INICIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Inicio'
,p_source=>'FECHA_INICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102579976922692913)
,p_name=>'P39_FECHA_FIN'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Fin'
,p_source=>'FECHA_FIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102580307446692913)
,p_name=>'P39_LUGAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lugar'
,p_source=>'LUGAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102580948753692914)
,p_name=>'P39_ORGANIZADOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organizador'
,p_source=>'ORGANIZADOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102581392337692914)
,p_name=>'P39_TEMA_SUSTENTABILIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tema Sustentabilidad'
,p_source=>'TEMA_SUSTENTABILIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102581728340692915)
,p_name=>'P39_NUMERO_PARTICIPANTES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Numero Participantes'
,p_source=>'NUMERO_PARTICIPANTES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102582173934692915)
,p_name=>'P39_ALCANCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alcance'
,p_source=>'ALCANCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102582582568692916)
,p_name=>'P39_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102582939398692916)
,p_name=>'P39_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102583924026692917)
,p_name=>'P39_FECHA_ACTUALIZACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_item_source_plug_id=>wwv_flow_imp.id(66102577399245692908)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102583626461692917)
,p_validation_name=>'P39_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P39_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102582939398692916)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102584402355692917)
,p_validation_name=>'P39_FECHA_ACTUALIZACION must be timestamp'
,p_validation_sequence=>130
,p_validation=>'P39_FECHA_ACTUALIZACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102583924026692917)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102589428911692922)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102589305826692922)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102590271082692922)
,p_event_id=>wwv_flow_imp.id(66102589428911692922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102592413285692924)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102577399245692908)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Eventos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102592413285692924
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102592864169692924)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102592864169692924
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102591940810692924)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102577399245692908)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Eventos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102591940810692924
,p_created_on=>wwv_flow_imp.dz('20250719002004Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002004Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'Egresados'
,p_alias=>'EGRESADOS1'
,p_step_title=>'Egresados'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102631722770693689)
,p_plug_name=>'Egresados'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EGRESADOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Egresados'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102631847690693689)
,p_name=>'Egresados'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_EGRESADO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:RP:P41_ID_EGRESADO:\#ID_EGRESADO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102631847690693689
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102632588255693691)
,p_db_column_name=>'ID_EGRESADO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Egresado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102632957925693691)
,p_db_column_name=>'NOMBRES'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombres'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102633315987693692)
,p_db_column_name=>'APELLIDOS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apellidos'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102633774829693692)
,p_db_column_name=>'CEDULA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cedula'
,p_column_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:42,RR:IR_ID_EGRESADO:\#NOMBRES#\'
,p_column_linktext=>'#CEDULA#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102634371977693693)
,p_db_column_name=>'EMAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102634789400693693)
,p_db_column_name=>'TELEFONO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102635182118693693)
,p_db_column_name=>'ID_CARRERA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Id Carrera'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102502585332691384)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102635515364693694)
,p_db_column_name=>unistr('A\00D1O_GRADUACION')
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('A\00F1o Graduacion')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102635912652693694)
,p_db_column_name=>'TRABAJA_SUSTENTABILIDAD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Trabaja Sustentabilidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102636381755693695)
,p_db_column_name=>'EMPRESA_ACTUAL'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Empresa Actual'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102636859103693695)
,p_db_column_name=>'CARGO_ACTUAL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Cargo Actual'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102637205389693695)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102637793165693696)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002012Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103048992042699880)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661030490'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('NOMBRES:APELLIDOS:CEDULA:EMAIL:TELEFONO:ID_CARRERA:A\00D1O_GRADUACION:TRABAJA_SUSTENTABILIDAD:EMPRESA_ACTUAL:CARGO_ACTUAL:FECHA_REGISTRO:FECHA_ACTUALIZACION')
,p_sort_column_1=>'NOMBRES'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102639502018693697)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002012Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002012Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102638236151693696)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102631722770693689)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:41::'
,p_created_on=>wwv_flow_imp.dz('20250719002012Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002012Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102638553813693696)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102631722770693689)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002012Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002012Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102639171657693697)
,p_event_id=>wwv_flow_imp.id(66102638553813693696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102631722770693689)
,p_created_on=>wwv_flow_imp.dz('20250719002012Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002012Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'Egresados'
,p_alias=>'EGRESADOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Egresados'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002009Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102617015827693675)
,p_plug_name=>'Egresados'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EGRESADOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102627376715693686)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102627799620693686)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102627376715693686)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102629151868693687)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102627376715693686)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P41_ID_EGRESADO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002012Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102629535814693687)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102627376715693686)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P41_ID_EGRESADO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102629976168693687)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102627376715693686)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P41_ID_EGRESADO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102617316034693676)
,p_name=>'P41_ID_EGRESADO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Egresado'
,p_source=>'ID_EGRESADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102617713795693677)
,p_name=>'P41_NOMBRES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombres'
,p_source=>'NOMBRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102618119868693677)
,p_name=>'P41_APELLIDOS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apellidos'
,p_source=>'APELLIDOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102618517248693678)
,p_name=>'P41_CEDULA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cedula'
,p_source=>'CEDULA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102618964944693678)
,p_name=>'P41_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102619371627693679)
,p_name=>'P41_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Telefono'
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102619761761693679)
,p_name=>'P41_ID_CARRERA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Carrera'
,p_source=>'ID_CARRERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CARRERAS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102620188020693680)
,p_name=>unistr('P41_A\00D1O_GRADUACION')
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('A\00F1o Graduacion')
,p_source=>unistr('A\00D1O_GRADUACION')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102620544880693680)
,p_name=>'P41_TRABAJA_SUSTENTABILIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trabaja Sustentabilidad'
,p_source=>'TRABAJA_SUSTENTABILIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102620948772693681)
,p_name=>'P41_EMPRESA_ACTUAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Empresa Actual'
,p_source=>'EMPRESA_ACTUAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102621347184693681)
,p_name=>'P41_CARGO_ACTUAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cargo Actual'
,p_source=>'CARGO_ACTUAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102621754241693681)
,p_name=>'P41_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102622520328693682)
,p_name=>'P41_FECHA_ACTUALIZACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_item_source_plug_id=>wwv_flow_imp.id(66102617015827693675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102622298618693682)
,p_validation_name=>'P41_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>110
,p_validation=>'P41_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102621754241693681)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102623038234693682)
,p_validation_name=>'P41_FECHA_ACTUALIZACION must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P41_FECHA_ACTUALIZACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102622520328693682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102627885543693686)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102627799620693686)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102628610207693687)
,p_event_id=>wwv_flow_imp.id(66102627885543693686)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102630733783693688)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102617015827693675)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Egresados'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102630733783693688
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102631143539693688)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102631143539693688
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102630340872693688)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102617015827693675)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Egresados'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102630340872693688
,p_created_on=>wwv_flow_imp.dz('20250719002011Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002011Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_imp_page.create_page(
 p_id=>42
,p_name=>'Seguimiento Egresados'
,p_alias=>'SEGUIMIENTO-EGRESADOS1'
,p_step_title=>'Seguimiento Egresados'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102670846458694472)
,p_plug_name=>'Seguimiento Egresados'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SEGUIMIENTO_EGRESADOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Seguimiento Egresados'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102670971883694472)
,p_name=>'Seguimiento Egresados'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_SEGUIMIENTO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:RP:P43_ID_SEGUIMIENTO:\#ID_SEGUIMIENTO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102670971883694472
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102671669889694474)
,p_db_column_name=>'ID_SEGUIMIENTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Seguimiento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002113Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102672008638694475)
,p_db_column_name=>'ID_EGRESADO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Egresado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102659895022694461)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102672448255694475)
,p_db_column_name=>'FECHA_SEGUIMIENTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Seguimiento'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102672869592694475)
,p_db_column_name=>'ESTADO_LABORAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estado Laboral'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102673271455694476)
,p_db_column_name=>'EMPRESA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102673640050694476)
,p_db_column_name=>'CARGO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cargo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102674047898694476)
,p_db_column_name=>'SECTOR_SUSTENTABILIDAD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Sector Sustentabilidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102674481056694477)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102674837755694477)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103066702989699895)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661030668'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_EGRESADO:FECHA_SEGUIMIENTO:ESTADO_LABORAL:EMPRESA:CARGO:SECTOR_SUSTENTABILIDAD:OBSERVACIONES:FECHA_REGISTRO'
,p_sort_column_1=>'ID_EGRESADO'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002113Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102676516683694478)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102675347696694477)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102670846458694472)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:43::'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102675603925694477)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102670846458694472)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102676191522694478)
,p_event_id=>wwv_flow_imp.id(66102675603925694477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102670846458694472)
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_imp_page.create_page(
 p_id=>43
,p_name=>'Seguimiento Egresados'
,p_alias=>'SEGUIMIENTO-EGRESADOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Seguimiento Egresados'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002017Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102658993271694459)
,p_plug_name=>'Seguimiento Egresados'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SEGUIMIENTO_EGRESADOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102666412283694468)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102666866759694468)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102666412283694468)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102668243278694469)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102666412283694468)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P43_ID_SEGUIMIENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102668614255694470)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102666412283694468)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P43_ID_SEGUIMIENTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102669039531694470)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102666412283694468)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P43_ID_SEGUIMIENTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102659301723694460)
,p_name=>'P43_ID_SEGUIMIENTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Seguimiento'
,p_source=>'ID_SEGUIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102659796230694461)
,p_name=>'P43_ID_EGRESADO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Egresado'
,p_source=>'ID_EGRESADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EGRESADOS.NOMBRES'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102660503851694462)
,p_name=>'P43_FECHA_SEGUIMIENTO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Seguimiento'
,p_source=>'FECHA_SEGUIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102660943837694462)
,p_name=>'P43_ESTADO_LABORAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado Laboral'
,p_source=>'ESTADO_LABORAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102661362792694463)
,p_name=>'P43_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Empresa'
,p_source=>'EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102661720933694463)
,p_name=>'P43_CARGO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cargo'
,p_source=>'CARGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102662183928694464)
,p_name=>'P43_SECTOR_SUSTENTABILIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sector Sustentabilidad'
,p_source=>'SECTOR_SUSTENTABILIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102662515940694464)
,p_name=>'P43_OBSERVACIONES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Observaciones'
,p_source=>'OBSERVACIONES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102662995111694465)
,p_name=>'P43_FECHA_REGISTRO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_item_source_plug_id=>wwv_flow_imp.id(66102658993271694459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102663463221694465)
,p_validation_name=>'P43_FECHA_REGISTRO must be timestamp'
,p_validation_sequence=>80
,p_validation=>'P43_FECHA_REGISTRO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102662995111694465)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102666994811694468)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102666866759694468)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102667732612694469)
,p_event_id=>wwv_flow_imp.id(66102666994811694468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102669885495694471)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102658993271694459)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Seguimiento Egresados'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102669885495694471
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102670279958694471)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102670279958694471
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102669474007694470)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102658993271694459)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Seguimiento Egresados'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102669474007694470
,p_created_on=>wwv_flow_imp.dz('20250719002019Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002019Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00044
begin
wwv_flow_imp_page.create_page(
 p_id=>44
,p_name=>'Evidencias'
,p_alias=>'EVIDENCIAS1'
,p_step_title=>'Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719044620Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102706176640695236)
,p_plug_name=>'Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVIDENCIAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Evidencias'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719044620Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102706290523695236)
,p_name=>'Evidencias'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_EVIDENCIA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:RP:P45_ID_EVIDENCIA:\#ID_EVIDENCIA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102706290523695236
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719044620Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102706928358695238)
,p_db_column_name=>'ID_EVIDENCIA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Evidencia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102707380260695238)
,p_db_column_name=>'ID_TIPO_EVIDENCIA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Tipo Evidencia'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102694691976695227)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102707748123695239)
,p_db_column_name=>'NOMBRE_ARCHIVO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre Archivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102708178824695239)
,p_db_column_name=>'RUTA_ARCHIVO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ruta Archivo'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#RUTA_ARCHIVO#" style="max-height:80px;">',
''))
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719044620Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102708579310695239)
,p_db_column_name=>unistr('TAMA\00D1O_ARCHIVO')
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('Tama\00F1o Archivo')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102708904545695239)
,p_db_column_name=>'TIPO_MIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tipo Mime'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102709342178695240)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102709887315695240)
,p_db_column_name=>'FECHA_SUBIDA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Fecha Subida'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102710240986695240)
,p_db_column_name=>'SUBIDO_POR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Subido Por'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102698243881695230)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103079755472699905)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661030798'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ID_TIPO_EVIDENCIA:NOMBRE_ARCHIVO:RUTA_ARCHIVO:TAMA\00D1O_ARCHIVO:TIPO_MIME:DESCRIPCION:FECHA_SUBIDA:SUBIDO_POR')
,p_sort_column_1=>'ID_TIPO_EVIDENCIA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102712029648695241)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102710848582695241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102706176640695236)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:45::'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102711173051695241)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102706176640695236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102711672262695241)
,p_event_id=>wwv_flow_imp.id(66102711173051695241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102706176640695236)
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00045
begin
wwv_flow_imp_page.create_page(
 p_id=>45
,p_name=>'Evidencias'
,p_alias=>'EVIDENCIAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002025Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102693846059695224)
,p_plug_name=>'Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVIDENCIAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102701664016695233)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102702073521695233)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102701664016695233)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102703433217695234)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102701664016695233)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P45_ID_EVIDENCIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102703814514695234)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102701664016695233)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P45_ID_EVIDENCIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102704334400695235)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102701664016695233)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P45_ID_EVIDENCIA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102694180379695226)
,p_name=>'P45_ID_EVIDENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evidencia'
,p_source=>'ID_EVIDENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102694552145695227)
,p_name=>'P45_ID_TIPO_EVIDENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Tipo Evidencia'
,p_source=>'ID_TIPO_EVIDENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIPOS_EVIDENCIA.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102695278754695227)
,p_name=>'P45_NOMBRE_ARCHIVO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Archivo'
,p_source=>'NOMBRE_ARCHIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102695607240695228)
,p_name=>'P45_RUTA_ARCHIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ruta Archivo'
,p_source=>'RUTA_ARCHIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102696044640695228)
,p_name=>unistr('P45_TAMA\00D1O_ARCHIVO')
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Tama\00F1o Archivo')
,p_source=>unistr('TAMA\00D1O_ARCHIVO')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102696467833695229)
,p_name=>'P45_TIPO_MIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo Mime'
,p_source=>'TIPO_MIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102696853178695229)
,p_name=>'P45_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102697219968695230)
,p_name=>'P45_FECHA_SUBIDA'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Subida'
,p_source=>'FECHA_SUBIDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102698172824695230)
,p_name=>'P45_SUBIDO_POR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102693846059695224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subido Por'
,p_source=>'SUBIDO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USUARIOS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102697832543695230)
,p_validation_name=>'P45_FECHA_SUBIDA must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P45_FECHA_SUBIDA'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102697219968695230)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102702106357695233)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102702073521695233)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102702961620695234)
,p_event_id=>wwv_flow_imp.id(66102702106357695233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102705183773695235)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102693846059695224)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Evidencias'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102705183773695235
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102705584080695235)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102705584080695235
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102704737496695235)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102693846059695224)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Evidencias'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102704737496695235
,p_created_on=>wwv_flow_imp.dz('20250719002027Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002027Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00046
begin
wwv_flow_imp_page.create_page(
 p_id=>46
,p_name=>'Asignatura Evidencias'
,p_alias=>'ASIGNATURA-EVIDENCIAS1'
,p_step_title=>'Asignatura Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102731429524695984)
,p_plug_name=>'Asignatura Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ASIGNATURA_EVIDENCIAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Asignatura Evidencias'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102731533606695984)
,p_name=>'Asignatura Evidencias'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_ASIGNATURA'
,p_base_pk2=>'ID_EVIDENCIA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:RP:P47_ID_ASIGNATURA,P47_ID_EVIDENCIA:\#ID_ASIGNATURA#\,\#ID_EVIDENCIA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102731533606695984
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102732268587695986)
,p_db_column_name=>'ID_ASIGNATURA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Asignatura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102732796186695986)
,p_db_column_name=>'ID_EVIDENCIA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Id Evidencia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102733124722695986)
,p_db_column_name=>'FECHA_ASOCIACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Asociacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103092728892699916)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661030928'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_EVIDENCIA:FECHA_ASOCIACION'
,p_sort_column_1=>'ID_EVIDENCIA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102734825330695988)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102733675022695987)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102731429524695984)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:47::'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102733999267695987)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102731429524695984)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102734430468695987)
,p_event_id=>wwv_flow_imp.id(66102733999267695987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102731429524695984)
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00047
begin
wwv_flow_imp_page.create_page(
 p_id=>47
,p_name=>'Asignatura Evidencias'
,p_alias=>'ASIGNATURA-EVIDENCIAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Asignatura Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002032Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102724263832695977)
,p_plug_name=>'Asignatura Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ASIGNATURA_EVIDENCIAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102727000072695981)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102727458570695981)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102727000072695981)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102728881621695982)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102727000072695981)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P47_ID_ASIGNATURA is not null and :P47_ID_EVIDENCIA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102729227204695982)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102727000072695981)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P47_ID_ASIGNATURA is not null and :P47_ID_EVIDENCIA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102729615046695982)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102727000072695981)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P47_ID_ASIGNATURA is null or :P47_ID_EVIDENCIA is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102724583077695978)
,p_name=>'P47_ID_ASIGNATURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102724263832695977)
,p_item_source_plug_id=>wwv_flow_imp.id(66102724263832695977)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Asignatura'
,p_source=>'ID_ASIGNATURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102724974698695979)
,p_name=>'P47_ID_EVIDENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102724263832695977)
,p_item_source_plug_id=>wwv_flow_imp.id(66102724263832695977)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evidencia'
,p_source=>'ID_EVIDENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102725377920695979)
,p_name=>'P47_FECHA_ASOCIACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102724263832695977)
,p_item_source_plug_id=>wwv_flow_imp.id(66102724263832695977)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Asociacion'
,p_source=>'FECHA_ASOCIACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102725832535695980)
,p_validation_name=>'P47_FECHA_ASOCIACION must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P47_FECHA_ASOCIACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102725377920695979)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102727542348695981)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102727458570695981)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102728327431695982)
,p_event_id=>wwv_flow_imp.id(66102727542348695981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102730439324695983)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102724263832695977)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Asignatura Evidencias'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102730439324695983
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102730837790695983)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102730837790695983
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102730017449695983)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102724263832695977)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Asignatura Evidencias'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102730017449695983
,p_created_on=>wwv_flow_imp.dz('20250719002034Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002034Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00048
begin
wwv_flow_imp_page.create_page(
 p_id=>48
,p_name=>'Publicacion Evidencias'
,p_alias=>'PUBLICACION-EVIDENCIAS1'
,p_step_title=>'Publicacion Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102753679067696724)
,p_plug_name=>'Publicacion Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PUBLICACION_EVIDENCIAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Publicacion Evidencias'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102753745787696724)
,p_name=>'Publicacion Evidencias'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_PUBLICACION'
,p_base_pk2=>'ID_EVIDENCIA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:RP:P49_ID_PUBLICACION,P49_ID_EVIDENCIA:\#ID_PUBLICACION#\,\#ID_EVIDENCIA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102753745787696724
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102754407285696726)
,p_db_column_name=>'ID_PUBLICACION'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Publicacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102754879534696727)
,p_db_column_name=>'ID_EVIDENCIA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Id Evidencia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102755254397696727)
,p_db_column_name=>'FECHA_ASOCIACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Asociacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103098597060699921)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661030986'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_EVIDENCIA:FECHA_ASOCIACION'
,p_sort_column_1=>'ID_EVIDENCIA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102756920202696728)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102755765261696727)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102753679067696724)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:49::'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102756046445696727)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102753679067696724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102756525345696728)
,p_event_id=>wwv_flow_imp.id(66102756046445696727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102753679067696724)
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00049
begin
wwv_flow_imp_page.create_page(
 p_id=>49
,p_name=>'Publicacion Evidencias'
,p_alias=>'PUBLICACION-EVIDENCIAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Publicacion Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002040Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102746446904696717)
,p_plug_name=>'Publicacion Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PUBLICACION_EVIDENCIAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102749221076696721)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102749612376696721)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102749221076696721)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102751039282696722)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102749221076696721)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P49_ID_PUBLICACION is not null and :P49_ID_EVIDENCIA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102751462363696722)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102749221076696721)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P49_ID_PUBLICACION is not null and :P49_ID_EVIDENCIA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102751825960696723)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102749221076696721)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P49_ID_PUBLICACION is null or :P49_ID_EVIDENCIA is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102746742103696719)
,p_name=>'P49_ID_PUBLICACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102746446904696717)
,p_item_source_plug_id=>wwv_flow_imp.id(66102746446904696717)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Publicacion'
,p_source=>'ID_PUBLICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102747168672696719)
,p_name=>'P49_ID_EVIDENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102746446904696717)
,p_item_source_plug_id=>wwv_flow_imp.id(66102746446904696717)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evidencia'
,p_source=>'ID_EVIDENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102747538984696719)
,p_name=>'P49_FECHA_ASOCIACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102746446904696717)
,p_item_source_plug_id=>wwv_flow_imp.id(66102746446904696717)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Asociacion'
,p_source=>'FECHA_ASOCIACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102748018874696720)
,p_validation_name=>'P49_FECHA_ASOCIACION must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P49_FECHA_ASOCIACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102747538984696719)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102749742040696721)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102749612376696721)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102750592332696722)
,p_event_id=>wwv_flow_imp.id(66102749742040696721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102752620203696723)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102746446904696717)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Publicacion Evidencias'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102752620203696723
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102753021863696723)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102753021863696723
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102752248122696723)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102746446904696717)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Publicacion Evidencias'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102752248122696723
,p_created_on=>wwv_flow_imp.dz('20250719002042Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002042Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Evento Evidencias'
,p_alias=>'EVENTO-EVIDENCIAS1'
,p_step_title=>'Evento Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719050207Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102772438404697483)
,p_plug_name=>'Evento Evidencias'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVENTO_EVIDENCIAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719050207Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(62845334620985126119)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>62845334620985126119
,p_created_on=>wwv_flow_imp.dz('20250719050207Z')
,p_updated_on=>wwv_flow_imp.dz('20250719050207Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62845334762582126120)
,p_db_column_name=>'ID_EVENTO'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Evento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719050207Z')
,p_updated_on=>wwv_flow_imp.dz('20250719050207Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62845334816218126121)
,p_db_column_name=>'ID_EVIDENCIA'
,p_display_order=>20
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Id Evidencia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719050207Z')
,p_updated_on=>wwv_flow_imp.dz('20250719050207Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62845334977332126122)
,p_db_column_name=>'FECHA_ASOCIACION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Asociacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719050207Z')
,p_updated_on=>wwv_flow_imp.dz('20250719050207Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102775772111697487)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102774500428697486)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102772438404697483)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:51::'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719050207Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102774822743697486)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102772438404697483)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102775312395697486)
,p_event_id=>wwv_flow_imp.id(66102774822743697486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102772438404697483)
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_imp_page.create_page(
 p_id=>51
,p_name=>'Evento Evidencias'
,p_alias=>'EVENTO-EVIDENCIAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Evento Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002047Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102765271794697475)
,p_plug_name=>'Evento Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVENTO_EVIDENCIAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102768072173697479)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102768484455697480)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102768072173697479)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102769874443697481)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102768072173697479)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P51_ID_EVENTO is not null and :P51_ID_EVIDENCIA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102770293537697481)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102768072173697479)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P51_ID_EVENTO is not null and :P51_ID_EVIDENCIA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102770637575697481)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102768072173697479)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P51_ID_EVENTO is null or :P51_ID_EVIDENCIA is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102765597158697477)
,p_name=>'P51_ID_EVENTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102765271794697475)
,p_item_source_plug_id=>wwv_flow_imp.id(66102765271794697475)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evento'
,p_source=>'ID_EVENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102765940200697477)
,p_name=>'P51_ID_EVIDENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102765271794697475)
,p_item_source_plug_id=>wwv_flow_imp.id(66102765271794697475)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evidencia'
,p_source=>'ID_EVIDENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102766397185697478)
,p_name=>'P51_FECHA_ASOCIACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102765271794697475)
,p_item_source_plug_id=>wwv_flow_imp.id(66102765271794697475)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Asociacion'
,p_source=>'FECHA_ASOCIACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102766861975697478)
,p_validation_name=>'P51_FECHA_ASOCIACION must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P51_FECHA_ASOCIACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102766397185697478)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102768504177697480)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102768484455697480)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102769319833697480)
,p_event_id=>wwv_flow_imp.id(66102768504177697480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102771418071697482)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102765271794697475)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Evento Evidencias'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102771418071697482
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102771880780697482)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102771880780697482
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102771007960697481)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102765271794697475)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Evento Evidencias'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102771007960697481
,p_created_on=>wwv_flow_imp.dz('20250719002049Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002049Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_imp_page.create_page(
 p_id=>52
,p_name=>'Proyecto Evidencias'
,p_alias=>'PROYECTO-EVIDENCIAS1'
,p_step_title=>'Proyecto Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102787282694698231)
,p_plug_name=>'Proyecto Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROYECTO_EVIDENCIAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Proyecto Evidencias'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102787345580698231)
,p_name=>'Proyecto Evidencias'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_PROYECTO'
,p_base_pk2=>'ID_EVIDENCIA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:53:&APP_SESSION.::&DEBUG.:RP:P53_ID_PROYECTO,P53_ID_EVIDENCIA:\#ID_PROYECTO#\,\#ID_EVIDENCIA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102787345580698231
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102788009890698233)
,p_db_column_name=>'ID_PROYECTO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Proyecto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102788467644698233)
,p_db_column_name=>'ID_EVIDENCIA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Id Evidencia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102788815195698234)
,p_db_column_name=>'FECHA_ASOCIACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Asociacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103110172672699930)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661031102'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_EVIDENCIA:FECHA_ASOCIACION'
,p_sort_column_1=>'ID_EVIDENCIA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102790570834698235)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102789367894698234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102787282694698231)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&APP_SESSION.::&DEBUG.:53::'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102789650399698234)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102787282694698231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102790120349698235)
,p_event_id=>wwv_flow_imp.id(66102789650399698234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102787282694698231)
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_imp_page.create_page(
 p_id=>53
,p_name=>'Proyecto Evidencias'
,p_alias=>'PROYECTO-EVIDENCIAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Proyecto Evidencias'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002055Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102780057473698224)
,p_plug_name=>'Proyecto Evidencias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PROYECTO_EVIDENCIAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102782894338698228)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102783241022698228)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102782894338698228)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102784688582698229)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102782894338698228)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P53_ID_PROYECTO is not null and :P53_ID_EVIDENCIA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102785074867698230)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102782894338698228)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P53_ID_PROYECTO is not null and :P53_ID_EVIDENCIA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102785411452698230)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102782894338698228)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P53_ID_PROYECTO is null or :P53_ID_EVIDENCIA is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102780323166698225)
,p_name=>'P53_ID_PROYECTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102780057473698224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102780057473698224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Proyecto'
,p_source=>'ID_PROYECTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102780747838698226)
,p_name=>'P53_ID_EVIDENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102780057473698224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102780057473698224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evidencia'
,p_source=>'ID_EVIDENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102781197908698226)
,p_name=>'P53_FECHA_ASOCIACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102780057473698224)
,p_item_source_plug_id=>wwv_flow_imp.id(66102780057473698224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Asociacion'
,p_source=>'FECHA_ASOCIACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102781606288698227)
,p_validation_name=>'P53_FECHA_ASOCIACION must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P53_FECHA_ASOCIACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102781197908698226)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102783329637698228)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102783241022698228)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102784194987698229)
,p_event_id=>wwv_flow_imp.id(66102783329637698228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102786200569698230)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102780057473698224)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Proyecto Evidencias'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102786200569698230
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102786639831698230)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102786639831698230
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102785885949698230)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102780057473698224)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Proyecto Evidencias'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102785885949698230
,p_created_on=>wwv_flow_imp.dz('20250719002057Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002057Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_imp_page.create_page(
 p_id=>54
,p_name=>'Reportes'
,p_alias=>'REPORTES'
,p_step_title=>'Reportes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102806497202698974)
,p_plug_name=>'Reportes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'REPORTES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Reportes'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102806500320698974)
,p_name=>'Reportes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_REPORTE'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:55:&APP_SESSION.::&DEBUG.:RP:P55_ID_REPORTE:\#ID_REPORTE#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102806500320698974
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102807283655698976)
,p_db_column_name=>'ID_REPORTE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Reporte'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102807684002698977)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102808020054698977)
,p_db_column_name=>'TIPO_REPORTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Reporte'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102808498137698977)
,p_db_column_name=>'MODULO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Modulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102808828842698977)
,p_db_column_name=>'PARAMETROS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Parametros'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102809229888698978)
,p_db_column_name=>'FECHA_GENERACION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Generacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102809646844698978)
,p_db_column_name=>'GENERADO_POR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Generado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102698243881695230)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102810027815698978)
,p_db_column_name=>'RUTA_ARCHIVO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ruta Archivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102810408306698979)
,p_db_column_name=>'ESTADO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103115973975699934)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661031160'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:TIPO_REPORTE:MODULO:PARAMETROS:FECHA_GENERACION:GENERADO_POR:RUTA_ARCHIVO:ESTADO'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102812192728698980)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102810908938698979)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102806497202698974)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&APP_SESSION.::&DEBUG.:55::'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102811298041698979)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102806497202698974)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102811765356698980)
,p_event_id=>wwv_flow_imp.id(66102811298041698979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102806497202698974)
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00055
begin
wwv_flow_imp_page.create_page(
 p_id=>55
,p_name=>'Reporte'
,p_alias=>'REPORTE'
,p_page_mode=>'MODAL'
,p_step_title=>'Reporte'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002102Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102795002314698962)
,p_plug_name=>'Reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'REPORTES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102802044543698971)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102802487184698971)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102802044543698971)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102803865142698972)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102802044543698971)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P55_ID_REPORTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102804222478698972)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102802044543698971)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P55_ID_REPORTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102804645177698973)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102802044543698971)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P55_ID_REPORTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102795379371698964)
,p_name=>'P55_ID_REPORTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Reporte'
,p_source=>'ID_REPORTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102795764478698964)
,p_name=>'P55_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102796194775698965)
,p_name=>'P55_TIPO_REPORTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo Reporte'
,p_source=>'TIPO_REPORTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102796571566698965)
,p_name=>'P55_MODULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modulo'
,p_source=>'MODULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102796939755698966)
,p_name=>'P55_PARAMETROS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parametros'
,p_source=>'PARAMETROS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102797302043698966)
,p_name=>'P55_FECHA_GENERACION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Generacion'
,p_source=>'FECHA_GENERACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102798112705698967)
,p_name=>'P55_GENERADO_POR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Generado Por'
,p_source=>'GENERADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USUARIOS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102798515761698968)
,p_name=>'P55_RUTA_ARCHIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ruta Archivo'
,p_source=>'RUTA_ARCHIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102798959882698968)
,p_name=>'P55_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_item_source_plug_id=>wwv_flow_imp.id(66102795002314698962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102797847836698967)
,p_validation_name=>'P55_FECHA_GENERACION must be timestamp'
,p_validation_sequence=>50
,p_validation=>'P55_FECHA_GENERACION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102797302043698966)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102802507236698971)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102802487184698971)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102803397201698972)
,p_event_id=>wwv_flow_imp.id(66102802507236698971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102805443260698973)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102795002314698962)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Reporte'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102805443260698973
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102805894736698973)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102805894736698973
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102805085028698973)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102795002314698962)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Reporte'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102805085028698973
,p_created_on=>wwv_flow_imp.dz('20250719002104Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002104Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00056
begin
wwv_flow_imp_page.create_page(
 p_id=>56
,p_name=>'Auditoria'
,p_alias=>'AUDITORIA1'
,p_step_title=>'Auditoria'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102828488878699706)
,p_plug_name=>'Auditoria'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AUDITORIA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Auditoria'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66102828540495699706)
,p_name=>'Auditoria'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_AUDITORIA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:57:&APP_SESSION.::&DEBUG.:RP:P57_ID_AUDITORIA:\#ID_AUDITORIA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(66101946681299679627)
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66102828540495699706
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102829288117699708)
,p_db_column_name=>'ID_AUDITORIA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Auditoria'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102829675936699709)
,p_db_column_name=>'TABLA_AFECTADA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tabla Afectada'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102830009254699709)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Registro'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102830449518699709)
,p_db_column_name=>'ACCION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Accion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102830831592699709)
,p_db_column_name=>'USUARIO_ACCION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Usuario Accion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(66102698243881695230)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102831220885699710)
,p_db_column_name=>'FECHA_ACCION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Accion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102831684961699710)
,p_db_column_name=>'VALORES_ANTERIORES'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Valores Anteriores'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102832041367699710)
,p_db_column_name=>'VALORES_NUEVOS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Valores Nuevos'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66102832480879699710)
,p_db_column_name=>'IP_USUARIO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ip Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103129260005699945)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661031293'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLA_AFECTADA:ID_REGISTRO:ACCION:USUARIO_ACCION:FECHA_ACCION:VALORES_ANTERIORES:VALORES_NUEVOS:IP_USUARIO'
,p_sort_column_1=>'TABLA_AFECTADA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102834145178699712)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102832966791699711)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102828488878699706)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&APP_SESSION.::&DEBUG.:57::'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102833294787699711)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66102828488878699706)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102833795239699711)
,p_event_id=>wwv_flow_imp.id(66102833294787699711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66102828488878699706)
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_00057
begin
wwv_flow_imp_page.create_page(
 p_id=>57
,p_name=>'Auditoria'
,p_alias=>'AUDITORIA'
,p_page_mode=>'MODAL'
,p_step_title=>'Auditoria'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(66101946681299679627)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002110Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102817020488699696)
,p_plug_name=>'Auditoria'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AUDITORIA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66102824021402699703)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102824415743699704)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66102824021402699703)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102825828824699705)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66102824021402699703)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P57_ID_AUDITORIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102826275755699705)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66102824021402699703)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P57_ID_AUDITORIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66102826667308699705)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66102824021402699703)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P57_ID_AUDITORIA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102817337581699698)
,p_name=>'P57_ID_AUDITORIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Auditoria'
,p_source=>'ID_AUDITORIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102817706743699699)
,p_name=>'P57_TABLA_AFECTADA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tabla Afectada'
,p_source=>'TABLA_AFECTADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102818156166699699)
,p_name=>'P57_ID_REGISTRO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Registro'
,p_source=>'ID_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102818510128699699)
,p_name=>'P57_ACCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Accion'
,p_source=>'ACCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102818932280699700)
,p_name=>'P57_USUARIO_ACCION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usuario Accion'
,p_source=>'USUARIO_ACCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USUARIOS.NOMBRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102819324130699700)
,p_name=>'P57_FECHA_ACCION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Accion'
,p_source=>'FECHA_ACCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102820180468699701)
,p_name=>'P57_VALORES_ANTERIORES'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valores Anteriores'
,p_source=>'VALORES_ANTERIORES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102820574246699701)
,p_name=>'P57_VALORES_NUEVOS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valores Nuevos'
,p_source=>'VALORES_NUEVOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66102820932418699701)
,p_name=>'P57_IP_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_item_source_plug_id=>wwv_flow_imp.id(66102817020488699696)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ip Usuario'
,p_source=>'IP_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>45
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66102819846964699700)
,p_validation_name=>'P57_FECHA_ACCION must be timestamp'
,p_validation_sequence=>50
,p_validation=>'P57_FECHA_ACCION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(66102819324130699700)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66102824511433699704)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66102824415743699704)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66102825344963699704)
,p_event_id=>wwv_flow_imp.id(66102824511433699704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102827486080699705)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66102817020488699696)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Auditoria'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102827486080699705
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102827820921699706)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66102827820921699706
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66102827005647699705)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66102817020488699696)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Auditoria'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66102827005647699705
,p_created_on=>wwv_flow_imp.dz('20250719002112Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002112Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Dsw-Infraestructura77 - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66101971134135679663)
,p_plug_name=>'Dsw-Infraestructura77'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66101972904538679667)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66101971134135679663)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101971705482679665)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66101971134135679663)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101972185967679666)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66101971134135679663)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66101972503388679666)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66101971134135679663)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66101975117747679669)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66101975117747679669
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(66101975607476679669)
,p_page_process_id=>wwv_flow_imp.id(66101975117747679669)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(66101976158284679669)
,p_page_process_id=>wwv_flow_imp.id(66101975117747679669)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66101973254978679667)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66101973254978679667
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(66101973761425679667)
,p_page_process_id=>wwv_flow_imp.id(66101973254978679667)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(66101974290898679668)
,p_page_process_id=>wwv_flow_imp.id(66101973254978679667)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(66101974773856679668)
,p_page_process_id=>wwv_flow_imp.id(66101973254978679667)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66101977087995679670)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66101977087995679670
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66101976604513679669)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>66101976604513679669
,p_created_on=>wwv_flow_imp.dz('20250719001751Z')
,p_updated_on=>wwv_flow_imp.dz('20250719001751Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(66101947701013679630)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(66101946450462679627)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002122Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103196927583700378)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66101940433088679616)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103199402377700380)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103199881619700381)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(66103199402377700380)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(66103197696141700379)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(66101945350764679625)
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103200226171700381)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103200644015700381)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(66103200226171700381)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(66101944521236679625)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103201453912700382)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(66103200644015700381)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(66103201824186700383)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(66103200644015700381)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002122Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66103202587922700386)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_updated_on=>wwv_flow_imp.dz('20250719002122Z')
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66103202979302700387)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_updated_on=>wwv_flow_imp.dz('20250719002122Z')
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66103203367714700387)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
,p_updated_on=>wwv_flow_imp.dz('20250719002122Z')
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103206770125700762)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(66103200644015700381)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(66103198326218700379)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250719002122Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002122Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103201016465700382)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66103200644015700381)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP,10022::'
,p_icon_css_classes=>'fa-user-plus'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66103205845179700761)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66103201016465700382)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002122Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002122Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66103206364466700762)
,p_event_id=>wwv_flow_imp.id(66103205845179700761)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66103201824186700383)
,p_created_on=>wwv_flow_imp.dz('20250719002122Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002122Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(66101947701013679630)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(66101946450462679627)
,p_required_patch=>wwv_flow_imp.id(66101945350764679625)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103154447768699964)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103154522717699964)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103156900227699967)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66103154447768699964)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103155584312699966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66103154447768699964)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(66103157321354699967)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103157693534699967)
,p_name=>'P10010_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66103154522717699964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103158324110699970)
,p_name=>'P10010_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66103154522717699964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(66103158456539699970)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66103155608619699966)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66103155584312699966)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66103156316808699967)
,p_event_id=>wwv_flow_imp.id(66103155608619699966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103159527176699971)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10010_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10010_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>66103159527176699971
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103159968962699971)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10010_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>66103159968962699971
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(66101947701013679630)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(66101946450462679627)
,p_required_patch=>wwv_flow_imp.id(66101944521236679625)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103160258978699972)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103160387110699972)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103161564842699973)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66103160387110699972)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103161818318699973)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66103160387110699972)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(66103163274784699974)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103163521166699974)
,p_name=>'P10020_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66103160258978699972)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66103161947492699973)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66103161818318699973)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66103162639393699974)
,p_event_id=>wwv_flow_imp.id(66103161947492699973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103163928707699975)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10020_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>66103163928707699975
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(66101947701013679630)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(66101946450462679627)
,p_required_patch=>wwv_flow_imp.id(66101944521236679625)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103164373115699975)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66103165180818699975)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP:P10022_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CECARRIONG@UTN.EDU.EC'
,p_internal_uid=>66103165180818699975
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66103165848442699978)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66103166299775699978)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66103166613052699979)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66103168256081699980)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'661031683'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103169104727699981)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66103164373115699975)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103169559468699981)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66103164373115699975)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10023:&APP_SESSION.::&DEBUG.:10023::'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103169920163699981)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66103164373115699975)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:10022::'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66103164420264699975)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66103164373115699975)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66103170538577699982)
,p_event_id=>wwv_flow_imp.id(66103164420264699975)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66103164373115699975)
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_10022
begin
wwv_flow_imp_page.create_page(
 p_id=>10022
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(66101947701013679630)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(66101946450462679627)
,p_required_patch=>wwv_flow_imp.id(66101944521236679625)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103171016917699982)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103171167551699982)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103173941345699984)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66103171167551699982)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103174330103699985)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66103171167551699982)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103172170224699983)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66103171167551699982)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103173588776699984)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66103171167551699982)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103174657634699985)
,p_name=>'P10022_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66103171016917699982)
,p_item_source_plug_id=>wwv_flow_imp.id(66103171016917699982)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103175080331699985)
,p_name=>'P10022_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66103171016917699982)
,p_item_source_plug_id=>wwv_flow_imp.id(66103171016917699982)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103175411863699986)
,p_name=>'P10022_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66103171016917699982)
,p_item_source_plug_id=>wwv_flow_imp.id(66103171016917699982)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10022_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103175804373699986)
,p_name=>'P10022_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66103171016917699982)
,p_item_source_plug_id=>wwv_flow_imp.id(66103171016917699982)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66103177117367699989)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10022_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10022_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66103172289416699983)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66103172170224699983)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66103172911816699984)
,p_event_id=>wwv_flow_imp.id(66103172289416699983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103177475254699989)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(66103171016917699982)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66103177475254699989
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103177833408699989)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66103171016917699982)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66103177833408699989
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103178287650699989)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66103178287650699989
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(66101947701013679630)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(66101946450462679627)
,p_required_patch=>wwv_flow_imp.id(66101944521236679625)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103178602166699990)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103178764618699990)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103178807001699990)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66103178602166699990)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103180862738699991)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66103178602166699990)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(66103182158838699992)
,p_branch_action=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RP,10024::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(66103178807001699990)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103182516855699992)
,p_name=>'P10023_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66103178764618699990)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103182931565699993)
,p_name=>'P10023_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66103178764618699990)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103183304812699993)
,p_name=>'P10023_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66103178764618699990)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(66103183447382699993)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66103180953469699991)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66103180862738699991)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66103181650771699992)
,p_event_id=>wwv_flow_imp.id(66103180953469699991)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103184498574699994)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10023_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10023_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10023_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(66103178807001699990)
,p_internal_uid=>66103184498574699994
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(66101947701013679630)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(66101946450462679627)
,p_required_patch=>wwv_flow_imp.id(66101944521236679625)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_last_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103178990447699990)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103179055072699990)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002114Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002114Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(66103179257385699990)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(66103179055072699990)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250719002115Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66103186204646699999)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66103186615029700000)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103179305367699990)
,p_plug_name=>'&P10024_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(66103179055072699990)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103179452266699990)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103189811100700369)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10024_VALID_COUNT),',
'           apex_escape.html(:P10024_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66103190534505700370)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103179592121699990)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66103178990447699990)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103191270432700371)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66103178990447699990)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66103191697214700371)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66103178990447699990)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103192991470700372)
,p_name=>'P10024_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66103179452266699990)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10023_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103193362536700372)
,p_name=>'P10024_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66103179452266699990)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66103193708631700373)
,p_name=>'P10024_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66103179452266699990)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66103191727320700371)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66103191697214700371)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66103192482937700372)
,p_event_id=>wwv_flow_imp.id(66103191727320700371)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103194175062700373)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10023_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(66103179592121699990)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>66103194175062700373
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66103194531739700374)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66103194531739700374
,p_created_on=>wwv_flow_imp.dz('20250719002118Z')
,p_updated_on=>wwv_flow_imp.dz('20250719002118Z')
,p_created_by=>'CECARRIONG@UTN.EDU.EC'
,p_updated_by=>'CECARRIONG@UTN.EDU.EC'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
