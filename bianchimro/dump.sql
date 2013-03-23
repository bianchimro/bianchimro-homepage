--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: admin_tools_dashboard_preferences; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE admin_tools_dashboard_preferences (
    id integer NOT NULL,
    user_id integer NOT NULL,
    data text NOT NULL,
    dashboard_id character varying(100) NOT NULL
);


--
-- Name: admin_tools_dashboard_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE admin_tools_dashboard_preferences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_tools_dashboard_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE admin_tools_dashboard_preferences_id_seq OWNED BY admin_tools_dashboard_preferences.id;


--
-- Name: admin_tools_dashboard_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('admin_tools_dashboard_preferences_id_seq', 1, false);


--
-- Name: admin_tools_menu_bookmark; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE admin_tools_menu_bookmark (
    id integer NOT NULL,
    user_id integer NOT NULL,
    url character varying(255) NOT NULL,
    title character varying(255) NOT NULL
);


--
-- Name: admin_tools_menu_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE admin_tools_menu_bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_tools_menu_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE admin_tools_menu_bookmark_id_seq OWNED BY admin_tools_menu_bookmark.id;


--
-- Name: admin_tools_menu_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('admin_tools_menu_bookmark_id_seq', 1, false);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_message; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_message (
    id integer NOT NULL,
    user_id integer NOT NULL,
    message text NOT NULL
);


--
-- Name: auth_message_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_message_id_seq OWNED BY auth_message.id;


--
-- Name: auth_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_message_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_permission_id_seq', 258, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: cms_cmsplugin; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_cmsplugin (
    language character varying(15) NOT NULL,
    "position" smallint,
    creation_date timestamp with time zone DEFAULT '2013-03-21 23:08:07.391842+01'::timestamp with time zone NOT NULL,
    id integer NOT NULL,
    plugin_type character varying(50) NOT NULL,
    parent_id integer,
    tree_id integer DEFAULT 0 NOT NULL,
    lft integer DEFAULT 0 NOT NULL,
    rght integer DEFAULT 0 NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    placeholder_id integer,
    CONSTRAINT cms_cmsplugin_level_check CHECK ((level >= 0)),
    CONSTRAINT cms_cmsplugin_lft_check CHECK ((lft >= 0)),
    CONSTRAINT cms_cmsplugin_rght_check CHECK ((rght >= 0)),
    CONSTRAINT cms_cmsplugin_tree_id_check CHECK ((tree_id >= 0))
);


--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_cmsplugin_id_seq OWNED BY cms_cmsplugin.id;


--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_cmsplugin_id_seq', 49, true);


--
-- Name: cms_globalpagepermission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_globalpagepermission (
    can_publish boolean DEFAULT true NOT NULL,
    group_id integer,
    can_moderate boolean DEFAULT true NOT NULL,
    can_change boolean DEFAULT true NOT NULL,
    can_change_permissions boolean DEFAULT false NOT NULL,
    can_recover_page boolean DEFAULT true NOT NULL,
    can_add boolean DEFAULT true NOT NULL,
    user_id integer,
    can_delete boolean DEFAULT true NOT NULL,
    can_move_page boolean DEFAULT true NOT NULL,
    id integer NOT NULL,
    can_change_advanced_settings boolean DEFAULT false NOT NULL,
    can_view boolean NOT NULL
);


--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_globalpagepermission_id_seq OWNED BY cms_globalpagepermission.id;


--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_globalpagepermission_id_seq', 1, false);


--
-- Name: cms_globalpagepermission_sites; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_globalpagepermission_sites_id_seq OWNED BY cms_globalpagepermission_sites.id;


--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_globalpagepermission_sites_id_seq', 1, false);


--
-- Name: cms_page; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_page (
    rght integer NOT NULL,
    level integer NOT NULL,
    navigation_extenders character varying(80),
    parent_id integer,
    reverse_id character varying(40),
    login_required boolean DEFAULT false NOT NULL,
    soft_root boolean DEFAULT false NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    publication_end_date timestamp with time zone,
    template character varying(100) NOT NULL,
    tree_id integer NOT NULL,
    publication_date timestamp with time zone,
    in_navigation boolean DEFAULT true NOT NULL,
    id integer NOT NULL,
    moderator_state smallint DEFAULT 1 NOT NULL,
    published boolean DEFAULT false NOT NULL,
    site_id integer DEFAULT 1 NOT NULL,
    changed_by character varying(70) DEFAULT ''::character varying NOT NULL,
    created_by character varying(70) DEFAULT ''::character varying NOT NULL,
    publisher_is_draft boolean DEFAULT true NOT NULL,
    publisher_state smallint DEFAULT 0 NOT NULL,
    publisher_public_id integer,
    limit_visibility_in_menu smallint,
    changed_date timestamp with time zone NOT NULL,
    CONSTRAINT cms_page_level_check CHECK ((level >= 0)),
    CONSTRAINT cms_page_lft_check CHECK ((lft >= 0)),
    CONSTRAINT cms_page_rght_check CHECK ((rght >= 0)),
    CONSTRAINT cms_page_tree_id_check CHECK ((tree_id >= 0))
);


--
-- Name: cms_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_page_id_seq OWNED BY cms_page.id;


--
-- Name: cms_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_page_id_seq', 6, true);


--
-- Name: cms_page_placeholders; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);


--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_page_placeholders_id_seq OWNED BY cms_page_placeholders.id;


--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_page_placeholders_id_seq', 159, true);


--
-- Name: cms_pagemoderator; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_pagemoderator (
    moderate_page boolean DEFAULT false NOT NULL,
    moderate_children boolean DEFAULT false NOT NULL,
    page_id integer NOT NULL,
    user_id integer NOT NULL,
    id integer NOT NULL,
    moderate_descendants boolean DEFAULT false NOT NULL
);


--
-- Name: cms_pagemoderator_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_pagemoderator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_pagemoderator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_pagemoderator_id_seq OWNED BY cms_pagemoderator.id;


--
-- Name: cms_pagemoderator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_pagemoderator_id_seq', 1, false);


--
-- Name: cms_pagemoderatorstate; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_pagemoderatorstate (
    created timestamp with time zone NOT NULL,
    page_id integer NOT NULL,
    user_id integer,
    action character varying(3),
    message text DEFAULT ''::text NOT NULL,
    id integer NOT NULL
);


--
-- Name: cms_pagemoderatorstate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_pagemoderatorstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_pagemoderatorstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_pagemoderatorstate_id_seq OWNED BY cms_pagemoderatorstate.id;


--
-- Name: cms_pagemoderatorstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_pagemoderatorstate_id_seq', 1, false);


--
-- Name: cms_pagepermission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_pagepermission (
    group_id integer,
    can_publish boolean DEFAULT true NOT NULL,
    page_id integer,
    user_id integer,
    id integer NOT NULL,
    can_delete boolean DEFAULT true NOT NULL,
    can_change_permissions boolean DEFAULT false NOT NULL,
    can_moderate boolean DEFAULT true NOT NULL,
    can_add boolean DEFAULT true NOT NULL,
    grant_on integer DEFAULT 5 NOT NULL,
    can_move_page boolean DEFAULT true NOT NULL,
    can_change boolean DEFAULT true NOT NULL,
    can_change_advanced_settings boolean DEFAULT false NOT NULL,
    can_view boolean NOT NULL
);


--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_pagepermission_id_seq OWNED BY cms_pagepermission.id;


--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_pagepermission_id_seq', 1, false);


--
-- Name: cms_pageuser; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


--
-- Name: cms_pageusergroup; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


--
-- Name: cms_placeholder; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_placeholder (
    slot character varying(50) NOT NULL,
    id integer NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);


--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_placeholder_id_seq OWNED BY cms_placeholder.id;


--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_placeholder_id_seq', 83, true);


--
-- Name: cms_title; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cms_title (
    language character varying(15) NOT NULL,
    title character varying(255) NOT NULL,
    page_id integer NOT NULL,
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    creation_date timestamp with time zone DEFAULT '2013-03-21 23:08:07.400516+01'::timestamp with time zone NOT NULL,
    slug character varying(255) NOT NULL,
    has_url_overwrite boolean DEFAULT false NOT NULL,
    application_urls character varying(200),
    redirect character varying(255),
    meta_keywords character varying(255),
    meta_description text,
    page_title character varying(255),
    menu_title character varying(255)
);


--
-- Name: cms_title_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cms_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cms_title_id_seq OWNED BY cms_title.id;


--
-- Name: cms_title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cms_title_id_seq', 6, true);


--
-- Name: cmsplugin_categoryentriesplugin; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_categoryentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    category_id integer NOT NULL,
    number_of_entries integer DEFAULT 5 NOT NULL
);


--
-- Name: cmsplugin_file; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_file (
    cmsplugin_ptr_id integer NOT NULL,
    file character varying(100) NOT NULL,
    title character varying(255)
);


--
-- Name: cmsplugin_flash; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_flash (
    width character varying(6) NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    file character varying(100) NOT NULL,
    height character varying(6) NOT NULL
);


--
-- Name: cmsplugin_googlemap; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_googlemap (
    city character varying(100) NOT NULL,
    title character varying(100),
    cmsplugin_ptr_id integer NOT NULL,
    zoom integer,
    content character varying(255),
    address character varying(150) NOT NULL,
    zipcode character varying(30) NOT NULL,
    lng numeric(10,6),
    lat numeric(10,6),
    route_planer boolean DEFAULT false NOT NULL,
    route_planer_title character varying(150) DEFAULT 'Calculate your fastest way to here'::character varying
);


--
-- Name: cmsplugin_imagestorealbumcarousel; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_imagestorealbumcarousel (
    cmsplugin_ptr_id integer NOT NULL,
    album_id integer NOT NULL,
    skin character varying(100) DEFAULT 'jcarousel-skin-tango'::character varying NOT NULL,
    "limit" integer,
    size character varying(20) NOT NULL,
    full_size character varying(20) NOT NULL,
    template_file character varying(100) NOT NULL
);


--
-- Name: cmsplugin_imagestorealbumptr; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_imagestorealbumptr (
    cmsplugin_ptr_id integer NOT NULL,
    album_id integer NOT NULL
);


--
-- Name: cmsplugin_latestentriesplugin; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_latestentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    subcategories boolean DEFAULT true NOT NULL,
    number_of_entries integer DEFAULT 5 NOT NULL,
    template_to_render character varying(250) NOT NULL
);


--
-- Name: cmsplugin_link; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_link (
    url character varying(200),
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(256) NOT NULL,
    page_link_id integer,
    mailto character varying(75)
);


--
-- Name: cmsplugin_picture; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_picture (
    url character varying(255),
    image character varying(100) NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    alt character varying(255),
    page_link_id integer,
    "float" character varying(10),
    longdesc character varying(255) DEFAULT ''::character varying NOT NULL
);


--
-- Name: cmsplugin_randomentriesplugin; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_randomentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    number_of_entries integer DEFAULT 5 NOT NULL,
    template_to_render character varying(250) NOT NULL
);


--
-- Name: cmsplugin_selectedentriesplugin; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_selectedentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    template_to_render character varying(250) NOT NULL
);


--
-- Name: cmsplugin_snippetptr; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);


--
-- Name: cmsplugin_teaser; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_teaser (
    description text,
    title character varying(255) NOT NULL,
    url character varying(255),
    image character varying(100),
    cmsplugin_ptr_id integer NOT NULL,
    page_link_id integer
);


--
-- Name: cmsplugin_text; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_text (
    body text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL
);


--
-- Name: cmsplugin_twitterrecententries; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_twitterrecententries (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(75) NOT NULL,
    twitter_user character varying(75) NOT NULL,
    count smallint DEFAULT 3 NOT NULL,
    link_hint character varying(75) NOT NULL,
    CONSTRAINT cmsplugin_twitterrecententries_count_check CHECK ((count >= 0))
);


--
-- Name: cmsplugin_twittersearch; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_twittersearch (
    count smallint DEFAULT 3 NOT NULL,
    query character varying(200) DEFAULT ''::character varying NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(75) NOT NULL,
    CONSTRAINT cmsplugin_twittersearch_count_check CHECK ((count >= 0))
);


--
-- Name: cmsplugin_video; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_video (
    cmsplugin_ptr_id integer NOT NULL,
    movie character varying(100),
    image character varying(100),
    auto_play boolean DEFAULT false NOT NULL,
    loop boolean DEFAULT false NOT NULL,
    bgcolor character varying(6) DEFAULT '000000'::character varying NOT NULL,
    fullscreen boolean DEFAULT false NOT NULL,
    width smallint NOT NULL,
    movie_url character varying(255),
    buttonhighlightcolor character varying(6) DEFAULT 'FFFFFF'::character varying NOT NULL,
    auto_hide boolean DEFAULT true NOT NULL,
    seekbarcolor character varying(6) DEFAULT '13ABEC'::character varying NOT NULL,
    buttonoutcolor character varying(6) DEFAULT '333333'::character varying NOT NULL,
    textcolor character varying(6) DEFAULT 'FFFFFF'::character varying NOT NULL,
    seekbarbgcolor character varying(6) DEFAULT '333333'::character varying NOT NULL,
    loadingbarcolor character varying(6) DEFAULT '828282'::character varying NOT NULL,
    buttonovercolor character varying(6) DEFAULT '000000'::character varying NOT NULL,
    height smallint NOT NULL
);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_zinnia_latestentriesplugin_authors (
    id integer NOT NULL,
    latestentriesplugin_id integer NOT NULL,
    user_id integer NOT NULL
);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cmsplugin_zinnia_latestentriesplugin_authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cmsplugin_zinnia_latestentriesplugin_authors_id_seq OWNED BY cmsplugin_zinnia_latestentriesplugin_authors.id;


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cmsplugin_zinnia_latestentriesplugin_authors_id_seq', 1, false);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_zinnia_latestentriesplugin_categories (
    id integer NOT NULL,
    latestentriesplugin_id integer NOT NULL,
    category_id integer NOT NULL
);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cmsplugin_zinnia_latestentriesplugin_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cmsplugin_zinnia_latestentriesplugin_categories_id_seq OWNED BY cmsplugin_zinnia_latestentriesplugin_categories.id;


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cmsplugin_zinnia_latestentriesplugin_categories_id_seq', 1, false);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_zinnia_latestentriesplugin_tags (
    id integer NOT NULL,
    latestentriesplugin_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cmsplugin_zinnia_latestentriesplugin_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cmsplugin_zinnia_latestentriesplugin_tags_id_seq OWNED BY cmsplugin_zinnia_latestentriesplugin_tags.id;


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cmsplugin_zinnia_latestentriesplugin_tags_id_seq', 1, false);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cmsplugin_zinnia_selectedentriesplugin_entries (
    id integer NOT NULL,
    selectedentriesplugin_id integer NOT NULL,
    entry_id integer NOT NULL
);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE cmsplugin_zinnia_selectedentriesplugin_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE cmsplugin_zinnia_selectedentriesplugin_entries_id_seq OWNED BY cmsplugin_zinnia_selectedentriesplugin_entries.id;


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('cmsplugin_zinnia_selectedentriesplugin_entries_id_seq', 1, false);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    user_id integer NOT NULL,
    comment_id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL
);


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_pk text NOT NULL,
    site_id integer NOT NULL,
    user_id integer,
    user_name character varying(50) NOT NULL,
    user_email character varying(75) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL
);


--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_comments_id_seq', 1, false);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_content_type_id_seq', 83, true);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: django_site; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: imagestore_album; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE imagestore_album (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer,
    is_public boolean NOT NULL,
    head_id integer,
    "order" integer NOT NULL
);


--
-- Name: imagestore_album_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE imagestore_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: imagestore_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE imagestore_album_id_seq OWNED BY imagestore_album.id;


--
-- Name: imagestore_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('imagestore_album_id_seq', 1, false);


--
-- Name: imagestore_albumupload; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE imagestore_albumupload (
    id integer NOT NULL,
    zip_file character varying(100) NOT NULL,
    album_id integer,
    new_album_name character varying(255) NOT NULL,
    tags character varying(255) NOT NULL
);


--
-- Name: imagestore_albumupload_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE imagestore_albumupload_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: imagestore_albumupload_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE imagestore_albumupload_id_seq OWNED BY imagestore_albumupload.id;


--
-- Name: imagestore_albumupload_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('imagestore_albumupload_id_seq', 1, false);


--
-- Name: imagestore_image; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE imagestore_image (
    id integer NOT NULL,
    title character varying(100),
    description text,
    tags character varying(255) NOT NULL,
    "order" integer NOT NULL,
    image character varying(100) NOT NULL,
    user_id integer,
    created timestamp with time zone,
    updated timestamp with time zone,
    album_id integer
);


--
-- Name: imagestore_image_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE imagestore_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: imagestore_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE imagestore_image_id_seq OWNED BY imagestore_image.id;


--
-- Name: imagestore_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('imagestore_image_id_seq', 1, false);


--
-- Name: menus_cachekey; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);


--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE menus_cachekey_id_seq OWNED BY menus_cachekey.id;


--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('menus_cachekey_id_seq', 1, false);


--
-- Name: snippet_snippet; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(50) NOT NULL
);


--
-- Name: snippet_snippet_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: snippet_snippet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE snippet_snippet_id_seq OWNED BY snippet_snippet.id;


--
-- Name: snippet_snippet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('snippet_snippet_id_seq', 1, false);


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 125, true);


--
-- Name: tagging_tag; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tagging_tag (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: tagging_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tagging_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tagging_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tagging_tag_id_seq OWNED BY tagging_tag.id;


--
-- Name: tagging_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('tagging_tag_id_seq', 1, false);


--
-- Name: tagging_taggeditem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tagging_taggeditem (
    id integer NOT NULL,
    tag_id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    CONSTRAINT tagging_taggeditem_object_id_check CHECK ((object_id >= 0))
);


--
-- Name: tagging_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tagging_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tagging_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tagging_taggeditem_id_seq OWNED BY tagging_taggeditem.id;


--
-- Name: tagging_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('tagging_taggeditem_id_seq', 1, false);


--
-- Name: thumbnail_kvstore; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);


--
-- Name: zinnia_category; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE zinnia_category (
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    parent_id integer,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    CONSTRAINT zinnia_category_level_check CHECK ((level >= 0)),
    CONSTRAINT zinnia_category_lft_check CHECK ((lft >= 0)),
    CONSTRAINT zinnia_category_rght_check CHECK ((rght >= 0)),
    CONSTRAINT zinnia_category_tree_id_check CHECK ((tree_id >= 0))
);


--
-- Name: zinnia_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE zinnia_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: zinnia_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE zinnia_category_id_seq OWNED BY zinnia_category.id;


--
-- Name: zinnia_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('zinnia_category_id_seq', 1, false);


--
-- Name: zinnia_entry; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE zinnia_entry (
    status integer DEFAULT 0 NOT NULL,
    last_update timestamp with time zone DEFAULT '2013-03-21 23:08:12.072313+01'::timestamp with time zone NOT NULL,
    comment_enabled boolean DEFAULT true NOT NULL,
    tags character varying(255) NOT NULL,
    image character varying(100) NOT NULL,
    title character varying(255) NOT NULL,
    excerpt text NOT NULL,
    slug character varying(255) NOT NULL,
    content text NOT NULL,
    end_publication timestamp with time zone DEFAULT '2042-03-15 06:00:00+01'::timestamp with time zone NOT NULL,
    start_publication timestamp with time zone DEFAULT '2013-03-21 23:08:12.074826+01'::timestamp with time zone NOT NULL,
    creation_date timestamp with time zone DEFAULT '2013-03-21 23:08:12.075086+01'::timestamp with time zone NOT NULL,
    id integer NOT NULL,
    pingback_enabled boolean DEFAULT true NOT NULL,
    login_required boolean NOT NULL,
    password character varying(50) NOT NULL,
    template character varying(250) NOT NULL,
    featured boolean NOT NULL
);


--
-- Name: zinnia_entry_authors; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE zinnia_entry_authors (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    user_id integer NOT NULL
);


--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE zinnia_entry_authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE zinnia_entry_authors_id_seq OWNED BY zinnia_entry_authors.id;


--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('zinnia_entry_authors_id_seq', 1, false);


--
-- Name: zinnia_entry_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE zinnia_entry_categories (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    category_id integer NOT NULL
);


--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE zinnia_entry_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE zinnia_entry_categories_id_seq OWNED BY zinnia_entry_categories.id;


--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('zinnia_entry_categories_id_seq', 1, false);


--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE zinnia_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE zinnia_entry_id_seq OWNED BY zinnia_entry.id;


--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('zinnia_entry_id_seq', 1, false);


--
-- Name: zinnia_entry_related; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE zinnia_entry_related (
    id integer NOT NULL,
    from_entry_id integer NOT NULL,
    to_entry_id integer NOT NULL
);


--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE zinnia_entry_related_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE zinnia_entry_related_id_seq OWNED BY zinnia_entry_related.id;


--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('zinnia_entry_related_id_seq', 1, false);


--
-- Name: zinnia_entry_sites; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE zinnia_entry_sites (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    site_id integer NOT NULL
);


--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE zinnia_entry_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE zinnia_entry_sites_id_seq OWNED BY zinnia_entry_sites.id;


--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('zinnia_entry_sites_id_seq', 1, false);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE admin_tools_dashboard_preferences ALTER COLUMN id SET DEFAULT nextval('admin_tools_dashboard_preferences_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE admin_tools_menu_bookmark ALTER COLUMN id SET DEFAULT nextval('admin_tools_menu_bookmark_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE auth_message ALTER COLUMN id SET DEFAULT nextval('auth_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('cms_cmsplugin_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_page ALTER COLUMN id SET DEFAULT nextval('cms_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('cms_page_placeholders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_pagemoderator ALTER COLUMN id SET DEFAULT nextval('cms_pagemoderator_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_pagemoderatorstate ALTER COLUMN id SET DEFAULT nextval('cms_pagemoderatorstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('cms_pagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_placeholder ALTER COLUMN id SET DEFAULT nextval('cms_placeholder_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cms_title ALTER COLUMN id SET DEFAULT nextval('cms_title_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cmsplugin_zinnia_latestentriesplugin_authors ALTER COLUMN id SET DEFAULT nextval('cmsplugin_zinnia_latestentriesplugin_authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cmsplugin_zinnia_latestentriesplugin_categories ALTER COLUMN id SET DEFAULT nextval('cmsplugin_zinnia_latestentriesplugin_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cmsplugin_zinnia_latestentriesplugin_tags ALTER COLUMN id SET DEFAULT nextval('cmsplugin_zinnia_latestentriesplugin_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE cmsplugin_zinnia_selectedentriesplugin_entries ALTER COLUMN id SET DEFAULT nextval('cmsplugin_zinnia_selectedentriesplugin_entries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE imagestore_album ALTER COLUMN id SET DEFAULT nextval('imagestore_album_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE imagestore_albumupload ALTER COLUMN id SET DEFAULT nextval('imagestore_albumupload_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE imagestore_image ALTER COLUMN id SET DEFAULT nextval('imagestore_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE menus_cachekey ALTER COLUMN id SET DEFAULT nextval('menus_cachekey_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE snippet_snippet ALTER COLUMN id SET DEFAULT nextval('snippet_snippet_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE tagging_tag ALTER COLUMN id SET DEFAULT nextval('tagging_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE tagging_taggeditem ALTER COLUMN id SET DEFAULT nextval('tagging_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE zinnia_category ALTER COLUMN id SET DEFAULT nextval('zinnia_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE zinnia_entry ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE zinnia_entry_authors ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE zinnia_entry_categories ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE zinnia_entry_related ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_related_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE zinnia_entry_sites ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_sites_id_seq'::regclass);


--
-- Data for Name: admin_tools_dashboard_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY admin_tools_dashboard_preferences (id, user_id, data, dashboard_id) FROM stdin;
\.


--
-- Data for Name: admin_tools_menu_bookmark; Type: TABLE DATA; Schema: public; Owner: -
--

COPY admin_tools_menu_bookmark (id, user_id, url, title) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_message; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_message (id, user_id, message) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
204	Can add permission	66	add_permission
205	Can change permission	66	change_permission
206	Can delete permission	66	delete_permission
207	Can add group	67	add_group
208	Can change group	67	change_group
209	Can delete group	67	delete_group
210	Can add user	68	add_user
211	Can change user	68	change_user
212	Can delete user	68	delete_user
213	Can add message	69	add_message
214	Can change message	69	change_message
215	Can delete message	69	delete_message
216	Can add content type	70	add_contenttype
217	Can change content type	70	change_contenttype
218	Can delete content type	70	delete_contenttype
219	Can add session	71	add_session
220	Can change session	71	change_session
221	Can delete session	71	delete_session
222	Can add site	72	add_site
223	Can change site	72	change_site
224	Can delete site	72	delete_site
225	Can add log entry	73	add_logentry
226	Can change log entry	73	change_logentry
227	Can delete log entry	73	delete_logentry
228	Can add migration history	74	add_migrationhistory
229	Can change migration history	74	change_migrationhistory
230	Can delete migration history	74	delete_migrationhistory
231	Can add tag	75	add_tag
232	Can change tag	75	change_tag
233	Can delete tag	75	delete_tag
234	Can add tagged item	76	add_taggeditem
235	Can change tagged item	76	change_taggeditem
236	Can delete tagged item	76	delete_taggeditem
237	Can add comment	77	add_comment
238	Can change comment	77	change_comment
239	Can delete comment	77	delete_comment
240	Can moderate comments	77	can_moderate
241	Can add comment flag	78	add_commentflag
242	Can change comment flag	78	change_commentflag
243	Can delete comment flag	78	delete_commentflag
244	Can add kv store	79	add_kvstore
245	Can change kv store	79	change_kvstore
246	Can delete kv store	79	delete_kvstore
247	Can add latest entries plugin	80	add_latestentriesplugin
248	Can change latest entries plugin	80	change_latestentriesplugin
249	Can delete latest entries plugin	80	delete_latestentriesplugin
250	Can add selected entries plugin	81	add_selectedentriesplugin
251	Can change selected entries plugin	81	change_selectedentriesplugin
252	Can delete selected entries plugin	81	delete_selectedentriesplugin
253	Can add random entries plugin	82	add_randomentriesplugin
254	Can change random entries plugin	82	change_randomentriesplugin
255	Can delete random entries plugin	82	delete_randomentriesplugin
256	Can add category entries plugin	83	add_categoryentriesplugin
257	Can change category entries plugin	83	change_categoryentriesplugin
258	Can delete category entries plugin	83	delete_categoryentriesplugin
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: cms_cmsplugin; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_cmsplugin (language, "position", creation_date, id, plugin_type, parent_id, tree_id, lft, rght, level, placeholder_id) FROM stdin;
en	2	2012-03-05 01:33:27+01	1	TwitterRecentEntriesPlugin	\N	1	1	2	0	2
en	1	2012-03-05 01:50:27+01	2	TextPlugin	\N	2	1	4	0	1
en	\N	2012-04-19 13:06:46+02	43	FilePlugin	2	2	2	3	1	1
en	\N	2012-03-05 11:37:48+01	3	TextPlugin	\N	3	1	2	0	13
en	\N	2012-03-05 11:38:02+01	4	TextPlugin	\N	4	1	2	0	14
en	\N	2012-03-05 11:38:14+01	5	TextPlugin	\N	5	1	2	0	15
en	\N	2012-03-05 12:30:07+01	6	TextPlugin	\N	6	1	2	0	22
en	0	2012-03-09 03:06:41+01	11	PicturePlugin	\N	11	1	2	0	26
en	\N	2012-03-09 14:05:31+01	12	TextPlugin	\N	12	1	4	0	28
en	\N	2012-03-09 14:30:44+01	13	TextPlugin	\N	13	1	2	0	28
en	\N	2012-03-09 14:31:51+01	14	TextPlugin	\N	14	1	2	0	30
en	2	2012-03-09 15:13:15+01	15	AlbumPlugin	\N	15	1	2	0	26
en	\N	2012-03-09 17:44:30+01	18	TextPlugin	\N	18	1	2	0	32
en	0	2012-03-09 17:49:37+01	19	TextPlugin	\N	19	1	2	0	10
en	1	2012-03-09 18:00:21+01	20	TextPlugin	\N	20	1	2	0	26
en	0	2012-03-09 18:08:02+01	21	PicturePlugin	\N	21	1	2	0	1
en	0	2012-03-09 18:15:28+01	22	TextPlugin	\N	22	1	2	0	2
en	0	2012-03-12 22:50:52+01	23	TextPlugin	\N	23	1	2	0	25
en	0	2012-03-12 22:53:55+01	24	TextPlugin	\N	24	1	2	0	7
en	\N	2012-03-12 23:01:12+01	25	TextPlugin	\N	25	1	2	0	34
en	\N	2012-03-13 01:01:37+01	26	TextPlugin	\N	26	1	2	0	36
en	\N	2012-03-15 02:07:47+01	28	TextPlugin	\N	28	1	2	0	40
en	\N	2012-03-16 10:00:44+01	29	TextPlugin	\N	29	1	2	0	42
en	0	2012-03-24 16:35:35+01	30	TextPlugin	\N	30	1	2	0	43
en	0	2012-03-24 16:37:19+01	31	TextPlugin	\N	31	1	2	0	44
en	1	2012-03-25 23:53:01+02	33	FragmentCollectionPlugin	\N	33	1	2	0	44
en	\N	2012-03-26 00:19:04+02	34	TextPlugin	\N	34	1	2	0	48
en	\N	2012-03-26 17:44:08+02	35	TextPlugin	\N	35	1	8	0	50
en	1	2012-03-26 19:04:04+02	38	PicturePlugin	35	35	4	5	1	50
en	1	2012-03-26 23:13:57+02	39	CMSLatestEntriesPlugin	\N	36	1	2	0	2
en	1	2012-03-26 23:16:44+02	40	CMSSearchPlugin	\N	37	1	2	0	7
en	0	2012-03-26 23:22:34+02	41	CMSCategoryEntriesPlugin	\N	38	1	2	0	11
en	1	2012-03-27 21:02:56+02	42	CMSLatestEntriesPlugin	\N	39	1	2	0	11
en	\N	2012-04-19 13:28:32+02	44	TextPlugin	\N	40	1	2	0	53
en	\N	2012-05-18 09:59:20+02	45	TextPlugin	\N	41	1	2	0	55
en	\N	2012-05-29 10:00:14+02	46	FragmentPlugin	\N	42	1	2	0	57
en	\N	2012-11-01 20:37:06+01	47	TextPlugin	\N	43	1	2	0	59
en	\N	2013-01-08 22:15:32+01	48	TextPlugin	\N	44	1	2	0	61
en	\N	2013-02-02 12:41:01+01	49	TextPlugin	\N	45	1	2	0	63
\.


--
-- Data for Name: cms_globalpagepermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_globalpagepermission (can_publish, group_id, can_moderate, can_change, can_change_permissions, can_recover_page, can_add, user_id, can_delete, can_move_page, id, can_change_advanced_settings, can_view) FROM stdin;
\.


--
-- Data for Name: cms_globalpagepermission_sites; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
\.


--
-- Data for Name: cms_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_page (rght, level, navigation_extenders, parent_id, reverse_id, login_required, soft_root, creation_date, lft, publication_end_date, template, tree_id, publication_date, in_navigation, id, moderator_state, published, site_id, changed_by, created_by, publisher_is_draft, publisher_state, publisher_public_id, limit_visibility_in_menu, changed_date) FROM stdin;
2	0		\N	\N	f	f	2012-03-05 00:41:54+01	1	\N	template_2_columns_left_sidebar.html	1	2012-03-05 00:41:58+01	t	1	0	t	1	mauro	admin	t	1	\N	\N	2012-04-19 13:10:07+02
2	0	EntryMenu	\N	\N	f	f	2012-03-05 01:55:47+01	1	\N	template_2_columns_left_sidebar.html	2	2012-03-05 01:56:43+01	t	2	0	t	1	mauro	admin	t	1	\N	\N	2012-03-26 23:16:49+02
2	0		\N	\N	f	f	2012-03-05 01:56:25+01	1	\N	template_2_columns_left_sidebar.html	3	2012-03-05 01:56:44+01	t	4	0	t	1	mauro	admin	t	1	\N	\N	2012-03-26 23:24:34+02
2	0		\N	\N	f	f	2012-03-09 01:57:05+01	1	\N	template_2_columns_left_sidebar_gallery.html	4	2012-03-09 02:42:53+01	t	5	0	t	1	mauro	admin	t	1	\N	\N	2012-03-12 22:59:23+01
2	0		\N	\N	f	f	2012-03-24 16:35:27+01	1	\N	template_2_columns_left_sidebar.html	5	2012-03-26 00:34:32+02	f	6	0	t	1	mauro	mauro	t	1	\N	\N	2012-03-26 00:34:32+02
\.


--
-- Data for Name: cms_page_placeholders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
5	1	1
6	1	3
7	1	2
8	1	37
13	2	9
14	2	8
15	2	38
16	2	7
21	4	11
22	4	10
23	4	12
24	4	51
29	5	25
30	5	26
31	5	27
36	6	46
37	6	44
38	6	45
39	6	43
\.


--
-- Data for Name: cms_pagemoderator; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_pagemoderator (moderate_page, moderate_children, page_id, user_id, id, moderate_descendants) FROM stdin;
\.


--
-- Data for Name: cms_pagemoderatorstate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_pagemoderatorstate (created, page_id, user_id, action, message, id) FROM stdin;
\.


--
-- Data for Name: cms_pagepermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_pagepermission (group_id, can_publish, page_id, user_id, id, can_delete, can_change_permissions, can_moderate, can_add, grant_on, can_move_page, can_change, can_change_advanced_settings, can_view) FROM stdin;
\.


--
-- Data for Name: cms_pageuser; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_pageusergroup; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_placeholder; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_placeholder (slot, id, default_width) FROM stdin;
column_1	64	\N
column_2	65	\N
bottom	66	\N
footer_slogan	67	\N
column_1	68	\N
column_2	69	\N
bottom	70	\N
footer_slogan	71	\N
column_1	72	\N
column_2	73	\N
bottom	74	\N
footer_slogan	75	\N
column_1	76	\N
column_2	77	\N
bottom	78	\N
footer_slogan	79	\N
column_1	80	\N
column_2	81	\N
bottom	82	\N
footer_slogan	83	\N
content	21	\N
content	22	\N
content	23	\N
content	24	\N
column_1	25	\N
column_2	26	\N
bottom	27	\N
content	28	\N
content	29	\N
content	30	\N
content	31	\N
content	32	\N
content	33	\N
content	34	\N
content	35	\N
content	36	\N
footer_slogan	37	\N
footer_slogan	38	\N
content	39	\N
content	40	\N
content	41	\N
content	42	\N
column_1	43	\N
column_2	44	\N
bottom	45	\N
footer_slogan	46	\N
content	47	\N
content	48	\N
content	49	\N
content	50	\N
footer_slogan	51	\N
content	52	\N
content	53	\N
content	54	\N
content	55	\N
content	56	\N
content	57	\N
content	58	\N
content	59	\N
content	60	\N
content	61	\N
content	62	\N
content	63	\N
column_1	1	\N
column_2	2	\N
bottom	3	\N
column_1	7	\N
column_2	8	\N
bottom	9	\N
column_1	10	\N
column_2	11	\N
bottom	12	\N
first	13	\N
second	14	\N
third	15	\N
content	16	\N
content	17	\N
content	18	\N
content	19	\N
content	20	\N
\.


--
-- Data for Name: cms_title; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cms_title (language, title, page_id, id, path, creation_date, slug, has_url_overwrite, application_urls, redirect, meta_keywords, meta_description, page_title, menu_title) FROM stdin;
en	Home	1	1		2012-03-05 00:41:54+01	home	f						
en	Blog	2	2	blog	2012-03-05 01:55:47+01	blog	f	ZinniaApphook					
en	Showcase	4	4	showcase	2012-03-05 01:56:25+01	showcase	f						
en	Gallery	5	5	gallery	2012-03-09 01:57:05+01	gallery	f						
en	Cms Fragments test	6	6	cms-fragments-test	2012-03-24 16:35:27+01	cms-fragments-test	f						
\.


--
-- Data for Name: cmsplugin_categoryentriesplugin; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_categoryentriesplugin (cmsplugin_ptr_id, category_id, number_of_entries) FROM stdin;
\.


--
-- Data for Name: cmsplugin_file; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_file (cmsplugin_ptr_id, file, title) FROM stdin;
\.


--
-- Data for Name: cmsplugin_flash; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_flash (width, cmsplugin_ptr_id, file, height) FROM stdin;
\.


--
-- Data for Name: cmsplugin_googlemap; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_googlemap (city, title, cmsplugin_ptr_id, zoom, content, address, zipcode, lng, lat, route_planer, route_planer_title) FROM stdin;
\.


--
-- Data for Name: cmsplugin_imagestorealbumcarousel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_imagestorealbumcarousel (cmsplugin_ptr_id, album_id, skin, "limit", size, full_size, template_file) FROM stdin;
\.


--
-- Data for Name: cmsplugin_imagestorealbumptr; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_imagestorealbumptr (cmsplugin_ptr_id, album_id) FROM stdin;
\.


--
-- Data for Name: cmsplugin_latestentriesplugin; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_latestentriesplugin (cmsplugin_ptr_id, subcategories, number_of_entries, template_to_render) FROM stdin;
\.


--
-- Data for Name: cmsplugin_link; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_link (url, cmsplugin_ptr_id, name, page_link_id, mailto) FROM stdin;
\.


--
-- Data for Name: cmsplugin_picture; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_picture (url, image, cmsplugin_ptr_id, alt, page_link_id, "float", longdesc) FROM stdin;
	cms_page_media/1/avatar.png	21		1	center	
	cms_page_media/2012/3/26/openlayers_css_broken_ok.png	38		\N	\N	
\.


--
-- Data for Name: cmsplugin_randomentriesplugin; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_randomentriesplugin (cmsplugin_ptr_id, number_of_entries, template_to_render) FROM stdin;
\.


--
-- Data for Name: cmsplugin_selectedentriesplugin; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_selectedentriesplugin (cmsplugin_ptr_id, template_to_render) FROM stdin;
\.


--
-- Data for Name: cmsplugin_snippetptr; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
\.


--
-- Data for Name: cmsplugin_teaser; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_teaser (description, title, url, image, cmsplugin_ptr_id, page_link_id) FROM stdin;
\.


--
-- Data for Name: cmsplugin_text; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_text (body, cmsplugin_ptr_id) FROM stdin;
<div class="well">\n<h3>Ways to reach me</h3>\nemail: bianchimro@gmail.com<br/>github: <a href="https://github.com/bianchimro" target="_blank">bianchimro</a><br/>twitter: <a href="https://twitter.com/#!/bianchimro" target="_blank">bianchimro</a> <br/><br/>\n<p>Here is mycurriculum vitae in PDF format (In italian language) <img src="../../../../../../static/cms/images/file_icons/pdf.gif" alt="File - Curriculum Vitae Mauro Bianchi (ITA)" id="plugin_obj_43" title="File - Curriculum Vitae Mauro Bianchi (ITA)"/></p>\n</div>	2
<p>Some text here</p>	3
<p>Other text here</p>	4
<p>Text again</p>	5
<p>Welcome to my new homepage.</p><p>My new site is based on the fantastic django framework and some more other opensource components.</p>	6
<p>This is my new homepage, django-based.</p>\n<p>You can even <strong><a href="https://github.com/bianchimro/bianchimro-homepage" class="btn-success" target="_blank"><span class="btn">fork it on github</span></a></strong></p>	12
<p>This is my new homepage, django-based.</p>\n<p>You can even <strong><a href="https://github.com/bianchimro/bianchimro-homepage" class="btn-success" target="_blank"><span class="btn">fork it on github</span></a></strong></p>	13
<p>This is my new homepage based on django, django-cms, twitter bootstrap, django-blog-zinnia, django-imagestore and other reusable django apps.</p>\n<p>I switched to my old Drupal site to a Django one. Drupal is really awesome, but as a Python programmer i simply couldn't resist. <br/>Moreover, lately I've been doing a lot of work with Django, so why spare my skills ? ;)</p>\n<p>One more thing ... If you want to know more about my website you can even ...</p>\n<p><strong><span class="btn"><a href="https://github.com/bianchimro/bianchimro-homepage" target="_blank">check out the source or fork it on github!</a></span></strong></p>\n<div><strong><br/></strong></div>	14
<p><span>Mapparia is a web page you can find some data related to air quality in Italy. At this moment, data are available only for region </span><strong>Lombardia</strong><span> (Italy). It is based on google maps</span></p>	18
<h1>Showcase</h1>\n<p>On this page are listed some of my projects</p>	19
<h2>Cartoonized</h2>\n<p>An example album. Pics do not match.</p>	20
<div class="well">\n<h1>Welcome to my homepage</h1>\n<p><br/>My name is Mauro Bianchi and I live in Bergamo - Italy and this is my personal homepage.</p>\n<p>I am an environmental engineer and software developer. My main professional interests are web developement, environmental modelling, data dissemination and decision support systems.</p>\n<p>All my recent work is based on open source software, in particolar Python and its ecosystem, the Django framework and javascript visualization libraries such as Openlayers and jqplot.</p>\n</div>	22
<h1>Gallery</h1>\n<p>As I am a digital photography and visual art enthusiast, I'll post some of my work In this section.<br/>Hopefully this will be a chance to take some new pics! </p>	23
<h1>Blog</h1>\n<p>The full list of my blog posts.</p>	24
<p>Mapparia is a website that displays updated data about air quality in Lombardia (Italy)</p>\n<p class="btn"><a href="http://www.mapparia.it" target="_blank">Go to www.mapparia.it</a></p>	25
<p>A website showing the temperature around the world, with data coming from METAR messages broadcast to planes in flight.<br/>Data is shown on a map built with <a href="http://openlayers.org/" target="_blank">Openlayers</a>. <br/>There is also an experimental representation of temperatures made with <a href="http://www.chromeexperiments.com/globe" target="_blank">WebGL-Globe</a></p>\n<p><strong>This is still a draft and will hopefully be updated soon</strong>.</p>\n<p> </p>\n<p> </p>\n<p class="btn"><a href="http://www.maurob.org/wwt" target="_blank">Go to World Wide Temperature</a></p>	26
<p>Urban Ecosystem Europe is an environmental data visualization platform I am developing for Ambiente Italia Srl.<br/>The project is aimed at comparing different European cities on a common base of sustainability indicators.<br/>The platform lets you explore the data in different ways, with thematic maps, charts and tabular data visualizations.</p>\n<p>All the project is based on open source packages such as Openlayers, jQuery, jqplot, underscore.js and Twitter Bootstrap. </p>\n<p><strong><em>The official web platform is still on a testing phase and will be publicly accessible by the end of April, 2012.</em></strong></p>	28
<p>Yesterday I was playing around with <a href="http://geodjango.org/">GeoDjango</a> and I wanted to use the spatialite backend (<strong>django.contrib.gis.db.backends.spatialite</strong>) , but the setup on OSX was not so trivial. This method, based on <a href="http://mxcl.github.com/homebrew/">brew</a> is not covered by the GeoDjango documentation about <a href="https://docs.djangoproject.com/en/dev/ref/contrib/gis/install/#platform-specific-instructions">platform-specific instructions</a>.</p>\n<p>I will assume:</p>\n<ul>\n<li>you have already <a href="http://mxcl.github.com/homebrew/">brew</a> installed</li>\n<li>you are working with <a href="http://www.virtualenv.org/en/latest/index.html">virtualenv</a>. If not, I strongly suggest you to do this, when developing with Django and Python in general.</li>\n</ul>\n<p>To make short: sqlite is built in a modular fashion and has the possibility to load up additional modules when it starts. The problem is that the Python sqlite driver shipped with Python on OSX is compiled with a configuration that does not allow such dynamic loading. </p>\n<p>Install libspatialite and spatialite-tools with brew:</p>\n<pre>brew update<br/>brew install sqlite<br/>brew install libspatialite<br/>brew install spatialite-tools</pre>\n<p>In order to get rid of extension loading limitation you have to:</p>\n<ul>\n<li>Setup a virtual environment and activate it, for example:</li>\n</ul>\n<pre>virtualenv --no-site-packages env<br/>source env/bin/activate </pre>\n<ul>\n<li>Download and decompress pysqlite from Google Code</li>\n</ul>\n<pre>wget http://pysqlite.googlecode.com/files/pysqlite-2.6.3.tar.gz<br/>tar -xzvf pysqlite-2.6.3.tar.gz</pre>\n<ul>\n<li>To allow extension loading you will have to modify pysqlite, recompile and install it.<br/> <strong>Please note </strong>that, as you are working in a virtualenv, your system configuration won't be modified.<br/> To do so, edit the file "setup.cfg" into the sqlite folder you have just extracted. For example, with vi:</li>\n</ul>\n<pre>cd pysqlite-2.6.3<br/>vi setup.cfg</pre>\n<ul>\n<li> Within vi or your favourite text editor, modify the file by commenting the line</li>\n</ul>\n<pre>define=SQLITE_OMIT_LOAD_EXTENSION</pre>\n<p> by prepending a "#" sign, so after editing the line should look like</p>\n<pre>#define=SQLITE_OMIT_LOAD_EXTENSION</pre>\n<ul>\n<li>Next step is build and install pysqlite. From the same directory where you edited the setup.cfg file, issue the following commands:</li>\n</ul>\n<pre>python setup.py build_static<br/>python setup.py install</pre>\n<p>Now you can complete your GeoDjango setup with spatialite. For a complete description of the process, refer to GeoDjango documentation on <a href="https://docs.djangoproject.com/en/dev/ref/contrib/gis/install/#create-spatialite-db">this page</a> to do so.<br/> For the impatient (assuming your geospatial db is called "geodjango.db":</p>\n<pre>touch geodjango.db<br/>spatialite geodjango.db <span class="s2">"SELECT InitSpatialMetaData();"</span></pre>\n<p>You should now be ready yo use the django.contrib.gis.db.backends.spatialite backend in your django configuration! (remember to add 'django.contrib.gis' to your INSTALLED_APPS).</p>	29
<div class="well">\n<p>This page shows one example of <a href="http://pypi.python.org/pypi/django-cms-fragments/">django-cms-fragments</a>.<br/>It's a django-cms plugin that allows injecting fragments of css, js or html in a django-cms page. </p>\n<p>You can read more about it or checkout the code on <a href="https://github.com/bianchimro/django-cms-fragments">github</a> </p>\n</div>	30
<h1>OpenLayers Example</h1>\n<p>The following OpenLayers map has been included using only the admin interface, with django.cms-fragments.</p>	31
<p>django-cms-fragments is django-cms plugin that allows injecting fragments of css, js or html in a django-cms page. <br/>The package is available via pypi and released under BSD license. You can get the full code or fork the project on <a href="https://github.com/bianchimro/django-cms-fragments">github</a></p>\n<p>You can see a live example on <a href="../../../../../../cms-fragments-test/">this page.</a></p>	34
<p>While playing to build some <a href="https://github.com/bianchimro/django-cms-fragments" target="_blank">django-cms-fragments</a> examples, I noticed that OpenLayers conflicts with my theme derived fromTwitter Bootstrap.<br/>If you end up with a strange OpenLayers map like this: </p>\n<p><img src="../../../../../../../static/cms/images/plugins/image.png" alt="Picture - openlayers_css_broken_ok.png" id="plugin_obj_38" title="Picture - openlayers_css_broken_ok.png"/></p>\n<p>It's a css issue caused by setting max-width on img tags. In my case, bootstrap was setting</p>\n<pre>img { max-width:100%; }</pre>\n<p>To get rid of it while not breaking the whole theme, override the setting just for your map div. For example, given a map div with class="map" the css could be:</p>\n<pre>.map { width:600px; height:400px;}<br/>.map img { max-width:none; }</pre>\n<p>If you don't want to bother css classes, you might also add the inline in the html tag, but I advise to use css for better separation of code, maintenability and mental sanity of an eventual markup reader.</p>	35
<p><span>Document on the state of the environment for Agenda 21 (Update for year 2009).</span><br/><span>Developement of a web application http://www.a21calopicos.it/rsa/ for web publishing of RSA data, with webgis functionalities based on Openlayers (javascript) and Google Maps cartographical data.</span></p>\n<p class="btn"><a href="http://www.a21calopicos.it/rsa/index.html">Go to the webrsa</a></p>	44
<p>As i am working on a wxPython project, which must run with Python in 32 bit mode, as it relies on the Carbon API.</p>\n<p>A way to run python in such mode is setting an environment variable before calling our interpreter:</p>\n<pre>export VERSIONER_PYTHON_PREFER_32_BIT=yes<br/>python </pre>\n<p>to save some typing, I created a bash script that i put on my path, with the following content</p>\n<pre>#!/bin/bash<br/>export VERSIONER_PYTHON_PREFER_32_BIT=yes<br/>python $*</pre>\n<p>Notice the last line that calls python passing all parameters you provide ad shell prompt.</p>	45
<p>Today I had to handle a csv file upload with django, parse it with a csv.DictReader and cycle on results.</p>\n<p>I first thought this could be easily accomplished with the csv python module, but the task turned itself into a big pain in the a**, due to characters encoding and csv dialects Babylon.</p>\n<p>After a bit of googling, I solved the issue thanks to a couple of very nice blog posts and the chardet python module. (http://pypi.python.org/pypi/chardet)</p>\n<p>Here is what i did:</p>\n<pre> \nimport chardet\ndef handle_upload(request)\n\n     #assuming 'uploaded_file' is the file key in request.files\n     f = request.FILES['uploaded_file']\n\n     #guessing file encoding:\n     #http://jazstudios.blogspot.it/2011/11/python-detect-charset-and-convert-to.html\n     content = f.read()\n     \n     encoding = chardet.detect(content)['encoding']\n     if encoding != 'utf-8':\n         content = content.decode(encoding, 'replace').encode('utf-8')\n         \n     filestream = StringIO.StringIO(content)\n     dialect = csv.Sniffer().sniff(content)\n     \n     # handling line terminator with splitlines:            \n     # http://madebyknight.com/handling-csv-uploads-in-django/\n     # csv.DictReader can be initialized with any object supporting the iterator protocol!\n\n     reader = csv.DictReader(filestream.read().splitlines(), dialect=dialect)\n     results = [row for row in reader]\n     \n     # ...\n     # ... do whatever you want with results\n\n\n</pre>\n<p>Probably this is not a bullet-proof solution, but seems to work for me :)</p>	48
\.


--
-- Data for Name: cmsplugin_twitterrecententries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_twitterrecententries (cmsplugin_ptr_id, title, twitter_user, count, link_hint) FROM stdin;
\.


--
-- Data for Name: cmsplugin_twittersearch; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_twittersearch (count, query, cmsplugin_ptr_id, title) FROM stdin;
\.


--
-- Data for Name: cmsplugin_video; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_video (cmsplugin_ptr_id, movie, image, auto_play, loop, bgcolor, fullscreen, width, movie_url, buttonhighlightcolor, auto_hide, seekbarcolor, buttonoutcolor, textcolor, seekbarbgcolor, loadingbarcolor, buttonovercolor, height) FROM stdin;
\.


--
-- Data for Name: cmsplugin_zinnia_latestentriesplugin_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_zinnia_latestentriesplugin_authors (id, latestentriesplugin_id, user_id) FROM stdin;
\.


--
-- Data for Name: cmsplugin_zinnia_latestentriesplugin_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_zinnia_latestentriesplugin_categories (id, latestentriesplugin_id, category_id) FROM stdin;
\.


--
-- Data for Name: cmsplugin_zinnia_latestentriesplugin_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_zinnia_latestentriesplugin_tags (id, latestentriesplugin_id, tag_id) FROM stdin;
\.


--
-- Data for Name: cmsplugin_zinnia_selectedentriesplugin_entries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY cmsplugin_zinnia_selectedentriesplugin_entries (id, selectedentriesplugin_id, entry_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
\.


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_comment_flags (id, user_id, comment_id, flag, flag_date) FROM stdin;
\.


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_comments (id, content_type_id, object_pk, site_id, user_id, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
66	permission	auth	permission
67	group	auth	group
68	user	auth	user
69	message	auth	message
70	content type	contenttypes	contenttype
71	session	sessions	session
72	site	sites	site
73	log entry	admin	logentry
74	migration history	south	migrationhistory
75	tag	tagging	tag
76	tagged item	tagging	taggeditem
77	comment	comments	comment
78	comment flag	comments	commentflag
79	kv store	thumbnail	kvstore
80	latest entries plugin	cmsplugin_zinnia	latestentriesplugin
81	selected entries plugin	cmsplugin_zinnia	selectedentriesplugin
82	random entries plugin	cmsplugin_zinnia	randomentriesplugin
83	category entries plugin	cmsplugin_zinnia	categoryentriesplugin
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: imagestore_album; Type: TABLE DATA; Schema: public; Owner: -
--

COPY imagestore_album (id, name, created, updated, user_id, is_public, head_id, "order") FROM stdin;
\.


--
-- Data for Name: imagestore_albumupload; Type: TABLE DATA; Schema: public; Owner: -
--

COPY imagestore_albumupload (id, zip_file, album_id, new_album_name, tags) FROM stdin;
\.


--
-- Data for Name: imagestore_image; Type: TABLE DATA; Schema: public; Owner: -
--

COPY imagestore_image (id, title, description, tags, "order", image, user_id, created, updated, album_id) FROM stdin;
\.


--
-- Data for Name: menus_cachekey; Type: TABLE DATA; Schema: public; Owner: -
--

COPY menus_cachekey (id, language, site, key) FROM stdin;
\.


--
-- Data for Name: snippet_snippet; Type: TABLE DATA; Schema: public; Owner: -
--

COPY snippet_snippet (id, name, html, template) FROM stdin;
\.


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	menu	0001_initial	2013-03-22 04:08:07.256557+01
2	dashboard	0001_initial	2013-03-22 04:08:07.327648+01
3	dashboard	0002_auto__add_field_dashboardpreferences_dashboard_id	2013-03-22 04:08:07.349766+01
4	cms	0001_initial	2013-03-22 04:08:07.516657+01
5	cms	0002_auto_start	2013-03-22 04:08:07.534808+01
6	cms	0003_remove_placeholder	2013-03-22 04:08:07.541729+01
7	cms	0004_textobjects	2013-03-22 04:08:07.581875+01
8	cms	0005_mptt_added_to_plugins	2013-03-22 04:08:07.664333+01
9	text	0001_initial	2013-03-22 04:08:07.676183+01
10	text	0002_freeze	2013-03-22 04:08:07.681534+01
11	cms	0006_apphook	2013-03-22 04:08:07.76008+01
12	cms	0007_apphook_longer	2013-03-22 04:08:07.818116+01
13	cms	0008_redirects	2013-03-22 04:08:07.838329+01
14	cms	0009_added_meta_fields	2013-03-22 04:08:07.857955+01
15	cms	0010_5char_language	2013-03-22 04:08:07.941099+01
16	cms	0011_title_overwrites	2013-03-22 04:08:07.96464+01
17	cms	0012_publisher	2013-03-22 04:08:08.223369+01
18	text	0003_publisher	2013-03-22 04:08:08.244499+01
19	snippet	0001_initial	2013-03-22 04:08:08.269903+01
20	snippet	0002_publisher	2013-03-22 04:08:08.291824+01
21	picture	0001_initial	2013-03-22 04:08:08.303168+01
22	picture	0002_link_rename	2013-03-22 04:08:08.307037+01
23	picture	0003_freeze	2013-03-22 04:08:08.311979+01
24	picture	0004_publisher	2013-03-22 04:08:08.329045+01
25	link	0001_initial	2013-03-22 04:08:08.341201+01
26	link	0002_link_rename	2013-03-22 04:08:08.345312+01
27	link	0003_page_link	2013-03-22 04:08:08.351971+01
28	link	0004_larger_link_names	2013-03-22 04:08:08.394031+01
29	link	0005_publisher	2013-03-22 04:08:08.413632+01
30	googlemap	0001_initial	2013-03-22 04:08:08.437628+01
31	flash	0001_initial	2013-03-22 04:08:08.447519+01
32	flash	0002_freeze	2013-03-22 04:08:08.452805+01
33	flash	0003_publisher	2013-03-22 04:08:08.468774+01
34	file	0001_initial	2013-03-22 04:08:08.479336+01
35	file	0002_freeze	2013-03-22 04:08:08.484064+01
36	file	0003_publisher	2013-03-22 04:08:08.51618+01
37	cms	0013_site_copy	2013-03-22 04:08:08.564311+01
38	cms	0014_sites_removed	2013-03-22 04:08:08.618278+01
39	cms	0015_modified_by_added	2013-03-22 04:08:08.753352+01
40	cms	0016_author_copy	2013-03-22 04:08:08.803614+01
41	cms	0017_author_removed	2013-03-22 04:08:08.856086+01
42	cms	0018_site_permissions	2013-03-22 04:08:08.915116+01
43	cms	0019_public_table_renames	2013-03-22 04:08:09.096899+01
44	teaser	0001_initial	2013-03-22 04:08:09.136855+01
45	picture	0005_table_rename	2013-03-22 04:08:09.214952+01
46	picture	0006_float_added	2013-03-22 04:08:09.240607+01
47	cms	0020_advanced_permissions	2013-03-22 04:08:09.314366+01
48	cms	0021_publisher2	2013-03-22 04:08:09.506777+01
49	cms	0022_login_required_added	2013-03-22 04:08:09.601179+01
50	cms	0023_plugin_table_naming_function_changed	2013-03-22 04:08:09.643628+01
51	cms	0024_added_placeholder_model	2013-03-22 04:08:09.698718+01
52	cms	0025_placeholder_migration	2013-03-22 04:08:09.735275+01
53	cms	0026_finish_placeholder_migration	2013-03-22 04:08:09.775136+01
54	cms	0027_added_width_to_placeholder	2013-03-22 04:08:09.810593+01
55	cms	0028_limit_visibility_in_menu_step1of3	2013-03-22 04:08:09.84667+01
56	cms	0029_limit_visibility_in_menu_step2of3_data	2013-03-22 04:08:09.930698+01
57	cms	0030_limit_visibility_in_menu_step3of3	2013-03-22 04:08:09.964372+01
58	cms	0031_improved_language_code_support	2013-03-22 04:08:10.101822+01
59	cms	0032_auto__del_field_cmsplugin_publisher_public__del_field_cmsplugin_publis	2013-03-22 04:08:10.139096+01
60	cms	0033_auto__del_field_title_publisher_is_draft__del_field_title_publisher_st	2013-03-22 04:08:10.181181+01
61	cms	0034_auto__chg_field_title_language__chg_field_cmsplugin_language__add_fiel	2013-03-22 04:08:10.357548+01
62	cms	0035_auto__add_field_globalpagepermission_can_view__add_field_pagepermissio	2013-03-22 04:08:10.403136+01
63	menus	0001_initial	2013-03-22 04:08:10.617232+01
64	file	0004_table_rename	2013-03-22 04:08:10.735965+01
65	file	0005_publisher2	2013-03-22 04:08:10.756564+01
66	picture	0007_publisher2	2013-03-22 04:08:10.804071+01
67	picture	0008_longdesc_added	2013-03-22 04:08:10.831785+01
68	teaser	0002_publisher2	2013-03-22 04:08:10.875379+01
69	video	0001_initial	2013-03-22 04:08:10.917796+01
70	video	0002_color_mute_controller	2013-03-22 04:08:10.944845+01
71	video	0003_newplayer_step1	2013-03-22 04:08:11.046607+01
72	video	0004_newplayer_step2	2013-03-22 04:08:11.060935+01
73	video	0005_newplayer_step3	2013-03-22 04:08:11.076014+01
74	video	0006_newplayer_step4	2013-03-22 04:08:11.092627+01
75	video	0007_newplayer_step5	2013-03-22 04:08:11.172814+01
76	flash	0004_table_rename	2013-03-22 04:08:11.278705+01
77	flash	0005_publisher2	2013-03-22 04:08:11.298737+01
78	googlemap	0002_table_rename	2013-03-22 04:08:11.394604+01
79	googlemap	0003_address_unified	2013-03-22 04:08:11.416296+01
80	googlemap	0004_copy_address	2013-03-22 04:08:11.437433+01
81	googlemap	0005_delete_street	2013-03-22 04:08:11.460111+01
82	googlemap	0006_publisher2	2013-03-22 04:08:11.482204+01
83	googlemap	0007_latlng	2013-03-22 04:08:11.501306+01
84	googlemap	0008_routeplaner	2013-03-22 04:08:11.519689+01
85	googlemap	0009_routeplaner_title	2013-03-22 04:08:11.537087+01
86	link	0006_table_rename	2013-03-22 04:08:11.631528+01
87	link	0007_publisher2	2013-03-22 04:08:11.652465+01
88	link	0008_mailto	2013-03-22 04:08:11.668633+01
89	snippet	0003_table_rename	2013-03-22 04:08:11.764748+01
90	snippet	0004_publisher2	2013-03-22 04:08:11.787256+01
91	snippet	0005_template_added	2013-03-22 04:08:11.805982+01
92	text	0004_table_rename	2013-03-22 04:08:11.902658+01
93	text	0005_publisher2	2013-03-22 04:08:11.925514+01
94	text	0006_2_1_4_upgrade	2013-03-22 04:08:11.932364+01
95	twitter	0001_initial	2013-03-22 04:08:11.975519+01
96	twitter	0002_auto__add_twittersearch	2013-03-22 04:08:11.992637+01
97	zinnia	0001_initial	2013-03-22 04:08:12.177058+01
98	zinnia	0002_auto__add_field_entry_pingback_enabled	2013-03-22 04:08:12.203976+01
99	zinnia	0003_auto__chg_field_category_title__chg_field_category_slug__add_unique_ca	2013-03-22 04:08:12.391011+01
100	zinnia	0004_mptt_categories	2013-03-22 04:08:12.46338+01
101	zinnia	0005_entry_protection	2013-03-22 04:08:12.495509+01
102	zinnia	0006_entry_template	2013-03-22 04:08:12.525027+01
103	zinnia	0007_entry_featured	2013-03-22 04:08:12.555831+01
104	zinnia	0008_add_status_permission	2013-03-22 04:08:12.583859+01
105	cmsplugin_zinnia	0001_initial	2013-03-22 04:08:12.718046+01
106	imagestore	0001_initial	2013-03-22 04:08:12.815054+01
107	imagestore	0002_removeslug	2013-03-22 04:08:12.825648+01
108	imagestore	0003_adduser	2013-03-22 04:08:12.844583+01
109	imagestore	0004_nonullorder	2013-03-22 04:08:12.909767+01
110	imagestore	0005_addalbum	2013-03-22 04:08:12.929481+01
111	imagestore	0006_addcreatedupdated	2013-03-22 04:08:12.997494+01
112	imagestore	0007_albumfix	2013-03-22 04:08:13.029757+01
113	imagestore	0008_permissions	2013-03-22 04:08:13.066611+01
114	imagestore	0009_limits	2013-03-22 04:08:13.18317+01
115	imagestore	0010_addplace	2013-03-22 04:08:13.290752+01
116	imagestore	0011_add_mass_upload	2013-03-22 04:08:13.318617+01
117	imagestore	0012_add_order	2013-03-22 04:08:13.340868+01
118	imagestore	0013_fix_album_title_length	2013-03-22 04:08:13.410432+01
119	imagestore	0014_fix_album_name_length	2013-03-22 04:08:13.474707+01
120	imagestore_cms	0001_initial	2013-03-22 04:08:13.532369+01
121	imagestore_cms	0002_add_carusel	2013-03-22 04:08:13.55982+01
122	imagestore_cms	0003_more_carousel_options	2013-03-22 04:08:13.590452+01
123	imagestore_cms	0004_add_carousel_sizes	2013-03-22 04:08:13.621079+01
124	imagestore_cms	0005_auto__add_field_imagestorealbumcarousel_template_file	2013-03-22 04:08:13.668079+01
125	cmsplugin_zinnia	0002_auto__add_categoryentriesplugin	2013-03-22 04:17:03.153683+01
\.


--
-- Data for Name: tagging_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY tagging_tag (id, name) FROM stdin;
\.


--
-- Data for Name: tagging_taggeditem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY tagging_taggeditem (id, tag_id, content_type_id, object_id) FROM stdin;
\.


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: -
--

COPY thumbnail_kvstore (key, value) FROM stdin;
\.


--
-- Data for Name: zinnia_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY zinnia_category (slug, description, id, title, parent_id, lft, rght, tree_id, level) FROM stdin;
\.


--
-- Data for Name: zinnia_entry; Type: TABLE DATA; Schema: public; Owner: -
--

COPY zinnia_entry (status, last_update, comment_enabled, tags, image, title, excerpt, slug, content, end_publication, start_publication, creation_date, id, pingback_enabled, login_required, password, template, featured) FROM stdin;
\.


--
-- Data for Name: zinnia_entry_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY zinnia_entry_authors (id, entry_id, user_id) FROM stdin;
\.


--
-- Data for Name: zinnia_entry_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY zinnia_entry_categories (id, entry_id, category_id) FROM stdin;
\.


--
-- Data for Name: zinnia_entry_related; Type: TABLE DATA; Schema: public; Owner: -
--

COPY zinnia_entry_related (id, from_entry_id, to_entry_id) FROM stdin;
\.


--
-- Data for Name: zinnia_entry_sites; Type: TABLE DATA; Schema: public; Owner: -
--

COPY zinnia_entry_sites (id, entry_id, site_id) FROM stdin;
\.


--
-- Name: admin_tools_dashboard_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY admin_tools_dashboard_preferences
    ADD CONSTRAINT admin_tools_dashboard_preferences_pkey PRIMARY KEY (id);


--
-- Name: admin_tools_menu_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY admin_tools_menu_bookmark
    ADD CONSTRAINT admin_tools_menu_bookmark_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_message_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cms_cmsplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: cms_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);


--
-- Name: cms_page_placeholders_page_id_598353cf6a0df834_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_598353cf6a0df834_uniq UNIQUE (page_id, placeholder_id);


--
-- Name: cms_page_placeholders_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);


--
-- Name: cms_page_publisher_public_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);


--
-- Name: cms_pagemoderator_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_pagemoderator
    ADD CONSTRAINT cms_pagemoderator_pkey PRIMARY KEY (id);


--
-- Name: cms_pagemoderatorstate_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_pagemoderatorstate
    ADD CONSTRAINT cms_pagemoderatorstate_pkey PRIMARY KEY (id);


--
-- Name: cms_pagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_pageuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: cms_pageusergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);


--
-- Name: cms_placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);


--
-- Name: cms_title_page_id_45628dc0e8a26dd5_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_page_id_45628dc0e8a26dd5_uniq UNIQUE (page_id, language);


--
-- Name: cms_title_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_categoryentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_categoryentriesplugin
    ADD CONSTRAINT cmsplugin_categoryentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_googlemap_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_googlemap
    ADD CONSTRAINT cmsplugin_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_imagestorealbumcarousel_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_imagestorealbumcarousel
    ADD CONSTRAINT cmsplugin_imagestorealbumcarousel_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_imagestorealbumptr_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_imagestorealbumptr
    ADD CONSTRAINT cmsplugin_imagestorealbumptr_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_latestentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_latestentriesplugin
    ADD CONSTRAINT cmsplugin_latestentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_randomentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_randomentriesplugin
    ADD CONSTRAINT cmsplugin_randomentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_selectedentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_selectedentriesplugin
    ADD CONSTRAINT cmsplugin_selectedentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_teaser_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_teaser
    ADD CONSTRAINT cmsplugin_teaser_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_twitterrecententries_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_twitterrecententries
    ADD CONSTRAINT cmsplugin_twitterrecententries_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_twittersearch_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_twittersearch
    ADD CONSTRAINT cmsplugin_twittersearch_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_video_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_video
    ADD CONSTRAINT cmsplugin_video_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_zinnia_l_latestentriesplugin_id_293f2f67952dc99e_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories
    ADD CONSTRAINT cmsplugin_zinnia_l_latestentriesplugin_id_293f2f67952dc99e_uniq UNIQUE (latestentriesplugin_id, category_id);


--
-- Name: cmsplugin_zinnia_l_latestentriesplugin_id_5d47ab05e6e576c8_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors
    ADD CONSTRAINT cmsplugin_zinnia_l_latestentriesplugin_id_5d47ab05e6e576c8_uniq UNIQUE (latestentriesplugin_id, user_id);


--
-- Name: cmsplugin_zinnia_l_latestentriesplugin_id_7b19879bbccb7f4a_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags
    ADD CONSTRAINT cmsplugin_zinnia_l_latestentriesplugin_id_7b19879bbccb7f4a_uniq UNIQUE (latestentriesplugin_id, tag_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors
    ADD CONSTRAINT cmsplugin_zinnia_latestentriesplugin_authors_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories
    ADD CONSTRAINT cmsplugin_zinnia_latestentriesplugin_categories_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags
    ADD CONSTRAINT cmsplugin_zinnia_latestentriesplugin_tags_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries
    ADD CONSTRAINT cmsplugin_zinnia_selectedentriesplugin_entries_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_id_3be94f0eb3d73a02_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries
    ADD CONSTRAINT cmsplugin_zinnia_selectedentriesplugin_id_3be94f0eb3d73a02_uniq UNIQUE (selectedentriesplugin_id, entry_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_comment_id_flag_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_comment_id_flag_key UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: file_file_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_file
    ADD CONSTRAINT file_file_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: flash_flash_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_flash
    ADD CONSTRAINT flash_flash_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: imagestore_album_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY imagestore_album
    ADD CONSTRAINT imagestore_album_pkey PRIMARY KEY (id);


--
-- Name: imagestore_albumupload_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY imagestore_albumupload
    ADD CONSTRAINT imagestore_albumupload_pkey PRIMARY KEY (id);


--
-- Name: imagestore_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY imagestore_image
    ADD CONSTRAINT imagestore_image_pkey PRIMARY KEY (id);


--
-- Name: link_link_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_link
    ADD CONSTRAINT link_link_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: menus_cachekey_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);


--
-- Name: picture_picture_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_picture
    ADD CONSTRAINT picture_picture_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: snippet_snippet_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY snippet_snippet
    ADD CONSTRAINT snippet_snippet_name_key UNIQUE (name);


--
-- Name: snippet_snippet_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY snippet_snippet
    ADD CONSTRAINT snippet_snippet_pkey PRIMARY KEY (id);


--
-- Name: snippet_snippetptr_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_snippetptr
    ADD CONSTRAINT snippet_snippetptr_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: tagging_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tagging_tag
    ADD CONSTRAINT tagging_tag_name_key UNIQUE (name);


--
-- Name: tagging_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tagging_tag
    ADD CONSTRAINT tagging_tag_pkey PRIMARY KEY (id);


--
-- Name: tagging_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tagging_taggeditem
    ADD CONSTRAINT tagging_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: tagging_taggeditem_tag_id_content_type_id_object_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tagging_taggeditem
    ADD CONSTRAINT tagging_taggeditem_tag_id_content_type_id_object_id_key UNIQUE (tag_id, content_type_id, object_id);


--
-- Name: text_text_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_text
    ADD CONSTRAINT text_text_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: thumbnail_kvstore_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);


--
-- Name: zinnia_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT zinnia_category_pkey PRIMARY KEY (id);


--
-- Name: zinnia_category_slug_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT zinnia_category_slug_uniq UNIQUE (slug);


--
-- Name: zinnia_entry_authors_entry_id_c8ede0d0ef33f87_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT zinnia_entry_authors_entry_id_c8ede0d0ef33f87_uniq UNIQUE (entry_id, user_id);


--
-- Name: zinnia_entry_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT zinnia_entry_authors_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_categories_entry_id_4e673c6a4d789b1d_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT zinnia_entry_categories_entry_id_4e673c6a4d789b1d_uniq UNIQUE (entry_id, category_id);


--
-- Name: zinnia_entry_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT zinnia_entry_categories_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry
    ADD CONSTRAINT zinnia_entry_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_related_from_entry_id_1c6f37570b9f8939_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT zinnia_entry_related_from_entry_id_1c6f37570b9f8939_uniq UNIQUE (from_entry_id, to_entry_id);


--
-- Name: zinnia_entry_related_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT zinnia_entry_related_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_sites_entry_id_7b0ddc9a2bc8a31b_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT zinnia_entry_sites_entry_id_7b0ddc9a2bc8a31b_uniq UNIQUE (entry_id, site_id);


--
-- Name: zinnia_entry_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT zinnia_entry_sites_pkey PRIMARY KEY (id);


--
-- Name: admin_tools_dashboard_preferences_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX admin_tools_dashboard_preferences_user_id ON admin_tools_dashboard_preferences USING btree (user_id);


--
-- Name: admin_tools_menu_bookmark_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX admin_tools_menu_bookmark_user_id ON admin_tools_menu_bookmark USING btree (user_id);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_message_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_message_user_id ON auth_message USING btree (user_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: cms_cmsplugin_language; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_language ON cms_cmsplugin USING btree (language);


--
-- Name: cms_cmsplugin_language_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_language_like ON cms_cmsplugin USING btree (language varchar_pattern_ops);


--
-- Name: cms_cmsplugin_level; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_level ON cms_cmsplugin USING btree (level);


--
-- Name: cms_cmsplugin_lft; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_lft ON cms_cmsplugin USING btree (lft);


--
-- Name: cms_cmsplugin_new_placeholder_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_new_placeholder_id ON cms_cmsplugin USING btree (placeholder_id);


--
-- Name: cms_cmsplugin_parent_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_parent_id ON cms_cmsplugin USING btree (parent_id);


--
-- Name: cms_cmsplugin_plugin_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_plugin_type ON cms_cmsplugin USING btree (plugin_type);


--
-- Name: cms_cmsplugin_plugin_type_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_plugin_type_like ON cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);


--
-- Name: cms_cmsplugin_rght; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_rght ON cms_cmsplugin USING btree (rght);


--
-- Name: cms_cmsplugin_tree_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_cmsplugin_tree_id ON cms_cmsplugin USING btree (tree_id);


--
-- Name: cms_globalpagepermission_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_globalpagepermission_group_id ON cms_globalpagepermission USING btree (group_id);


--
-- Name: cms_globalpagepermission_sites_globalpagepermission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id ON cms_globalpagepermission_sites USING btree (globalpagepermission_id);


--
-- Name: cms_globalpagepermission_sites_site_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_globalpagepermission_sites_site_id ON cms_globalpagepermission_sites USING btree (site_id);


--
-- Name: cms_globalpagepermission_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_globalpagepermission_user_id ON cms_globalpagepermission USING btree (user_id);


--
-- Name: cms_page_in_navigation; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_in_navigation ON cms_page USING btree (in_navigation);


--
-- Name: cms_page_level; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_level ON cms_page USING btree (level);


--
-- Name: cms_page_lft; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_lft ON cms_page USING btree (lft);


--
-- Name: cms_page_limit_visibility_in_menu; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_limit_visibility_in_menu ON cms_page USING btree (limit_visibility_in_menu);


--
-- Name: cms_page_navigation_extenders; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_navigation_extenders ON cms_page USING btree (navigation_extenders);


--
-- Name: cms_page_navigation_extenders_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_navigation_extenders_like ON cms_page USING btree (navigation_extenders varchar_pattern_ops);


--
-- Name: cms_page_parent_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_parent_id ON cms_page USING btree (parent_id);


--
-- Name: cms_page_placeholders_page_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_placeholders_page_id ON cms_page_placeholders USING btree (page_id);


--
-- Name: cms_page_placeholders_placeholder_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_placeholders_placeholder_id ON cms_page_placeholders USING btree (placeholder_id);


--
-- Name: cms_page_publication_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_publication_date ON cms_page USING btree (publication_date);


--
-- Name: cms_page_publication_end_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_publication_end_date ON cms_page USING btree (publication_end_date);


--
-- Name: cms_page_publisher_is_draft; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_publisher_is_draft ON cms_page USING btree (publisher_is_draft);


--
-- Name: cms_page_publisher_state; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_publisher_state ON cms_page USING btree (publisher_state);


--
-- Name: cms_page_reverse_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_reverse_id ON cms_page USING btree (reverse_id);


--
-- Name: cms_page_reverse_id_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_reverse_id_like ON cms_page USING btree (reverse_id varchar_pattern_ops);


--
-- Name: cms_page_rght; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_rght ON cms_page USING btree (rght);


--
-- Name: cms_page_site_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_site_id ON cms_page USING btree (site_id);


--
-- Name: cms_page_soft_root; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_soft_root ON cms_page USING btree (soft_root);


--
-- Name: cms_page_tree_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_page_tree_id ON cms_page USING btree (tree_id);


--
-- Name: cms_pagemoderator_page_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pagemoderator_page_id ON cms_pagemoderator USING btree (page_id);


--
-- Name: cms_pagemoderator_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pagemoderator_user_id ON cms_pagemoderator USING btree (user_id);


--
-- Name: cms_pagemoderatorstate_page_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pagemoderatorstate_page_id ON cms_pagemoderatorstate USING btree (page_id);


--
-- Name: cms_pagemoderatorstate_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pagemoderatorstate_user_id ON cms_pagemoderatorstate USING btree (user_id);


--
-- Name: cms_pagepermission_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pagepermission_group_id ON cms_pagepermission USING btree (group_id);


--
-- Name: cms_pagepermission_page_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pagepermission_page_id ON cms_pagepermission USING btree (page_id);


--
-- Name: cms_pagepermission_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pagepermission_user_id ON cms_pagepermission USING btree (user_id);


--
-- Name: cms_pageuser_created_by_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pageuser_created_by_id ON cms_pageuser USING btree (created_by_id);


--
-- Name: cms_pageusergroup_created_by_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_pageusergroup_created_by_id ON cms_pageusergroup USING btree (created_by_id);


--
-- Name: cms_placeholder_slot; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_placeholder_slot ON cms_placeholder USING btree (slot);


--
-- Name: cms_placeholder_slot_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_placeholder_slot_like ON cms_placeholder USING btree (slot varchar_pattern_ops);


--
-- Name: cms_title_application_urls; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_application_urls ON cms_title USING btree (application_urls);


--
-- Name: cms_title_application_urls_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_application_urls_like ON cms_title USING btree (application_urls varchar_pattern_ops);


--
-- Name: cms_title_has_url_overwrite; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_has_url_overwrite ON cms_title USING btree (has_url_overwrite);


--
-- Name: cms_title_language; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_language ON cms_title USING btree (language);


--
-- Name: cms_title_language_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_language_like ON cms_title USING btree (language varchar_pattern_ops);


--
-- Name: cms_title_page_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_page_id ON cms_title USING btree (page_id);


--
-- Name: cms_title_path; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_path ON cms_title USING btree (path);


--
-- Name: cms_title_path_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_path_like ON cms_title USING btree (path varchar_pattern_ops);


--
-- Name: cms_title_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_slug ON cms_title USING btree (slug);


--
-- Name: cms_title_slug_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cms_title_slug_like ON cms_title USING btree (slug varchar_pattern_ops);


--
-- Name: cmsplugin_categoryentriesplugin_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_categoryentriesplugin_category_id ON cmsplugin_categoryentriesplugin USING btree (category_id);


--
-- Name: cmsplugin_imagestorealbumcarousel_album_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_imagestorealbumcarousel_album_id ON cmsplugin_imagestorealbumcarousel USING btree (album_id);


--
-- Name: cmsplugin_imagestorealbumptr_album_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_imagestorealbumptr_album_id ON cmsplugin_imagestorealbumptr USING btree (album_id);


--
-- Name: cmsplugin_picture_page_link_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_picture_page_link_id ON cmsplugin_picture USING btree (page_link_id);


--
-- Name: cmsplugin_teaser_page_link_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_teaser_page_link_id ON cmsplugin_teaser USING btree (page_link_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_latestentriesp61b2; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_authors_latestentriesp61b2 ON cmsplugin_zinnia_latestentriesplugin_authors USING btree (latestentriesplugin_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_authors_user_id ON cmsplugin_zinnia_latestentriesplugin_authors USING btree (user_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_categories_category_id ON cmsplugin_zinnia_latestentriesplugin_categories USING btree (category_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_latestentri1d11; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_categories_latestentri1d11 ON cmsplugin_zinnia_latestentriesplugin_categories USING btree (latestentriesplugin_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_latestentriesplug2872; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_tags_latestentriesplug2872 ON cmsplugin_zinnia_latestentriesplugin_tags USING btree (latestentriesplugin_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_tag_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_tags_tag_id ON cmsplugin_zinnia_latestentriesplugin_tags USING btree (tag_id);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_entry_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_selectedentriesplugin_entries_entry_id ON cmsplugin_zinnia_selectedentriesplugin_entries USING btree (entry_id);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_selectedentr6604; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_selectedentriesplugin_entries_selectedentr6604 ON cmsplugin_zinnia_selectedentriesplugin_entries USING btree (selectedentriesplugin_id);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_comment_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_comment_id ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_flag; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_flag ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_flag_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comment_flags_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_user_id ON django_comment_flags USING btree (user_id);


--
-- Name: django_comments_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_content_type_id ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_site_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_site_id ON django_comments USING btree (site_id);


--
-- Name: django_comments_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_user_id ON django_comments USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: imagestore_album_head_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX imagestore_album_head_id ON imagestore_album USING btree (head_id);


--
-- Name: imagestore_album_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX imagestore_album_user_id ON imagestore_album USING btree (user_id);


--
-- Name: imagestore_albumupload_album_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX imagestore_albumupload_album_id ON imagestore_albumupload USING btree (album_id);


--
-- Name: imagestore_image_album_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX imagestore_image_album_id ON imagestore_image USING btree (album_id);


--
-- Name: imagestore_image_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX imagestore_image_user_id ON imagestore_image USING btree (user_id);


--
-- Name: link_link_page_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX link_link_page_id ON cmsplugin_link USING btree (page_link_id);


--
-- Name: snippet_snippetptr_snippet_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX snippet_snippetptr_snippet_id ON cmsplugin_snippetptr USING btree (snippet_id);


--
-- Name: tagging_taggeditem_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tagging_taggeditem_content_type_id ON tagging_taggeditem USING btree (content_type_id);


--
-- Name: tagging_taggeditem_object_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tagging_taggeditem_object_id ON tagging_taggeditem USING btree (object_id);


--
-- Name: tagging_taggeditem_tag_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX tagging_taggeditem_tag_id ON tagging_taggeditem USING btree (tag_id);


--
-- Name: zinnia_category_level; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_category_level ON zinnia_category USING btree (level);


--
-- Name: zinnia_category_lft; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_category_lft ON zinnia_category USING btree (lft);


--
-- Name: zinnia_category_parent_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_category_parent_id ON zinnia_category USING btree (parent_id);


--
-- Name: zinnia_category_rght; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_category_rght ON zinnia_category USING btree (rght);


--
-- Name: zinnia_category_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_category_slug ON zinnia_category USING btree (slug);


--
-- Name: zinnia_category_slug_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_category_slug_like ON zinnia_category USING btree (slug varchar_pattern_ops);


--
-- Name: zinnia_category_tree_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_category_tree_id ON zinnia_category USING btree (tree_id);


--
-- Name: zinnia_entry_authors_entry_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_authors_entry_id ON zinnia_entry_authors USING btree (entry_id);


--
-- Name: zinnia_entry_authors_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_authors_user_id ON zinnia_entry_authors USING btree (user_id);


--
-- Name: zinnia_entry_categories_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_categories_category_id ON zinnia_entry_categories USING btree (category_id);


--
-- Name: zinnia_entry_categories_entry_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_categories_entry_id ON zinnia_entry_categories USING btree (entry_id);


--
-- Name: zinnia_entry_related_from_entry_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_related_from_entry_id ON zinnia_entry_related USING btree (from_entry_id);


--
-- Name: zinnia_entry_related_to_entry_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_related_to_entry_id ON zinnia_entry_related USING btree (to_entry_id);


--
-- Name: zinnia_entry_sites_entry_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_sites_entry_id ON zinnia_entry_sites USING btree (entry_id);


--
-- Name: zinnia_entry_sites_site_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_sites_site_id ON zinnia_entry_sites USING btree (site_id);


--
-- Name: zinnia_entry_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_slug ON zinnia_entry USING btree (slug);


--
-- Name: zinnia_entry_slug_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX zinnia_entry_slug_like ON zinnia_entry USING btree (slug varchar_pattern_ops);


--
-- Name: album_id_refs_id_151be32d58e4fb07; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_imagestorealbumptr
    ADD CONSTRAINT album_id_refs_id_151be32d58e4fb07 FOREIGN KEY (album_id) REFERENCES imagestore_album(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: album_id_refs_id_2f18ef015790bb8e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY imagestore_albumupload
    ADD CONSTRAINT album_id_refs_id_2f18ef015790bb8e FOREIGN KEY (album_id) REFERENCES imagestore_album(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: album_id_refs_id_62969a8eba1b0982; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_imagestorealbumcarousel
    ADD CONSTRAINT album_id_refs_id_62969a8eba1b0982 FOREIGN KEY (album_id) REFERENCES imagestore_album(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: album_id_refs_id_70910547c4f66871; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY imagestore_image
    ADD CONSTRAINT album_id_refs_id_70910547c4f66871 FOREIGN KEY (album_id) REFERENCES imagestore_album(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_message_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_3f133d7f485073f3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_categoryentriesplugin
    ADD CONSTRAINT category_id_refs_id_3f133d7f485073f3 FOREIGN KEY (category_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_7361f4dc8306a95d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories
    ADD CONSTRAINT category_id_refs_id_7361f4dc8306a95d FOREIGN KEY (category_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_7e6ce045459f8216; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT category_id_refs_id_7e6ce045459f8216 FOREIGN KEY (category_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_1253ee2fd6a15acd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_teaser
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_1253ee2fd6a15acd FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_27a18a4d447cf852; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_link
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_27a18a4d447cf852 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_3287bb4c2ac6d963; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_video
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_3287bb4c2ac6d963 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_344c4334bf9780bc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_text
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_344c4334bf9780bc FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_360f0e33209e77c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_randomentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_360f0e33209e77c FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_3c7b549d6b49f079; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_categoryentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_3c7b549d6b49f079 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_429eee6130503b22; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_file
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_429eee6130503b22 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_4c030ec612cc9f9c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_selectedentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_4c030ec612cc9f9c FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_4ec9557a35fc351a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_googlemap
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_4ec9557a35fc351a FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_538a5b8c9ba48b8a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_imagestorealbumptr
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_538a5b8c9ba48b8a FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_5b5bb680225ec8c8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_latestentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_5b5bb680225ec8c8 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_5cbc50a2ef3dc97e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_flash
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_5cbc50a2ef3dc97e FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_5e40a43cc5b4e113; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_imagestorealbumcarousel
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_5e40a43cc5b4e113 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_624cc071dc33150a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_picture
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_624cc071dc33150a FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_63ded10962cab895; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_snippetptr
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_63ded10962cab895 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_66700f645215cfeb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_twittersearch
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_66700f645215cfeb FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_776486a456b8859d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_twitterrecententries
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_776486a456b8859d FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_23321fd516b8b1ea; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT created_by_id_refs_id_23321fd516b8b1ea FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_47ce3c433dc63396; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT created_by_id_refs_id_47ce3c433dc63396 FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_2ca8c253350895b0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT entry_id_refs_id_2ca8c253350895b0 FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_2e8e58e6fb6ebd9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT entry_id_refs_id_2e8e58e6fb6ebd9 FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_456b2b7ada51dea2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT entry_id_refs_id_456b2b7ada51dea2 FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_7026db9978eac1ff; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries
    ADD CONSTRAINT entry_id_refs_id_7026db9978eac1ff FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: from_entry_id_refs_id_233a09ab4d833995; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT from_entry_id_refs_id_233a09ab4d833995 FOREIGN KEY (from_entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: globalpagepermission_id_refs_id_2d0cf4fc2c730e06; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT globalpagepermission_id_refs_id_2d0cf4fc2c730e06 FOREIGN KEY (globalpagepermission_id) REFERENCES cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_4b6b4203d3639033; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT group_id_refs_id_4b6b4203d3639033 FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_4f6f13d5b12278f8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT group_id_refs_id_4f6f13d5b12278f8 FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_ptr_id_refs_id_49e243cc99e5e357; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT group_ptr_id_refs_id_49e243cc99e5e357 FOREIGN KEY (group_ptr_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: head_id_refs_id_6eaee70478472cad; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY imagestore_album
    ADD CONSTRAINT head_id_refs_id_6eaee70478472cad FOREIGN KEY (head_id) REFERENCES imagestore_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: latestentriesplugin_id_refs_cmsplugin_ptr_id_5d2b51b3278967ab; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors
    ADD CONSTRAINT latestentriesplugin_id_refs_cmsplugin_ptr_id_5d2b51b3278967ab FOREIGN KEY (latestentriesplugin_id) REFERENCES cmsplugin_latestentriesplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: latestentriesplugin_id_refs_cmsplugin_ptr_id_6efb0c12672935a2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories
    ADD CONSTRAINT latestentriesplugin_id_refs_cmsplugin_ptr_id_6efb0c12672935a2 FOREIGN KEY (latestentriesplugin_id) REFERENCES cmsplugin_latestentriesplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: latestentriesplugin_id_refs_cmsplugin_ptr_id_6f912a9095869a39; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags
    ADD CONSTRAINT latestentriesplugin_id_refs_cmsplugin_ptr_id_6f912a9095869a39 FOREIGN KEY (latestentriesplugin_id) REFERENCES cmsplugin_latestentriesplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: new_placeholder_id_refs_id_74e135c7df6bb944; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT new_placeholder_id_refs_id_74e135c7df6bb944 FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_3cff375bf4dc9e9d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pagemoderatorstate
    ADD CONSTRAINT page_id_refs_id_3cff375bf4dc9e9d FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_5d795dd492bc8605; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pagemoderator
    ADD CONSTRAINT page_id_refs_id_5d795dd492bc8605 FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_74739381d0206170; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_link
    ADD CONSTRAINT page_id_refs_id_74739381d0206170 FOREIGN KEY (page_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_772ba48efc98665f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_title
    ADD CONSTRAINT page_id_refs_id_772ba48efc98665f FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_77f67714d31a36ca; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT page_id_refs_id_77f67714d31a36ca FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_944f73bb22baae5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT page_id_refs_id_944f73bb22baae5 FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_link_id_refs_id_2401223f74758dc2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_picture
    ADD CONSTRAINT page_link_id_refs_id_2401223f74758dc2 FOREIGN KEY (page_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_link_id_refs_id_7c39f228b9e9ae89; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_teaser
    ADD CONSTRAINT page_link_id_refs_id_7c39f228b9e9ae89 FOREIGN KEY (page_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_122ab180653a773; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT parent_id_refs_id_122ab180653a773 FOREIGN KEY (parent_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_1fffa484ce18ab03; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT parent_id_refs_id_1fffa484ce18ab03 FOREIGN KEY (parent_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_4f240e19e0b32a03; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT parent_id_refs_id_4f240e19e0b32a03 FOREIGN KEY (parent_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: placeholder_id_refs_id_646a13f4b0df4960; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT placeholder_id_refs_id_646a13f4b0df4960 FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: publisher_public_id_refs_id_122ab180653a773; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT publisher_public_id_refs_id_122ab180653a773 FOREIGN KEY (publisher_public_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: selectedentriesplugin_id_refs_cmsplugin_ptr_id_2bb045ee250f1f05; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries
    ADD CONSTRAINT selectedentriesplugin_id_refs_cmsplugin_ptr_id_2bb045ee250f1f05 FOREIGN KEY (selectedentriesplugin_id) REFERENCES cmsplugin_selectedentriesplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_104217d4ed70f71a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT site_id_refs_id_104217d4ed70f71a FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_250ed0b2ebd96f36; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT site_id_refs_id_250ed0b2ebd96f36 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_70c81e4a38dfe611; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT site_id_refs_id_70c81e4a38dfe611 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: snippet_id_refs_id_8063d83ce9512ce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_snippetptr
    ADD CONSTRAINT snippet_id_refs_id_8063d83ce9512ce FOREIGN KEY (snippet_id) REFERENCES snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tag_id_refs_id_77c431e0c66ec49e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags
    ADD CONSTRAINT tag_id_refs_id_77c431e0c66ec49e FOREIGN KEY (tag_id) REFERENCES tagging_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tagging_taggeditem_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tagging_taggeditem
    ADD CONSTRAINT tagging_taggeditem_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tagging_taggeditem_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tagging_taggeditem
    ADD CONSTRAINT tagging_taggeditem_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tagging_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: to_entry_id_refs_id_233a09ab4d833995; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT to_entry_id_refs_id_233a09ab4d833995 FOREIGN KEY (to_entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_210628e22808fb19; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pagemoderatorstate
    ADD CONSTRAINT user_id_refs_id_210628e22808fb19 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_2805f1124cc96fc2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors
    ADD CONSTRAINT user_id_refs_id_2805f1124cc96fc2 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_280a94e34f0ab76c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT user_id_refs_id_280a94e34f0ab76c FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_2faedda1f8487376; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY admin_tools_dashboard_preferences
    ADD CONSTRAINT user_id_refs_id_2faedda1f8487376 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_31086804e2151d62; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY imagestore_album
    ADD CONSTRAINT user_id_refs_id_31086804e2151d62 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_3c12a63d20036878; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY imagestore_image
    ADD CONSTRAINT user_id_refs_id_3c12a63d20036878 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_410656e2874b02ff; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT user_id_refs_id_410656e2874b02ff FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_447e6e76f5365069; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT user_id_refs_id_447e6e76f5365069 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4cbb99dfc574e281; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pagemoderator
    ADD CONSTRAINT user_id_refs_id_4cbb99dfc574e281 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_6af2836063b2844f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY admin_tools_menu_bookmark
    ADD CONSTRAINT user_id_refs_id_6af2836063b2844f FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_831107f1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_f2045483; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_ptr_id_refs_id_23321fd516b8b1ea; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT user_ptr_id_refs_id_23321fd516b8b1ea FOREIGN KEY (user_ptr_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

